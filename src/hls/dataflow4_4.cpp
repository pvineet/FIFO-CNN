#include <stdio.h>
#include "ap_int.h"

const int MAX_WIDTH = 256;
const int BIT_WIDTH = 8;
const int P_WIDTH = 8;
const int MAX_CHANNEL_WTS = 3*3*512;
struct axi_t{
	ap_fixed<BIT_WIDTH, P_WIDTH> data;
	ap_int<1> last;
};

void dataflow4_4(
		axi_t *in_pixel0,
		axi_t *in_pixel1,
		axi_t *in_pixel2,
		axi_t *in_pixel3,
		axi_t *out_pixel0,
		//axi_t *out_pixel1,
		ap_fixed<BIT_WIDTH, P_WIDTH> in_weight0[MAX_CHANNEL_WTS],
		ap_fixed<BIT_WIDTH, P_WIDTH> in_weight1[MAX_CHANNEL_WTS],
		ap_fixed<BIT_WIDTH, P_WIDTH> in_weight2[MAX_CHANNEL_WTS],
		ap_fixed<BIT_WIDTH, P_WIDTH> in_weight3[MAX_CHANNEL_WTS],
		// axi_t *out_pixel1,
		// axi_t *out_pixel2,
		// axi_t *out_pixel3,
		unsigned int width,
		unsigned int height,
		ap_fixed<BIT_WIDTH, P_WIDTH> psum_fifo0_0_0[2*MAX_WIDTH],
	    ap_fixed<BIT_WIDTH, P_WIDTH> psum_fifo0_0_1[2*MAX_WIDTH],
		ap_fixed<BIT_WIDTH, P_WIDTH> psum_fifo0_0_2[2*MAX_WIDTH],
		ap_fixed<BIT_WIDTH, P_WIDTH> psum_fifo0_1_0[2*MAX_WIDTH],
		ap_fixed<BIT_WIDTH, P_WIDTH> psum_fifo0_1_1[2*MAX_WIDTH],
		ap_fixed<BIT_WIDTH, P_WIDTH> psum_fifo0_1_2[2*MAX_WIDTH],
		ap_fixed<BIT_WIDTH, P_WIDTH> psum_fifo0_2_0[2*MAX_WIDTH],
		ap_fixed<BIT_WIDTH, P_WIDTH> psum_fifo0_2_1[2*MAX_WIDTH],
		ap_fixed<BIT_WIDTH, P_WIDTH> psum_fifo0_2_2[2*MAX_WIDTH],
		ap_fixed<BIT_WIDTH, P_WIDTH> psum_fifo0_3_0[2*MAX_WIDTH],
		ap_fixed<BIT_WIDTH, P_WIDTH> psum_fifo0_3_1[2*MAX_WIDTH],
		ap_fixed<BIT_WIDTH, P_WIDTH> psum_fifo0_3_2[2*MAX_WIDTH],
		ap_fixed<BIT_WIDTH, P_WIDTH> psum_buf0[MAX_WIDTH*MAX_WIDTH],
		//ap_fixed<BIT_WIDTH, P_WIDTH> psum_buf1[MAX_WIDTH*MAX_WIDTH],
		unsigned int num_set // total number of sets
		)
{
#pragma HLS INTERFACE bram port=in_weight0
#pragma HLS INTERFACE bram port=in_weight1
#pragma HLS INTERFACE bram port=in_weight2
#pragma HLS INTERFACE bram port=in_weight3

#pragma HLS EXPRESSION_BALANCE
#pragma HLS INTERFACE bram depth=65536 port=psum_buf0
#pragma HLS INTERFACE bram port=psum_fifo0_0_2
#pragma HLS INTERFACE bram port=psum_fifo0_0_1
#pragma HLS INTERFACE bram port=psum_fifo0_0_0


#pragma HLS INTERFACE bram  port=psum_fifo0_1_2
#pragma HLS INTERFACE bram  port=psum_fifo0_1_1
#pragma HLS INTERFACE bram  port=psum_fifo0_1_0

#pragma HLS INTERFACE bram  port=psum_fifo0_2_2
#pragma HLS INTERFACE bram  port=psum_fifo0_2_1
#pragma HLS INTERFACE bram  port=psum_fifo0_2_0

#pragma HLS INTERFACE bram  port=psum_fifo0_3_2
#pragma HLS INTERFACE bram  port=psum_fifo0_3_1
#pragma HLS INTERFACE bram  port=psum_fifo0_3_0

#pragma HLS INTERFACE s_axilite port=height bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=width bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL_BUS
#pragma HLS INTERFACE axis register both depth=256 port=out_pixel0
#pragma HLS INTERFACE axis register both depth=256 port=in_pixel0
//#pragma HLS INTERFACE axis register both depth=256 port=out_pixel1
#pragma HLS INTERFACE axis register both depth=256 port=in_pixel1
//#pragma HLS INTERFACE axis register both depth=256 port=out_pixel2
#pragma HLS INTERFACE axis register both depth=256 port=in_pixel2
//#pragma HLS INTERFACE axis register both depth=256 port=out_pixel3
#pragma HLS INTERFACE axis register both depth=256 port=in_pixel3

#pragma HLS INTERFACE s_axilite port=num_set bundle=CTRL_BUS

	unsigned int rd_addr_0 = 0;
	unsigned int rd_addr_1 = 0;
	unsigned int rd_addr_2 = 0;
	unsigned int wr_addr_0 = MAX_WIDTH;
	unsigned int wr_addr_1 = MAX_WIDTH;
	unsigned int wr_addr_2 = MAX_WIDTH;
	unsigned int psum_buf_rd_addr = 0;
	unsigned int psum_buf_wr_addr = 0;
	unsigned int wt_addr = 0;

	//ap_fixed<BIT_WIDTH, P_WIDTH> w0_0, w0_1, w0_2, w0_3, w0_4, w0_5, w0_6, w0_7, w0_8;
	ap_fixed<BIT_WIDTH, P_WIDTH> w0_0[9];
	#pragma HLS ARRAY_RESHAPE variable=w0_0 complete dim=1
	//ap_fixed<BIT_WIDTH, P_WIDTH> w1_0, w1_1, w1_2, w1_3, w1_4, w1_5, w1_6, w1_7, w1_8;
	ap_fixed<BIT_WIDTH, P_WIDTH> w0_1[9];
	#pragma HLS ARRAY_RESHAPE variable=w0_1 complete dim=1
	//ap_fixed<BIT_WIDTH, P_WIDTH> w2_0, w2_1, w2_2, w2_3, w2_4, w2_5, w2_6, w2_7, w2_8;
	ap_fixed<BIT_WIDTH, P_WIDTH> w0_2[9];
	#pragma HLS ARRAY_RESHAPE variable=w0_2 complete dim=1
	//ap_fixed<BIT_WIDTH, P_WIDTH> w3_0, w3_1, w3_2, w3_3, w3_4, w3_5, w3_6, w3_7, w3_8;
	ap_fixed<BIT_WIDTH, P_WIDTH> w0_3[9];
	#pragma HLS ARRAY_RESHAPE variable=w0_3 complete dim=1

	ap_fixed<BIT_WIDTH, P_WIDTH> i0_0 = 0, i0_1 = 0, i0_2 = 0;
	ap_fixed<BIT_WIDTH, P_WIDTH> i1_0 = 0, i1_1 = 0, i1_2 = 0;
	ap_fixed<BIT_WIDTH, P_WIDTH> i2_0 = 0, i2_1 = 0, i2_2 = 0;
	ap_fixed<BIT_WIDTH, P_WIDTH> i3_0 = 0, i3_1 = 0, i3_2 = 0;
	ap_fixed<BIT_WIDTH, P_WIDTH> psum0_0 = 0, psum0_1 = 0, psum0_2 = 0;
	ap_fixed<BIT_WIDTH, P_WIDTH> psum1_0 = 0, psum1_1 = 0, psum1_2 = 0;
	ap_fixed<BIT_WIDTH, P_WIDTH> psum2_0 = 0, psum2_1 = 0, psum2_2 = 0;
	ap_fixed<BIT_WIDTH, P_WIDTH> psum3_0 = 0, psum3_1 = 0, psum3_2 = 0;


	ap_fixed<BIT_WIDTH, P_WIDTH> rd_data0_0_0 = 0, rd_data0_0_1 = 0, rd_data0_0_2 = 0;
	ap_fixed<BIT_WIDTH, P_WIDTH> rd_data0_1_0 = 0, rd_data0_1_1 = 0, rd_data0_1_2 = 0;
	ap_fixed<BIT_WIDTH, P_WIDTH> rd_data0_2_0 = 0, rd_data0_2_1 = 0, rd_data0_2_2 = 0;
	ap_fixed<BIT_WIDTH, P_WIDTH> rd_data0_3_0 = 0, rd_data0_3_1 = 0, rd_data0_3_2 = 0;
	ap_fixed<BIT_WIDTH, P_WIDTH> temp0, temp1, temp2, temp3;
	ap_fixed<BIT_WIDTH, P_WIDTH> prev_set_psum;
	axi_t out_data;

	//INIT fifos
	for(unsigned int i=0; i < 2*MAX_WIDTH; i++){
#pragma HLS PIPELINE II=1
		psum_fifo0_0_0[i] = 0;
		psum_fifo0_0_1[i] = 0;
		psum_fifo0_0_2[i] = 0;
		psum_fifo0_1_0[i] = 0;
		psum_fifo0_1_1[i] = 0;
		psum_fifo0_1_2[i] = 0;
		psum_fifo0_2_0[i] = 0;
		psum_fifo0_2_1[i] = 0;
		psum_fifo0_2_2[i] = 0;
		psum_fifo0_3_0[i] = 0;
		psum_fifo0_3_1[i] = 0;
		psum_fifo0_3_2[i] = 0;
	}

	loop_sets:for(unsigned int set_idx=0; set_idx < num_set; set_idx++)
	{
#pragma HLS LOOP_TRIPCOUNT min=1 max=128
		load_weights:for(unsigned int j = 0; j < 9; j++){
#pragma HLS PIPELINE II=1
			w0_0[j] = in_weight0[j+wt_addr];
			w0_1[j] = in_weight1[j+wt_addr];
			w0_2[j] = in_weight2[j+wt_addr];
			w0_3[j] = in_weight3[j+wt_addr];
		}
		wt_addr += 9;

		// Loop to initialize the fifos
		dataflow_label0:for(unsigned int i = 0; i < width*height; i++)
		{
	#pragma HLS DEPENDENCE variable=psum_fifo0_0_0 inter false
	#pragma HLS DEPENDENCE variable=psum_fifo0_0_1 inter false
	#pragma HLS DEPENDENCE variable=psum_fifo0_0_2 inter false
	#pragma HLS DEPENDENCE variable=psum_fifo0_0_0 intra false
	#pragma HLS DEPENDENCE variable=psum_fifo0_0_1 intra false
	#pragma HLS DEPENDENCE variable=psum_fifo0_0_2 intra false

	#pragma HLS DEPENDENCE variable=psum_fifo0_1_0 inter false
	#pragma HLS DEPENDENCE variable=psum_fifo0_1_1 inter false
	#pragma HLS DEPENDENCE variable=psum_fifo0_1_2 inter false
	#pragma HLS DEPENDENCE variable=psum_fifo0_1_0 intra false
	#pragma HLS DEPENDENCE variable=psum_fifo0_1_1 intra false
	#pragma HLS DEPENDENCE variable=psum_fifo0_1_2 intra false

	#pragma HLS DEPENDENCE variable=psum_fifo0_2_0 inter false
	#pragma HLS DEPENDENCE variable=psum_fifo0_2_1 inter false
	#pragma HLS DEPENDENCE variable=psum_fifo0_2_2 inter false
	#pragma HLS DEPENDENCE variable=psum_fifo0_2_0 intra false
	#pragma HLS DEPENDENCE variable=psum_fifo0_2_1 intra false
	#pragma HLS DEPENDENCE variable=psum_fifo0_2_2 intra false

	#pragma HLS DEPENDENCE variable=psum_fifo0_3_0 inter false
	#pragma HLS DEPENDENCE variable=psum_fifo0_3_1 inter false
	#pragma HLS DEPENDENCE variable=psum_fifo0_3_2 inter false
	#pragma HLS DEPENDENCE variable=psum_fifo0_3_0 intra false
	#pragma HLS DEPENDENCE variable=psum_fifo0_3_1 intra false
	#pragma HLS DEPENDENCE variable=psum_fifo0_3_2 intra false

	#pragma HLS DEPENDENCE variable=psum_buf0 intra false
	#pragma HLS DEPENDENCE variable=psum_buf0 inter false

	#pragma HLS LOOP_TRIPCOUNT min=196 max=640*640
	#pragma HLS PIPELINE II=1

			if(set_idx > 0){
				prev_set_psum = psum_buf0[psum_buf_rd_addr];
			}
			else
			{
				prev_set_psum = 0;
			}
			psum_buf_rd_addr += 1;

			axi_t cur0 = *in_pixel0++;
			axi_t cur1 = *in_pixel1++;
			axi_t cur2 = *in_pixel2++;
			axi_t cur3 = *in_pixel3++;

			i0_0 = i0_1;
			i0_1 = i0_2;
			i0_2 = cur0.data;
			rd_data0_0_0 = psum_fifo0_0_0[rd_addr_0];
			rd_data0_0_1 = psum_fifo0_0_1[rd_addr_1];
			rd_data0_0_2 = psum_fifo0_0_2[rd_addr_2];
			psum0_0 = i0_0*w0_0[0] + i0_1*w0_0[1] + i0_2*w0_0[2];
			psum0_1 = i0_0*w0_0[3] + i0_1*w0_0[4] + i0_2*w0_0[5] + rd_data0_0_0;
			psum0_2 = i0_0*w0_0[6] + i0_1*w0_0[7] + i0_2*w0_0[8] + rd_data0_0_1;

			i1_0 = i1_1;
			i1_1 = i1_2;
			i1_2 = cur1.data;
			rd_data0_1_0 = psum_fifo0_1_0[rd_addr_0];
			rd_data0_1_1 = psum_fifo0_1_1[rd_addr_1];
			rd_data0_1_2 = psum_fifo0_1_2[rd_addr_2];
			psum1_0 = i1_0*w0_1[0] + i1_1*w0_1[1] + i1_2*w0_1[2];
			psum1_1 = i1_0*w0_1[3] + i1_1*w0_1[4] + i1_2*w0_1[5] + rd_data0_1_0;
			psum1_2 = i1_0*w0_1[6] + i1_1*w0_1[7] + i1_2*w0_1[8] + rd_data0_1_1;

			i2_0 = i2_1;
			i2_1 = i2_2;
			i2_2 = cur2.data;
			rd_data0_2_0 = psum_fifo0_2_0[rd_addr_0];
			rd_data0_2_1 = psum_fifo0_2_1[rd_addr_1];
			rd_data0_2_2 = psum_fifo0_2_2[rd_addr_2];
			psum2_0 = i2_0*w0_2[0] + i2_1*w0_2[1] + i2_2*w0_2[2];
			psum2_1 = i2_0*w0_2[3] + i2_1*w0_2[4] + i2_2*w0_2[5] + rd_data0_2_0;
			psum2_2 = i2_0*w0_2[6] + i2_1*w0_2[7] + i2_2*w0_2[8] + rd_data0_2_1;

			i3_0 = i3_1;
			i3_1 = i3_2;
			i3_2 = cur3.data;
			rd_data0_3_0 = psum_fifo0_3_0[rd_addr_0];
			rd_data0_3_1 = psum_fifo0_3_1[rd_addr_1];
			rd_data0_3_2 = psum_fifo0_3_2[rd_addr_2];
			psum3_0 = i3_0*w0_3[0] + i1_1*w0_3[1] + i3_2*w0_3[2];
			psum3_1 = i3_0*w0_3[3] + i1_1*w0_3[4] + i3_2*w0_3[5] + rd_data0_3_0;
			psum3_2 = i3_0*w0_3[6] + i1_1*w0_3[7] + i3_2*w0_3[8] + rd_data0_3_1;

			//ReLU
			if(rd_data0_0_2 >=0)
			{
				temp0 =	rd_data0_0_2;
			}
			else
			{
				temp0  =	0;
			}

			//*out_pixel0++ = cur0;
			psum_fifo0_0_0[wr_addr_0] = psum0_0;
			psum_fifo0_0_1[wr_addr_1] = psum0_1;
			psum_fifo0_0_2[wr_addr_2] = psum0_2;

			//ReLU
			if(rd_data0_1_2 >=0)
			{
				temp1 =	rd_data0_1_2;
			}
			else
			{
				temp1 =	0;
			}

			//*out_pixel1++ = cur1;
			psum_fifo0_1_0[wr_addr_0] = psum1_0;
			psum_fifo0_1_1[wr_addr_1] = psum1_1;
			psum_fifo0_1_2[wr_addr_2] = psum1_2;

			//ReLU
			if(rd_data0_2_2 >=0)
			{
				temp2 =	rd_data0_2_2;
			}
			else
			{
				temp2 =	0;
			}

			//*out_pixel2++ = cur2;
			psum_fifo0_2_0[wr_addr_0] = psum2_0;
			psum_fifo0_2_1[wr_addr_1] = psum2_1;
			psum_fifo0_2_2[wr_addr_2] = psum2_2;

			//ReLU
			if(rd_data0_3_2 >=0)
			{
				temp3 =	rd_data0_3_2;
			}
			else
			{
				temp3  =	0;
			}

			//*out_pixel3++ = cur3;
			psum_fifo0_3_0[wr_addr_0] = psum3_0;
			psum_fifo0_3_1[wr_addr_1] = psum3_1;
			psum_fifo0_3_2[wr_addr_2] = psum3_2;

			if(set_idx == num_set-1)
			{
				cur0.data = temp0+temp1+temp2+temp3+prev_set_psum;
				*out_pixel0++ = cur0;
			}
			else{
				psum_buf0[psum_buf_wr_addr] = temp0+temp1+temp2+temp3+prev_set_psum;
				if(psum_buf_wr_addr < width*height){
					psum_buf_wr_addr++;
				}
				else{
					psum_buf_wr_addr = 0;
				}
			}
			//Add the psum buffer part
			/*if(i >= 2*width){
				output_valid = 1;
			}
			else{
				output_valid = 0;
			}*/

			if(wr_addr_0 < 2*MAX_WIDTH){
				wr_addr_0++;
			}
			else
			{
				wr_addr_0 = 0;
			}
			if(wr_addr_1 < 2*MAX_WIDTH){
				wr_addr_1++;
			}
			else
			{
				wr_addr_1 = 0;
			}
			if(wr_addr_2 < 2*MAX_WIDTH){
				wr_addr_2++;
			}
			else
			{
				wr_addr_2 = 0;
			}

			if(rd_addr_0 < 2*MAX_WIDTH){
				rd_addr_0++;
			}
			else
			{
				rd_addr_0 = 0;
			}
			if(rd_addr_1 < 2*MAX_WIDTH){
				rd_addr_1++;
			}
			else
			{
				rd_addr_1 = 0;
			}
			if(rd_addr_2 < 2*MAX_WIDTH){
				rd_addr_2++;
			}
			else
			{
				rd_addr_2 = 0;
			}
		}
	}
}
