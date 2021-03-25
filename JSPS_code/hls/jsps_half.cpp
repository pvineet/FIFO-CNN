#include "jsps_half.h"


//ReLu
pixel_t relu(pixel_t in_pixel){
	if(in_pixel > 0){
		return in_pixel;
	}
	else{
		return 0;
	}
}

void update_addr(unsigned int &addr, unsigned int width){
	if(addr < width+1){
		addr++;
	}
	else{
		addr = 0;
	}
}

void read_inputs(axi_t im[4],
		axi_t *in0,
		axi_t *in1,
		axi_t *in2,
		axi_t *in3,
		bool compressed_in,
		uint_t rd_zero_cnt[4],
		bool rd_zeros[4]){
	#pragma HLS DATAFLOW

	if(compressed_in){
		for(uint_t port=0; port<4; port++){
		#pragma HLS UNROLL
			if(rd_zeros[port]){
				if(rd_zero_cnt[port] == 0){
					if(port==0){
						im[0] = *in0++;
					}
					else if(port == 1){
						im[1] = *in1++;
					}
					else if(port == 2){
						im[2] = *in2++;
					}
					else if(port == 3){
						im[2] = *in3++;
					}
					rd_zero_cnt[port] = (uint_t)im[port].data;
					im[port].data = 0;
				}
				else if(rd_zero_cnt[port] == 1){
					rd_zeros[port] = false;
					rd_zero_cnt[port] = 0;
				}
				else if(rd_zero_cnt[port] > 1){
					im[port].data = 0;
					rd_zero_cnt[port] -= 1;
				}
			}
			else{
				if(port==0){
					im[0] = *in0++;
				}
				else if(port == 1){
					im[1] = *in1++;
				}
				else if(port == 2){
					im[2] = *in2++;
				}
				else if(port == 3){
					im[2] = *in3++;
				}

				if(im[port].data==0){
					rd_zeros[port] = true;
				}
				else{
					rd_zeros[port] = false;
				}
			}
		}
	}
	else{
		im[0]= *in0;
		im[1]= *in1;
		im[2]= *in2;
		im[3]= *in3;
	}
	//std::cout<<im[0].data<<"\t"<<im[1].data<<"\t"<<im[2].data<<"\t"<<im[3].data<<"\n";
}

