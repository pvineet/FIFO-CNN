// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module read_inputs (
        im_0_data,
        im_1_data,
        im_2_data,
        im_3_data_i,
        im_3_data_o,
        im_0_last_V,
        im_1_last_V,
        im_2_last_V,
        im_3_last_V,
        in0_TDATA,
        in0_TLAST,
        in1_TDATA,
        in1_TLAST,
        in2_TDATA,
        in2_TLAST,
        in3_TDATA,
        in3_TLAST,
        compressed_in,
        rd_zero_cnt_0_i,
        rd_zero_cnt_0_o,
        rd_zero_cnt_1_i,
        rd_zero_cnt_1_o,
        rd_zero_cnt_2_i,
        rd_zero_cnt_2_o,
        rd_zero_cnt_3_i,
        rd_zero_cnt_3_o,
        rd_zeros_0_i,
        rd_zeros_0_o,
        rd_zeros_1_i,
        rd_zeros_1_o,
        rd_zeros_2_i,
        rd_zeros_2_o,
        rd_zeros_3_i,
        rd_zeros_3_o,
        ap_clk,
        ap_rst,
        im_3_data_i_ap_vld,
        im_3_data_o_ap_vld,
        compressed_in_ap_vld,
        rd_zeros_0_i_ap_vld,
        rd_zeros_0_o_ap_vld,
        in0_TVALID,
        im_0_data_ap_vld,
        im_0_last_V_ap_vld,
        in1_TVALID,
        im_1_data_ap_vld,
        im_1_last_V_ap_vld,
        in2_TVALID,
        in3_TVALID,
        im_3_last_V_ap_vld,
        rd_zero_cnt_0_i_ap_vld,
        rd_zero_cnt_0_o_ap_vld,
        rd_zeros_1_i_ap_vld,
        rd_zeros_1_o_ap_vld,
        im_2_last_V_ap_vld,
        rd_zero_cnt_1_i_ap_vld,
        rd_zero_cnt_1_o_ap_vld,
        im_2_data_ap_vld,
        rd_zeros_2_i_ap_vld,
        rd_zeros_2_o_ap_vld,
        rd_zero_cnt_2_i_ap_vld,
        rd_zero_cnt_2_o_ap_vld,
        rd_zeros_3_i_ap_vld,
        rd_zeros_3_o_ap_vld,
        rd_zero_cnt_3_i_ap_vld,
        rd_zero_cnt_3_o_ap_vld,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue
);


output  [15:0] im_0_data;
output  [15:0] im_1_data;
output  [15:0] im_2_data;
input  [15:0] im_3_data_i;
output  [15:0] im_3_data_o;
output  [0:0] im_0_last_V;
output  [0:0] im_1_last_V;
output  [0:0] im_2_last_V;
output  [0:0] im_3_last_V;
input  [15:0] in0_TDATA;
input  [0:0] in0_TLAST;
input  [15:0] in1_TDATA;
input  [0:0] in1_TLAST;
input  [15:0] in2_TDATA;
input  [0:0] in2_TLAST;
input  [15:0] in3_TDATA;
input  [0:0] in3_TLAST;
input   compressed_in;
input  [31:0] rd_zero_cnt_0_i;
output  [31:0] rd_zero_cnt_0_o;
input  [31:0] rd_zero_cnt_1_i;
output  [31:0] rd_zero_cnt_1_o;
input  [31:0] rd_zero_cnt_2_i;
output  [31:0] rd_zero_cnt_2_o;
input  [31:0] rd_zero_cnt_3_i;
output  [31:0] rd_zero_cnt_3_o;
input   rd_zeros_0_i;
output   rd_zeros_0_o;
input   rd_zeros_1_i;
output   rd_zeros_1_o;
input   rd_zeros_2_i;
output   rd_zeros_2_o;
input   rd_zeros_3_i;
output   rd_zeros_3_o;
input   ap_clk;
input   ap_rst;
input   im_3_data_i_ap_vld;
output   im_3_data_o_ap_vld;
input   compressed_in_ap_vld;
input   rd_zeros_0_i_ap_vld;
output   rd_zeros_0_o_ap_vld;
input   in0_TVALID;
output   im_0_data_ap_vld;
output   im_0_last_V_ap_vld;
input   in1_TVALID;
output   im_1_data_ap_vld;
output   im_1_last_V_ap_vld;
input   in2_TVALID;
input   in3_TVALID;
output   im_3_last_V_ap_vld;
input   rd_zero_cnt_0_i_ap_vld;
output   rd_zero_cnt_0_o_ap_vld;
input   rd_zeros_1_i_ap_vld;
output   rd_zeros_1_o_ap_vld;
output   im_2_last_V_ap_vld;
input   rd_zero_cnt_1_i_ap_vld;
output   rd_zero_cnt_1_o_ap_vld;
output   im_2_data_ap_vld;
input   rd_zeros_2_i_ap_vld;
output   rd_zeros_2_o_ap_vld;
input   rd_zero_cnt_2_i_ap_vld;
output   rd_zero_cnt_2_o_ap_vld;
input   rd_zeros_3_i_ap_vld;
output   rd_zeros_3_o_ap_vld;
input   rd_zero_cnt_3_i_ap_vld;
output   rd_zero_cnt_3_o_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;

