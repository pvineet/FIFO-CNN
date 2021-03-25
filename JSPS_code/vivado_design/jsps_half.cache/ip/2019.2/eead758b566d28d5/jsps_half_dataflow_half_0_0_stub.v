// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Jun 18 22:56:26 2020
// Host        : RM-LT-180 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ jsps_half_dataflow_half_0_0_stub.v
// Design      : jsps_half_dataflow_half_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "dataflow_half,Vivado 2019.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_CTRL_BUS_AWADDR, 
  s_axi_CTRL_BUS_AWVALID, s_axi_CTRL_BUS_AWREADY, s_axi_CTRL_BUS_WDATA, 
  s_axi_CTRL_BUS_WSTRB, s_axi_CTRL_BUS_WVALID, s_axi_CTRL_BUS_WREADY, 
  s_axi_CTRL_BUS_BRESP, s_axi_CTRL_BUS_BVALID, s_axi_CTRL_BUS_BREADY, 
  s_axi_CTRL_BUS_ARADDR, s_axi_CTRL_BUS_ARVALID, s_axi_CTRL_BUS_ARREADY, 
  s_axi_CTRL_BUS_RDATA, s_axi_CTRL_BUS_RRESP, s_axi_CTRL_BUS_RVALID, 
  s_axi_CTRL_BUS_RREADY, ap_clk, ap_rst_n, interrupt, in0_TVALID, in0_TREADY, in0_TDATA, 
  in0_TLAST, in1_TVALID, in1_TREADY, in1_TDATA, in1_TLAST, in2_TVALID, in2_TREADY, in2_TDATA, 
  in2_TLAST, in3_TVALID, in3_TREADY, in3_TDATA, in3_TLAST, out0_TVALID, out0_TREADY, out0_TDATA, 
  out0_TLAST, in_wts_TVALID, in_wts_TREADY, in_wts_TDATA, in_wts_TLAST)
/* synthesis syn_black_box black_box_pad_pin="s_axi_CTRL_BUS_AWADDR[5:0],s_axi_CTRL_BUS_AWVALID,s_axi_CTRL_BUS_AWREADY,s_axi_CTRL_BUS_WDATA[31:0],s_axi_CTRL_BUS_WSTRB[3:0],s_axi_CTRL_BUS_WVALID,s_axi_CTRL_BUS_WREADY,s_axi_CTRL_BUS_BRESP[1:0],s_axi_CTRL_BUS_BVALID,s_axi_CTRL_BUS_BREADY,s_axi_CTRL_BUS_ARADDR[5:0],s_axi_CTRL_BUS_ARVALID,s_axi_CTRL_BUS_ARREADY,s_axi_CTRL_BUS_RDATA[31:0],s_axi_CTRL_BUS_RRESP[1:0],s_axi_CTRL_BUS_RVALID,s_axi_CTRL_BUS_RREADY,ap_clk,ap_rst_n,interrupt,in0_TVALID,in0_TREADY,in0_TDATA[15:0],in0_TLAST[0:0],in1_TVALID,in1_TREADY,in1_TDATA[15:0],in1_TLAST[0:0],in2_TVALID,in2_TREADY,in2_TDATA[15:0],in2_TLAST[0:0],in3_TVALID,in3_TREADY,in3_TDATA[15:0],in3_TLAST[0:0],out0_TVALID,out0_TREADY,out0_TDATA[15:0],out0_TLAST[0:0],in_wts_TVALID,in_wts_TREADY,in_wts_TDATA[15:0],in_wts_TLAST[0:0]" */;
  input [5:0]s_axi_CTRL_BUS_AWADDR;
  input s_axi_CTRL_BUS_AWVALID;
  output s_axi_CTRL_BUS_AWREADY;
  input [31:0]s_axi_CTRL_BUS_WDATA;
  input [3:0]s_axi_CTRL_BUS_WSTRB;
  input s_axi_CTRL_BUS_WVALID;
  output s_axi_CTRL_BUS_WREADY;
  output [1:0]s_axi_CTRL_BUS_BRESP;
  output s_axi_CTRL_BUS_BVALID;
  input s_axi_CTRL_BUS_BREADY;
  input [5:0]s_axi_CTRL_BUS_ARADDR;
  input s_axi_CTRL_BUS_ARVALID;
  output s_axi_CTRL_BUS_ARREADY;
  output [31:0]s_axi_CTRL_BUS_RDATA;
  output [1:0]s_axi_CTRL_BUS_RRESP;
  output s_axi_CTRL_BUS_RVALID;
  input s_axi_CTRL_BUS_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input in0_TVALID;
  output in0_TREADY;
  input [15:0]in0_TDATA;
  input [0:0]in0_TLAST;
  input in1_TVALID;
  output in1_TREADY;
  input [15:0]in1_TDATA;
  input [0:0]in1_TLAST;
  input in2_TVALID;
  output in2_TREADY;
  input [15:0]in2_TDATA;
  input [0:0]in2_TLAST;
  input in3_TVALID;
  output in3_TREADY;
  input [15:0]in3_TDATA;
  input [0:0]in3_TLAST;
  output out0_TVALID;
  input out0_TREADY;
  output [15:0]out0_TDATA;
  output [0:0]out0_TLAST;
  input in_wts_TVALID;
  output in_wts_TREADY;
  input [15:0]in_wts_TDATA;
  input [0:0]in_wts_TLAST;
endmodule
