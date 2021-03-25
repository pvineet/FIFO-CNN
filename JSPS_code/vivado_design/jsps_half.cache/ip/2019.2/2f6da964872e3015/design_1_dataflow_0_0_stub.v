// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Jun 15 01:40:55 2020
// Host        : RM-LT-180 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_dataflow_0_0_stub.v
// Design      : design_1_dataflow_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "dataflow,Vivado 2019.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_CTRL_BUS_AWADDR, 
  s_axi_CTRL_BUS_AWVALID, s_axi_CTRL_BUS_AWREADY, s_axi_CTRL_BUS_WDATA, 
  s_axi_CTRL_BUS_WSTRB, s_axi_CTRL_BUS_WVALID, s_axi_CTRL_BUS_WREADY, 
  s_axi_CTRL_BUS_BRESP, s_axi_CTRL_BUS_BVALID, s_axi_CTRL_BUS_BREADY, 
  s_axi_CTRL_BUS_ARADDR, s_axi_CTRL_BUS_ARVALID, s_axi_CTRL_BUS_ARREADY, 
  s_axi_CTRL_BUS_RDATA, s_axi_CTRL_BUS_RRESP, s_axi_CTRL_BUS_RVALID, 
  s_axi_CTRL_BUS_RREADY, ap_clk, ap_rst_n, interrupt, in_pixel0_TVALID, in_pixel0_TREADY, 
  in_pixel0_TDATA, in_pixel0_TLAST, in_pixel1_TVALID, in_pixel1_TREADY, in_pixel1_TDATA, 
  in_pixel1_TLAST, in_pixel2_TVALID, in_pixel2_TREADY, in_pixel2_TDATA, in_pixel2_TLAST, 
  in_pixel3_TVALID, in_pixel3_TREADY, in_pixel3_TDATA, in_pixel3_TLAST, out_pixel0_TVALID, 
  out_pixel0_TREADY, out_pixel0_TDATA, out_pixel0_TLAST, in_weight0_TVALID, 
  in_weight0_TREADY, in_weight0_TDATA, in_weight0_TLAST)
/* synthesis syn_black_box black_box_pad_pin="s_axi_CTRL_BUS_AWADDR[6:0],s_axi_CTRL_BUS_AWVALID,s_axi_CTRL_BUS_AWREADY,s_axi_CTRL_BUS_WDATA[31:0],s_axi_CTRL_BUS_WSTRB[3:0],s_axi_CTRL_BUS_WVALID,s_axi_CTRL_BUS_WREADY,s_axi_CTRL_BUS_BRESP[1:0],s_axi_CTRL_BUS_BVALID,s_axi_CTRL_BUS_BREADY,s_axi_CTRL_BUS_ARADDR[6:0],s_axi_CTRL_BUS_ARVALID,s_axi_CTRL_BUS_ARREADY,s_axi_CTRL_BUS_RDATA[31:0],s_axi_CTRL_BUS_RRESP[1:0],s_axi_CTRL_BUS_RVALID,s_axi_CTRL_BUS_RREADY,ap_clk,ap_rst_n,interrupt,in_pixel0_TVALID,in_pixel0_TREADY,in_pixel0_TDATA[15:0],in_pixel0_TLAST[0:0],in_pixel1_TVALID,in_pixel1_TREADY,in_pixel1_TDATA[15:0],in_pixel1_TLAST[0:0],in_pixel2_TVALID,in_pixel2_TREADY,in_pixel2_TDATA[15:0],in_pixel2_TLAST[0:0],in_pixel3_TVALID,in_pixel3_TREADY,in_pixel3_TDATA[15:0],in_pixel3_TLAST[0:0],out_pixel0_TVALID,out_pixel0_TREADY,out_pixel0_TDATA[15:0],out_pixel0_TLAST[0:0],in_weight0_TVALID,in_weight0_TREADY,in_weight0_TDATA[15:0],in_weight0_TLAST[0:0]" */;
  input [6:0]s_axi_CTRL_BUS_AWADDR;
  input s_axi_CTRL_BUS_AWVALID;
  output s_axi_CTRL_BUS_AWREADY;
  input [31:0]s_axi_CTRL_BUS_WDATA;
  input [3:0]s_axi_CTRL_BUS_WSTRB;
  input s_axi_CTRL_BUS_WVALID;
  output s_axi_CTRL_BUS_WREADY;
  output [1:0]s_axi_CTRL_BUS_BRESP;
  output s_axi_CTRL_BUS_BVALID;
  input s_axi_CTRL_BUS_BREADY;
  input [6:0]s_axi_CTRL_BUS_ARADDR;
  input s_axi_CTRL_BUS_ARVALID;
  output s_axi_CTRL_BUS_ARREADY;
  output [31:0]s_axi_CTRL_BUS_RDATA;
  output [1:0]s_axi_CTRL_BUS_RRESP;
  output s_axi_CTRL_BUS_RVALID;
  input s_axi_CTRL_BUS_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input in_pixel0_TVALID;
  output in_pixel0_TREADY;
  input [15:0]in_pixel0_TDATA;
  input [0:0]in_pixel0_TLAST;
  input in_pixel1_TVALID;
  output in_pixel1_TREADY;
  input [15:0]in_pixel1_TDATA;
  input [0:0]in_pixel1_TLAST;
  input in_pixel2_TVALID;
  output in_pixel2_TREADY;
  input [15:0]in_pixel2_TDATA;
  input [0:0]in_pixel2_TLAST;
  input in_pixel3_TVALID;
  output in_pixel3_TREADY;
  input [15:0]in_pixel3_TDATA;
  input [0:0]in_pixel3_TLAST;
  output out_pixel0_TVALID;
  input out_pixel0_TREADY;
  output [15:0]out_pixel0_TDATA;
  output [0:0]out_pixel0_TLAST;
  input in_weight0_TVALID;
  output in_weight0_TREADY;
  input [15:0]in_weight0_TDATA;
  input [0:0]in_weight0_TLAST;
endmodule
