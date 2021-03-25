// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:dataflow:1.0
// IP Revision: 2006150054

(* X_CORE_INFO = "dataflow,Vivado 2019.2" *)
(* CHECK_LICENSE_TYPE = "design_1_dataflow_0_0,dataflow,{}" *)
(* CORE_GENERATION_INFO = "design_1_dataflow_0_0,dataflow,{x_ipProduct=Vivado 2019.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=dataflow,x_ipVersion=1.0,x_ipCoreRevision=2006150054,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_CTRL_BUS_ADDR_WIDTH=7,C_S_AXI_CTRL_BUS_DATA_WIDTH=32}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_dataflow_0_0 (
  s_axi_CTRL_BUS_AWADDR,
  s_axi_CTRL_BUS_AWVALID,
  s_axi_CTRL_BUS_AWREADY,
  s_axi_CTRL_BUS_WDATA,
  s_axi_CTRL_BUS_WSTRB,
  s_axi_CTRL_BUS_WVALID,
  s_axi_CTRL_BUS_WREADY,
  s_axi_CTRL_BUS_BRESP,
  s_axi_CTRL_BUS_BVALID,
  s_axi_CTRL_BUS_BREADY,
  s_axi_CTRL_BUS_ARADDR,
  s_axi_CTRL_BUS_ARVALID,
  s_axi_CTRL_BUS_ARREADY,
  s_axi_CTRL_BUS_RDATA,
  s_axi_CTRL_BUS_RRESP,
  s_axi_CTRL_BUS_RVALID,
  s_axi_CTRL_BUS_RREADY,
  ap_clk,
  ap_rst_n,
  interrupt,
  in_pixel0_TVALID,
  in_pixel0_TREADY,
  in_pixel0_TDATA,
  in_pixel0_TLAST,
  in_pixel1_TVALID,
  in_pixel1_TREADY,
  in_pixel1_TDATA,
  in_pixel1_TLAST,
  in_pixel2_TVALID,
  in_pixel2_TREADY,
  in_pixel2_TDATA,
  in_pixel2_TLAST,
  in_pixel3_TVALID,
  in_pixel3_TREADY,
  in_pixel3_TDATA,
  in_pixel3_TLAST,
  out_pixel0_TVALID,
  out_pixel0_TREADY,
  out_pixel0_TDATA,
  out_pixel0_TLAST,
  in_weight0_TVALID,
  in_weight0_TREADY,
  in_weight0_TDATA,
  in_weight0_TLAST
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWADDR" *)
input wire [6 : 0] s_axi_CTRL_BUS_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWVALID" *)
input wire s_axi_CTRL_BUS_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWREADY" *)
output wire s_axi_CTRL_BUS_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WDATA" *)
input wire [31 : 0] s_axi_CTRL_BUS_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WSTRB" *)
input wire [3 : 0] s_axi_CTRL_BUS_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WVALID" *)
input wire s_axi_CTRL_BUS_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WREADY" *)
output wire s_axi_CTRL_BUS_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BRESP" *)
output wire [1 : 0] s_axi_CTRL_BUS_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BVALID" *)
output wire s_axi_CTRL_BUS_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BREADY" *)
input wire s_axi_CTRL_BUS_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARADDR" *)
input wire [6 : 0] s_axi_CTRL_BUS_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARVALID" *)
input wire s_axi_CTRL_BUS_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARREADY" *)
output wire s_axi_CTRL_BUS_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RDATA" *)
output wire [31 : 0] s_axi_CTRL_BUS_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RRESP" *)
output wire [1 : 0] s_axi_CTRL_BUS_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RVALID" *)
output wire s_axi_CTRL_BUS_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_CTRL_BUS, ADDR_WIDTH 7, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 50000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ\
_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RREADY" *)
input wire s_axi_CTRL_BUS_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_CTRL_BUS:in_pixel0:in_pixel1:in_pixel2:in_pixel3:out_pixel0:in_weight0, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_pixel0 TVALID" *)
input wire in_pixel0_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_pixel0 TREADY" *)
output wire in_pixel0_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_pixel0 TDATA" *)
input wire [15 : 0] in_pixel0_TDATA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_pixel0, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_pixel0 TLAST" *)
input wire [0 : 0] in_pixel0_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_pixel1 TVALID" *)
input wire in_pixel1_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_pixel1 TREADY" *)
output wire in_pixel1_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_pixel1 TDATA" *)
input wire [15 : 0] in_pixel1_TDATA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_pixel1, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_pixel1 TLAST" *)
input wire [0 : 0] in_pixel1_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_pixel2 TVALID" *)
input wire in_pixel2_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_pixel2 TREADY" *)
output wire in_pixel2_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_pixel2 TDATA" *)
input wire [15 : 0] in_pixel2_TDATA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_pixel2, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_pixel2 TLAST" *)
input wire [0 : 0] in_pixel2_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_pixel3 TVALID" *)
input wire in_pixel3_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_pixel3 TREADY" *)
output wire in_pixel3_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_pixel3 TDATA" *)
input wire [15 : 0] in_pixel3_TDATA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_pixel3, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_pixel3 TLAST" *)
input wire [0 : 0] in_pixel3_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_pixel0 TVALID" *)
output wire out_pixel0_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_pixel0 TREADY" *)
input wire out_pixel0_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_pixel0 TDATA" *)
output wire [15 : 0] out_pixel0_TDATA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_pixel0, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_pixel0 TLAST" *)
output wire [0 : 0] out_pixel0_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_weight0 TVALID" *)
input wire in_weight0_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_weight0 TREADY" *)
output wire in_weight0_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_weight0 TDATA" *)
input wire [15 : 0] in_weight0_TDATA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_weight0, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_weight0 TLAST" *)
input wire [0 : 0] in_weight0_TLAST;

  dataflow #(
    .C_S_AXI_CTRL_BUS_ADDR_WIDTH(7),
    .C_S_AXI_CTRL_BUS_DATA_WIDTH(32)
  ) inst (
    .s_axi_CTRL_BUS_AWADDR(s_axi_CTRL_BUS_AWADDR),
    .s_axi_CTRL_BUS_AWVALID(s_axi_CTRL_BUS_AWVALID),
    .s_axi_CTRL_BUS_AWREADY(s_axi_CTRL_BUS_AWREADY),
    .s_axi_CTRL_BUS_WDATA(s_axi_CTRL_BUS_WDATA),
    .s_axi_CTRL_BUS_WSTRB(s_axi_CTRL_BUS_WSTRB),
    .s_axi_CTRL_BUS_WVALID(s_axi_CTRL_BUS_WVALID),
    .s_axi_CTRL_BUS_WREADY(s_axi_CTRL_BUS_WREADY),
    .s_axi_CTRL_BUS_BRESP(s_axi_CTRL_BUS_BRESP),
    .s_axi_CTRL_BUS_BVALID(s_axi_CTRL_BUS_BVALID),
    .s_axi_CTRL_BUS_BREADY(s_axi_CTRL_BUS_BREADY),
    .s_axi_CTRL_BUS_ARADDR(s_axi_CTRL_BUS_ARADDR),
    .s_axi_CTRL_BUS_ARVALID(s_axi_CTRL_BUS_ARVALID),
    .s_axi_CTRL_BUS_ARREADY(s_axi_CTRL_BUS_ARREADY),
    .s_axi_CTRL_BUS_RDATA(s_axi_CTRL_BUS_RDATA),
    .s_axi_CTRL_BUS_RRESP(s_axi_CTRL_BUS_RRESP),
    .s_axi_CTRL_BUS_RVALID(s_axi_CTRL_BUS_RVALID),
    .s_axi_CTRL_BUS_RREADY(s_axi_CTRL_BUS_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .in_pixel0_TVALID(in_pixel0_TVALID),
    .in_pixel0_TREADY(in_pixel0_TREADY),
    .in_pixel0_TDATA(in_pixel0_TDATA),
    .in_pixel0_TLAST(in_pixel0_TLAST),
    .in_pixel1_TVALID(in_pixel1_TVALID),
    .in_pixel1_TREADY(in_pixel1_TREADY),
    .in_pixel1_TDATA(in_pixel1_TDATA),
    .in_pixel1_TLAST(in_pixel1_TLAST),
    .in_pixel2_TVALID(in_pixel2_TVALID),
    .in_pixel2_TREADY(in_pixel2_TREADY),
    .in_pixel2_TDATA(in_pixel2_TDATA),
    .in_pixel2_TLAST(in_pixel2_TLAST),
    .in_pixel3_TVALID(in_pixel3_TVALID),
    .in_pixel3_TREADY(in_pixel3_TREADY),
    .in_pixel3_TDATA(in_pixel3_TDATA),
    .in_pixel3_TLAST(in_pixel3_TLAST),
    .out_pixel0_TVALID(out_pixel0_TVALID),
    .out_pixel0_TREADY(out_pixel0_TREADY),
    .out_pixel0_TDATA(out_pixel0_TDATA),
    .out_pixel0_TLAST(out_pixel0_TLAST),
    .in_weight0_TVALID(in_weight0_TVALID),
    .in_weight0_TREADY(in_weight0_TREADY),
    .in_weight0_TDATA(in_weight0_TDATA),
    .in_weight0_TLAST(in_weight0_TLAST)
  );
endmodule