wire    read_inputs_Block_p_U0_ap_start;
wire    read_inputs_Block_p_U0_ap_done;
wire    read_inputs_Block_p_U0_ap_continue;
wire    read_inputs_Block_p_U0_ap_idle;
wire    read_inputs_Block_p_U0_ap_ready;
wire   [15:0] read_inputs_Block_p_U0_im_3_data_o;
wire    read_inputs_Block_p_U0_im_3_data_o_ap_vld;
wire   [0:0] read_inputs_Block_p_U0_compressed_in;
wire   [0:0] read_inputs_Block_p_U0_rd_zeros_0_i;
wire   [0:0] read_inputs_Block_p_U0_rd_zeros_0_o;
wire    read_inputs_Block_p_U0_rd_zeros_0_o_ap_vld;
wire   [15:0] read_inputs_Block_p_U0_im_0_data;
wire    read_inputs_Block_p_U0_im_0_data_ap_vld;
wire   [0:0] read_inputs_Block_p_U0_im_0_last_V;
wire    read_inputs_Block_p_U0_im_0_last_V_ap_vld;
wire   [15:0] read_inputs_Block_p_U0_im_1_data;
wire    read_inputs_Block_p_U0_im_1_data_ap_vld;
wire   [0:0] read_inputs_Block_p_U0_im_1_last_V;
wire    read_inputs_Block_p_U0_im_1_last_V_ap_vld;
wire   [0:0] read_inputs_Block_p_U0_im_3_last_V;
wire    read_inputs_Block_p_U0_im_3_last_V_ap_vld;
wire   [31:0] read_inputs_Block_p_U0_rd_zero_cnt_0_o;
wire    read_inputs_Block_p_U0_rd_zero_cnt_0_o_ap_vld;
wire   [0:0] read_inputs_Block_p_U0_rd_zeros_1_i;
wire   [0:0] read_inputs_Block_p_U0_rd_zeros_1_o;
wire    read_inputs_Block_p_U0_rd_zeros_1_o_ap_vld;
wire   [0:0] read_inputs_Block_p_U0_im_2_last_V;
wire    read_inputs_Block_p_U0_im_2_last_V_ap_vld;
wire   [31:0] read_inputs_Block_p_U0_rd_zero_cnt_1_o;
wire    read_inputs_Block_p_U0_rd_zero_cnt_1_o_ap_vld;
wire   [15:0] read_inputs_Block_p_U0_im_2_data;
wire    read_inputs_Block_p_U0_im_2_data_ap_vld;
wire   [0:0] read_inputs_Block_p_U0_rd_zeros_2_i;
wire   [0:0] read_inputs_Block_p_U0_rd_zeros_2_o;
wire    read_inputs_Block_p_U0_rd_zeros_2_o_ap_vld;
wire   [31:0] read_inputs_Block_p_U0_rd_zero_cnt_2_o;
wire    read_inputs_Block_p_U0_rd_zero_cnt_2_o_ap_vld;
wire   [0:0] read_inputs_Block_p_U0_rd_zeros_3_i;
wire   [0:0] read_inputs_Block_p_U0_rd_zeros_3_o;
wire    read_inputs_Block_p_U0_rd_zeros_3_o_ap_vld;
wire   [31:0] read_inputs_Block_p_U0_rd_zero_cnt_3_o;
wire    read_inputs_Block_p_U0_rd_zero_cnt_3_o_ap_vld;
wire    ap_sync_continue;
wire    ap_sync_done;
wire    ap_sync_ready;
wire    read_inputs_Block_p_U0_start_full_n;
wire    read_inputs_Block_p_U0_start_write;

