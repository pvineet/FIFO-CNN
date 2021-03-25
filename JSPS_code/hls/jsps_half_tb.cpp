#include "jsps_half.h"
#include <stdio.h>
#include <stdlib.h>

int main(){

	unsigned int w = 30;
	unsigned int h = 30;
	unsigned int size = w*h;
	pixel_t bias = 0.734298;
	unsigned int num_set = 1;
	unsigned int status;
	unsigned int num_wts = 9*16;
	axi_t in_buf0[size];
	axi_t in_buf1[size];
	axi_t in_buf2[size];
	axi_t in_buf3[size];
	axi_t out_buf0[size];
	axi_t wt_buf[num_wts+1];
	bool compressed_out = false;
	bool compressed_in = false;

	FILE * pFile;
	long lSize;
	char * wtbuffer;
	char * imbuffer;

	size_t result;
	pFile = fopen ( "block1_conv1_ravel.bin" , "rb" );
	if (pFile==NULL) {fputs ("File error",stderr); exit (1);}

	// obtain file size:
	fseek (pFile , 0 , SEEK_END);
	lSize = ftell (pFile);
	rewind (pFile);

	// allocate memory to contain the whole file:
	wtbuffer = (char*) malloc (sizeof(char)*lSize);
	if (wtbuffer == NULL) {fputs ("Memory error",stderr); exit (2);}

	// copy the file into the buffer:
	result = fread (wtbuffer,1,lSize,pFile);
	if (result != lSize) {fputs ("Reading error",stderr); exit (3);}

	/* the whole file is now loaded in the memory buffer. */

	// terminate
	fclose (pFile);


	pixel_t * wts = (pixel_t*)wtbuffer;

	for(int i=0;i<num_wts;i++){
		if(i<27){
			wt_buf[i].data = *wts;
		}
		else{
			wt_buf[i].data = 0;
		}
		std::cout<<wt_buf[i].data<<"\t";
		wts++;
	}
	std::cout<<"\n";
	free (wtbuffer);

	wt_buf[num_wts].data=bias;

	pFile = fopen ( "test_img_30_30.bin" , "rb" );
	if (pFile==NULL) {fputs ("File error",stderr); exit (1);}

	// obtain file size:
	fseek (pFile , 0 , SEEK_END);
	lSize = ftell (pFile);
	rewind (pFile);

	// allocate memory to contain the whole file:
	imbuffer = (char*) malloc (sizeof(char)*lSize);
	if (imbuffer == NULL) {fputs ("Memory error",stderr); exit (2);}

	// copy the file into the buffer:
	result = fread (imbuffer,1,lSize,pFile);
	if (result != lSize) {fputs ("Reading error",stderr); exit (3);}

	/* the whole file is now loaded in the memory buffer. */

	// terminate
	fclose (pFile);

	int num_channels = 3;
	int im_w = 224, im_h = 224;
	int img_size = lSize/4;
	float *img = (float*)imbuffer;

	std::cout<<"Image size = "<<lSize<<"\n";
	for(int i=0;i<size;i++){
		in_buf0[i].data = *img;
		std::cout<<in_buf0[i].data<<"\t";
		img++;
	}
	std::cout<<"\n";

	for(int i=0;i<size;i++){
		in_buf1[i].data = *img;
		std::cout<<in_buf1[i].data<<"\t";
		img++;
	}
	std::cout<<"\n";

	for(int i=0;i<size;i++){
		in_buf2[i].data = *img;
		std::cout<<in_buf2[i].data<<"\t";
		img++;
	}
	std::cout<<"\n";


	/*for(int i=0; i<w; i++){
		for(int j=0; j<h; j++){
			if(j<2||j>=h-2||i<2||i>=w-2){
			//if(i>2){
				in_buf0[i*w+j].data = pixel_t(0);
				in_buf1[i*w+j].data = pixel_t(0);
				in_buf2[i*w+j].data = pixel_t(0);
				in_buf3[i*w+j].data = pixel_t(0);
			}
			else{
				in_buf0[i*w+j].data = pixel_t(1);
				in_buf1[i*w+j].data = pixel_t(1);
				in_buf2[i*w+j].data = pixel_t(1);
				in_buf3[i*w+j].data = pixel_t(1);
			}
			if(i==w-1&&j==h-1){
				in_buf0[i*w+j].last = 1;
			}
		}
	}*/

	for(int i=0; i<w; i++){
		for(int j=0; j<h; j++){
			//in_buf0[i*w+j].data = pixel_t(1);
			//in_buf1[i*w+j].data = pixel_t(0);
			//in_buf2[i*w+j].data = pixel_t(0);
			in_buf3[i*w+j].data = pixel_t(0);
		}
	}

//	for(int i=0; i<num_wts; i++){
//		if(i==4||i==13||i==22||i==31){
//			wt_buf[i].data = 1;
//		}
//		else{
//			wt_buf[i].data = 0;
//		}
//	}

//	for(int i=0; i<w; i++){
//		for(int j=0; j<h; j++){
//			std::cout<<in_buf0[i*w+j].data<<"\t";
//		}
//		std::cout<<"\n";
//	}

	//Dataflow 4x1
	dataflow_half(
			&in_buf0[0],
			&in_buf1[0],
			&in_buf2[0],
			&in_buf3[0],
			&out_buf0[0],
			w,
			h,
			num_set,
			compressed_in,
			compressed_out,
			&wt_buf[0]
			);

	bool rd_zeros=false;


	std::cout<<"Output"<<"\n";

	if(compressed_out){
		for(int i=0; i<w; i++){
			for(int j=0; j<h; j++){
				if(out_buf0[i*w+j].data == 0){
					std::cout<<0<<"\t";
					rd_zeros=true;
				}
				if(rd_zeros){
					for(int cnt=0; cnt<out_buf0[i*w+j].data; cnt++){
						std::cout<<0<<"\t";
					}
					std::cout<<"\n";
					rd_zeros=false;

				}
				else{
					std::cout<<out_buf0[i*w+j].data<<"\t";
					rd_zeros=false;
				}
			}
			std::cout<<"\n";
		}
	}
	else{
		for(int i=0; i<w; i++){
			for(int j=0; j<h; j++){
				std::cout<<out_buf0[i*w+j].data<<"\t";
			}
			std::cout<<"\n";
		}
	}
	//free (wtbuffer);
	//free (imbuffer);

	return 0;

}

//	0	0	0	0	0	0	0
//	0	0	0	0	0	0	0
//	0	0	0	0	0	0	0
//	0	0	4	8	12	8	4
//	0	0	8	16	24	16	8
//	0	0	12	24	36	24	12
//	0	0	8	16	24	16	8

//	0	0	0	0	0	0	0
//	4	8	12	12	12	12	12
//	16	20	24	24	24	24	24
//	28	32	32	28	24	28	32
//	36	36	28	20	12	20	28
//	36	36	24	12	0	12	24
//	36	36	28	20	12	20	28