void dataflow_half(axi_t *in0,
				axi_t *in1,
				axi_t *in2,
				axi_t *in3,
				axi_t *out0,
				uint_t width,
				uint_t height,
				uint_t num_sets,
				bool compressed_in,
				bool compressed_out,
				axi_t *in_wts){
#pragma HLS DATAFLOW
	#pragma HLS INTERFACE s_axilite port=return bundle=CTRL_BUS
	#pragma HLS INTERFACE s_axilite register port=width bundle=CTRL_BUS
	#pragma HLS INTERFACE s_axilite register port=height bundle=CTRL_BUS
	#pragma HLS INTERFACE s_axilite register port=num_sets bundle=CTRL_BUS
	#pragma HLS INTERFACE s_axilite register port=compressed_out bundle=CTRL_BUS
	#pragma HLS INTERFACE s_axilite register port=compressed_in bundle=CTRL_BUS


	#pragma HLS INTERFACE axis register depth=MAX_WIDTH both port=in0
	#pragma HLS INTERFACE axis register depth=MAX_WIDTH both port=in1
	#pragma HLS INTERFACE axis register depth=MAX_WIDTH both port=in2
	#pragma HLS INTERFACE axis register depth=MAX_WIDTH both port=in3
	#pragma HLS INTERFACE axis register depth=MAX_WIDTH both port=out0

	#pragma HLS INTERFACE axis register both depth=64 port=in_wts

	pixel_t psum_fifo[num_parallel][3][MAX_WIDTH];
	#pragma HLS ARRAY_PARTITION variable=psum_fifo complete dim=1
	#pragma HLS ARRAY_PARTITION variable=psum_fifo complete dim=2
	#pragma HLS STABLE variable=psum_fifo

	pixel_t psum_buf[MAX_WIDTH*MAX_WIDTH];
	#pragma HLS STABLE variable=psum_buf

	pixel_t w0[num_parallel][9];
	#pragma HLS ARRAY_RESHAPE variable=w0 complete dim=0
	#pragma HLS STABLE variable=w0

	pixel_t prev_set_psum;
	unsigned int psum_buf_rd_addr = 0;
	#pragma HLS STABLE variable=psum_buf_rd_addr

	unsigned int psum_buf_wr_addr = 0;
	#pragma HLS STABLE variable=psum_buf_wr_addr

	pixel_t img[num_parallel][3];
	#pragma HLS ARRAY_PARTITION variable=img complete dim=0
	#pragma HLS STABLE variable=img

	pixel_t bias;

//	pixel_t buf0[MAX_WIDTH], buf1[MAX_WIDTH], buf2[MAX_WIDTH], buf3[MAX_WIDTH];
//	#pragma HLS DEPENDENCE variable=buf0 array inter false
//	#pragma HLS DEPENDENCE variable=buf0 array intra false
//	#pragma HLS DEPENDENCE variable=buf1 array inter false
//	#pragma HLS DEPENDENCE variable=buf1 array intra false

	pixel_t out_buf0[MAX_WIDTH];
	#pragma HLS STABLE variable=out_buf0

	pixel_t rd_data[num_parallel][3];
	#pragma HLS ARRAY_PARTITION variable=rd_data complete dim=0
	#pragma HLS STABLE variable=rd_data

	pixel_t psum[num_parallel][3];
	#pragma HLS ARRAY_PARTITION variable=psum complete dim=0
	#pragma HLS STABLE variable=psum

	pixel_t temp[num_parallel];
	#pragma HLS ARRAY_PARTITION variable=temp complete dim=0
	#pragma HLS STABLE variable=temp

	bool wr_zeros = false;
	#pragma HLS STABLE variable=wr_zeros

	uint_t wr_zero_cnt = 0;
	#pragma HLS STABLE variable=wr_zero_cnt

	bool rd_zeros[4];
	#pragma HLS ARRAY_PARTITION variable=rd_zeros complete dim=0
	#pragma HLS STABLE variable=rd_zeros

	uint_t rd_zero_cnt[4];
	#pragma HLS ARRAY_PARTITION variable=rd_zero_cnt complete dim=0
	#pragma HLS STABLE variable=rd_zero_cnt


	for(uint_t set_idx=0; set_idx<num_sets; set_idx++)
	{
		uint_t rd_addr = 0;
		uint_t wr_addr = width;
		#pragma HLS STABLE variable=wr_addr

		if(set_idx > 0){
			prev_set_psum = psum_buf[psum_buf_rd_addr];
		}
		else{
			prev_set_psum = 0;
		}
		psum_buf_rd_addr += 1;

		init_psum_fifos: for(uint_t i=0; i<num_parallel; i++){
			for(uint_t j=0; j<3; j++){
				for(uint_t k=0; k<MAX_WIDTH; k++){
					psum_fifo[i][j][k] = 0;
				}
			}
		}

		init_psum: for(uint_t i=0; i<num_parallel; i++){
			for(uint_t j=0; j<3; j++){
				psum[i][j] = 0;
			}
		}

		load_weights0:for(uint_t i=0; i<num_parallel; i++){
			load_weights1:for(uint_t j = 0; j < 9; j++){
				axi_t wt = *in_wts++;
				w0[i][j] = wt.data;
				std::cout<<w0[i][j]<<"\n";
			}
		}

		axi_t wt = *in_wts++;
		bias = wt.data;

		loop_height:for(uint_t h=0; h<height; h++){
			//#pragma HLS DATAFLOW
			#pragma HLS STABLE variable=in0
			#pragma HLS STABLE variable=in1
			#pragma HLS STABLE variable=in2
			#pragma HLS STABLE variable=in3
			#pragma HLS STABLE variable=out0

			//read_inputs( buf0, buf1, buf2, buf3, in0, in1, in2, in3, h, width);
			axi_t im[4];
			#pragma HLS ARRAY_PARTITION variable=im complete dim=0
			#pragma HLS STABLE variable=im

			axi_t out_im;

			uint_t wr_idx = 0;
			proc_line:for(int i=0; i < width; i++){
				read_inputs(im, in0, in1, in2, in3, compressed_in, rd_zero_cnt, rd_zeros);
				feed_input:for(uint_t x=0; x<4; x++){
					#pragma HLS UNROLL
					img[x][0] = img[x][1];
					img[x][1] = img[x][2];
					img[x][2] = im[x].data;
				}
				in0++;
				in1++;
				in2++;
				in3++;
				conv:for(uint_t j=0; j<num_parallel; j++){
					#pragma HLS UNROLL
					rd_data[j][0] = psum_fifo[j][0][rd_addr];
					rd_data[j][1] = psum_fifo[j][1][rd_addr];
					rd_data[j][2] = psum_fifo[j][2][rd_addr];
					temp[j] = psum_fifo[j][2][rd_addr];

					psum[j][0] = img[j][0]*w0[j][0] + img[j][1]*w0[j][1] + img[j][2]*w0[j][2];
					if(h>=1){
						psum[j][1] = img[j][0]*w0[j][3] + img[j][1]*w0[j][4] + img[j][2]*w0[j][5] + rd_data[j][0];
					}
					if(h>=2){
						psum[j][2] = img[j][0]*w0[j][6] + img[j][1]*w0[j][7] + img[j][2]*w0[j][8] + rd_data[j][1];
					}

					psum_fifo[j][0][wr_addr] = psum[j][0];
					psum_fifo[j][1][wr_addr] = psum[j][1];
					psum_fifo[j][2][wr_addr] = psum[j][2];
					temp[j] = rd_data[j][2];
				}

				std::cout<<"Temp0 - h="<<h<<" w="<<i<<" "<<
						temp[0]<<" "<<temp[1]<<" "<<temp[2]<<" "<<temp[3]<<
						" input "<<img[0][0]<<" "<<img[0][1]<<" "<<img[0][2]<<
						" wt "<<w0[0][3]<<w0[0][4]<<w0[0][5]<<
						" psum "<<psum[0][0]<<" "<<psum[0][1]<<" "<<psum[0][2]<<"\n";

//				std::cout<<"Temp"<<"\t";
//				for(uint_t print_idx=0; print_idx<num_parallel; print_idx++){
//					std::cout<<temp[print_idx]<<"\t";
//				}
//				std::cout<<"\n";
//
//				std::cout<<"psum"<<"\t";
//				for(uint_t print_idx=0; print_idx<num_parallel; print_idx++){
//					std::cout<<psum[print_idx][0]<<"\t";
//				}
//				std::cout<<"\n";
//
//				std::cout<<"rd_data"<<"\t";
//				for(uint_t print_idx=0; print_idx<num_parallel; print_idx++){
//					std::cout<<rd_data[print_idx][0]<<"\t";
//				}
//				std::cout<<"\n";

				if(h>2){
					if(compressed_out){
						//FIXME compression
						pixel_t temp_sum = relu(temp[0]+temp[1]+temp[2]+temp[3]+prev_set_psum+bias);
						if(temp_sum == 0){
							wr_zeros = true;
							if(wr_zero_cnt == 0){
								im[0].data = 0;
								*out0++ = im[0];
							}
							wr_zero_cnt += 1;
						}
						else{
							if(wr_zeros){
								im[0].data = wr_zero_cnt;
								*out0++ = im[0];
							}
							im[0].data = temp_sum;
							*out0++ = im[0];
							wr_zeros = false;
							wr_zero_cnt = 0;
						}
					}
					else{
						if(set_idx == num_sets-1)
						{
							im[0].data = relu(temp[0]+temp[1]+temp[2]+temp[3]+prev_set_psum+bias);
							*out0++ = im[0];
						}
						else{
							psum_buf[psum_buf_wr_addr] = temp[0]+temp[1]+temp[2]+temp[3]+prev_set_psum;
							if(psum_buf_wr_addr < width*height){
								psum_buf_wr_addr++;
							}
							else{
								psum_buf_wr_addr = 0;
							}
						}
					}
				}
				update_addr(wr_addr, width);
				update_addr(rd_addr, width);
			}
		}
	}
}