read_inputs_Block_p read_inputs_Block_p_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(read_inputs_Block_p_U0_ap_start),
    .ap_done(read_inputs_Block_p_U0_ap_done),
    .ap_continue(read_inputs_Block_p_U0_ap_continue),
    .ap_idle(read_inputs_Block_p_U0_ap_idle),
    .ap_ready(read_inputs_Block_p_U0_ap_ready),
    .im_3_data_i(im_3_data_i),
    .im_3_data_o(read_inputs_Block_p_U0_im_3_data_o),
    .im_3_data_o_ap_vld(read_inputs_Block_p_U0_im_3_data_o_ap_vld),
    .compressed_in(read_inputs_Block_p_U0_compressed_in),
    .rd_zeros_0_i(read_inputs_Block_p_U0_rd_zeros_0_i),
    .rd_zeros_0_o(read_inputs_Block_p_U0_rd_zeros_0_o),
    .rd_zeros_0_o_ap_vld(read_inputs_Block_p_U0_rd_zeros_0_o_ap_vld),
    .in0_TDATA(in0_TDATA),
    .im_0_data(read_inputs_Block_p_U0_im_0_data),
    .im_0_data_ap_vld(read_inputs_Block_p_U0_im_0_data_ap_vld),
    .in0_TLAST(in0_TLAST),
    .im_0_last_V(read_inputs_Block_p_U0_im_0_last_V),
    .im_0_last_V_ap_vld(read_inputs_Block_p_U0_im_0_last_V_ap_vld),
    .in1_TDATA(in1_TDATA),
    .im_1_data(read_inputs_Block_p_U0_im_1_data),
    .im_1_data_ap_vld(read_inputs_Block_p_U0_im_1_data_ap_vld),
    .in1_TLAST(in1_TLAST),
    .im_1_last_V(read_inputs_Block_p_U0_im_1_last_V),
    .im_1_last_V_ap_vld(read_inputs_Block_p_U0_im_1_last_V_ap_vld),
    .in2_TDATA(in2_TDATA),
    .in2_TLAST(in2_TLAST),
    .in3_TDATA(in3_TDATA),
    .in3_TLAST(in3_TLAST),
    .im_3_last_V(read_inputs_Block_p_U0_im_3_last_V),
    .im_3_last_V_ap_vld(read_inputs_Block_p_U0_im_3_last_V_ap_vld),
    .rd_zero_cnt_0_i(rd_zero_cnt_0_i),
    .rd_zero_cnt_0_o(read_inputs_Block_p_U0_rd_zero_cnt_0_o),
    .rd_zero_cnt_0_o_ap_vld(read_inputs_Block_p_U0_rd_zero_cnt_0_o_ap_vld),
    .rd_zeros_1_i(read_inputs_Block_p_U0_rd_zeros_1_i),
    .rd_zeros_1_o(read_inputs_Block_p_U0_rd_zeros_1_o),
    .rd_zeros_1_o_ap_vld(read_inputs_Block_p_U0_rd_zeros_1_o_ap_vld),
    .im_2_last_V(read_inputs_Block_p_U0_im_2_last_V),
    .im_2_last_V_ap_vld(read_inputs_Block_p_U0_im_2_last_V_ap_vld),
    .rd_zero_cnt_1_i(rd_zero_cnt_1_i),
    .rd_zero_cnt_1_o(read_inputs_Block_p_U0_rd_zero_cnt_1_o),
    .rd_zero_cnt_1_o_ap_vld(read_inputs_Block_p_U0_rd_zero_cnt_1_o_ap_vld),
    .im_2_data(read_inputs_Block_p_U0_im_2_data),
    .im_2_data_ap_vld(read_inputs_Block_p_U0_im_2_data_ap_vld),
    .rd_zeros_2_i(read_inputs_Block_p_U0_rd_zeros_2_i),
    .rd_zeros_2_o(read_inputs_Block_p_U0_rd_zeros_2_o),
    .rd_zeros_2_o_ap_vld(read_inputs_Block_p_U0_rd_zeros_2_o_ap_vld),
    .rd_zero_cnt_2_i(rd_zero_cnt_2_i),
    .rd_zero_cnt_2_o(read_inputs_Block_p_U0_rd_zero_cnt_2_o),
    .rd_zero_cnt_2_o_ap_vld(read_inputs_Block_p_U0_rd_zero_cnt_2_o_ap_vld),
    .rd_zeros_3_i(read_inputs_Block_p_U0_rd_zeros_3_i),
    .rd_zeros_3_o(read_inputs_Block_p_U0_rd_zeros_3_o),
    .rd_zeros_3_o_ap_vld(read_inputs_Block_p_U0_rd_zeros_3_o_ap_vld),
    .rd_zero_cnt_3_i(rd_zero_cnt_3_i),
    .rd_zero_cnt_3_o(read_inputs_Block_p_U0_rd_zero_cnt_3_o),
    .rd_zero_cnt_3_o_ap_vld(read_inputs_Block_p_U0_rd_zero_cnt_3_o_ap_vld)
);

