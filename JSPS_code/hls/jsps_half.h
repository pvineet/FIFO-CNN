#include <stdio.h>
#include <string.h>
#include <string.h>
#include "ap_int.h"
#include <iostream>

const static int MAX_WIDTH=256;
const static int num_parallel=16;

typedef half pixel_t;
typedef unsigned int uint_t;

struct axi_t{
	pixel_t data;
	ap_int<1> last;
};

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
				axi_t *in_wts);