assign ap_done = read_inputs_Block_p_U0_ap_done;

assign ap_idle = read_inputs_Block_p_U0_ap_idle;

assign ap_ready = read_inputs_Block_p_U0_ap_ready;

assign ap_sync_continue = ap_continue;

assign ap_sync_done = read_inputs_Block_p_U0_ap_done;

assign ap_sync_ready = read_inputs_Block_p_U0_ap_ready;

assign im_0_data = read_inputs_Block_p_U0_im_0_data;

assign im_0_data_ap_vld = read_inputs_Block_p_U0_im_0_data_ap_vld;

assign im_0_last_V = read_inputs_Block_p_U0_im_0_last_V;

assign im_0_last_V_ap_vld = read_inputs_Block_p_U0_im_0_last_V_ap_vld;

assign im_1_data = read_inputs_Block_p_U0_im_1_data;

assign im_1_data_ap_vld = read_inputs_Block_p_U0_im_1_data_ap_vld;

assign im_1_last_V = read_inputs_Block_p_U0_im_1_last_V;

assign im_1_last_V_ap_vld = read_inputs_Block_p_U0_im_1_last_V_ap_vld;

assign im_2_data = read_inputs_Block_p_U0_im_2_data;

assign im_2_data_ap_vld = read_inputs_Block_p_U0_im_2_data_ap_vld;

assign im_2_last_V = read_inputs_Block_p_U0_im_2_last_V;

assign im_2_last_V_ap_vld = read_inputs_Block_p_U0_im_2_last_V_ap_vld;

assign im_3_data_o = read_inputs_Block_p_U0_im_3_data_o;

assign im_3_data_o_ap_vld = read_inputs_Block_p_U0_im_3_data_o_ap_vld;

assign im_3_last_V = read_inputs_Block_p_U0_im_3_last_V;

assign im_3_last_V_ap_vld = read_inputs_Block_p_U0_im_3_last_V_ap_vld;

assign rd_zero_cnt_0_o = read_inputs_Block_p_U0_rd_zero_cnt_0_o;

assign rd_zero_cnt_0_o_ap_vld = read_inputs_Block_p_U0_rd_zero_cnt_0_o_ap_vld;

assign rd_zero_cnt_1_o = read_inputs_Block_p_U0_rd_zero_cnt_1_o;

assign rd_zero_cnt_1_o_ap_vld = read_inputs_Block_p_U0_rd_zero_cnt_1_o_ap_vld;

assign rd_zero_cnt_2_o = read_inputs_Block_p_U0_rd_zero_cnt_2_o;

assign rd_zero_cnt_2_o_ap_vld = read_inputs_Block_p_U0_rd_zero_cnt_2_o_ap_vld;

assign rd_zero_cnt_3_o = read_inputs_Block_p_U0_rd_zero_cnt_3_o;

assign rd_zero_cnt_3_o_ap_vld = read_inputs_Block_p_U0_rd_zero_cnt_3_o_ap_vld;

assign rd_zeros_0_o = read_inputs_Block_p_U0_rd_zeros_0_o;

assign rd_zeros_0_o_ap_vld = read_inputs_Block_p_U0_rd_zeros_0_o_ap_vld;

assign rd_zeros_1_o = read_inputs_Block_p_U0_rd_zeros_1_o;

assign rd_zeros_1_o_ap_vld = read_inputs_Block_p_U0_rd_zeros_1_o_ap_vld;

assign rd_zeros_2_o = read_inputs_Block_p_U0_rd_zeros_2_o;

assign rd_zeros_2_o_ap_vld = read_inputs_Block_p_U0_rd_zeros_2_o_ap_vld;

assign rd_zeros_3_o = read_inputs_Block_p_U0_rd_zeros_3_o;

assign rd_zeros_3_o_ap_vld = read_inputs_Block_p_U0_rd_zeros_3_o_ap_vld;

assign read_inputs_Block_p_U0_ap_continue = ap_continue;

assign read_inputs_Block_p_U0_ap_start = ap_start;

assign read_inputs_Block_p_U0_compressed_in = compressed_in;

assign read_inputs_Block_p_U0_rd_zeros_0_i = rd_zeros_0_i;

assign read_inputs_Block_p_U0_rd_zeros_1_i = rd_zeros_1_i;

assign read_inputs_Block_p_U0_rd_zeros_2_i = rd_zeros_2_i;

assign read_inputs_Block_p_U0_rd_zeros_3_i = rd_zeros_3_i;

assign read_inputs_Block_p_U0_start_full_n = 1'b1;

assign read_inputs_Block_p_U0_start_write = 1'b0;

endmodule //read_inputs