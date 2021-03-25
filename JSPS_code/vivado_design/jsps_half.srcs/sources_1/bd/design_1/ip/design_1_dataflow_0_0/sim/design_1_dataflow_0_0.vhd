-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:dataflow:1.0
-- IP Revision: 2006150054

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_dataflow_0_0 IS
  PORT (
    s_axi_CTRL_BUS_AWADDR : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    s_axi_CTRL_BUS_AWVALID : IN STD_LOGIC;
    s_axi_CTRL_BUS_AWREADY : OUT STD_LOGIC;
    s_axi_CTRL_BUS_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_CTRL_BUS_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_CTRL_BUS_WVALID : IN STD_LOGIC;
    s_axi_CTRL_BUS_WREADY : OUT STD_LOGIC;
    s_axi_CTRL_BUS_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_CTRL_BUS_BVALID : OUT STD_LOGIC;
    s_axi_CTRL_BUS_BREADY : IN STD_LOGIC;
    s_axi_CTRL_BUS_ARADDR : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    s_axi_CTRL_BUS_ARVALID : IN STD_LOGIC;
    s_axi_CTRL_BUS_ARREADY : OUT STD_LOGIC;
    s_axi_CTRL_BUS_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_CTRL_BUS_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_CTRL_BUS_RVALID : OUT STD_LOGIC;
    s_axi_CTRL_BUS_RREADY : IN STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    interrupt : OUT STD_LOGIC;
    in_pixel0_TVALID : IN STD_LOGIC;
    in_pixel0_TREADY : OUT STD_LOGIC;
    in_pixel0_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    in_pixel0_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    in_pixel1_TVALID : IN STD_LOGIC;
    in_pixel1_TREADY : OUT STD_LOGIC;
    in_pixel1_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    in_pixel1_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    in_pixel2_TVALID : IN STD_LOGIC;
    in_pixel2_TREADY : OUT STD_LOGIC;
    in_pixel2_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    in_pixel2_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    in_pixel3_TVALID : IN STD_LOGIC;
    in_pixel3_TREADY : OUT STD_LOGIC;
    in_pixel3_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    in_pixel3_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    out_pixel0_TVALID : OUT STD_LOGIC;
    out_pixel0_TREADY : IN STD_LOGIC;
    out_pixel0_TDATA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    out_pixel0_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    in_weight0_TVALID : IN STD_LOGIC;
    in_weight0_TREADY : OUT STD_LOGIC;
    in_weight0_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    in_weight0_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END design_1_dataflow_0_0;

ARCHITECTURE design_1_dataflow_0_0_arch OF design_1_dataflow_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_dataflow_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT dataflow IS
    GENERIC (
      C_S_AXI_CTRL_BUS_ADDR_WIDTH : INTEGER;
      C_S_AXI_CTRL_BUS_DATA_WIDTH : INTEGER
    );
    PORT (
      s_axi_CTRL_BUS_AWADDR : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
      s_axi_CTRL_BUS_AWVALID : IN STD_LOGIC;
      s_axi_CTRL_BUS_AWREADY : OUT STD_LOGIC;
      s_axi_CTRL_BUS_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_CTRL_BUS_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_CTRL_BUS_WVALID : IN STD_LOGIC;
      s_axi_CTRL_BUS_WREADY : OUT STD_LOGIC;
      s_axi_CTRL_BUS_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_CTRL_BUS_BVALID : OUT STD_LOGIC;
      s_axi_CTRL_BUS_BREADY : IN STD_LOGIC;
      s_axi_CTRL_BUS_ARADDR : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
      s_axi_CTRL_BUS_ARVALID : IN STD_LOGIC;
      s_axi_CTRL_BUS_ARREADY : OUT STD_LOGIC;
      s_axi_CTRL_BUS_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_CTRL_BUS_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_CTRL_BUS_RVALID : OUT STD_LOGIC;
      s_axi_CTRL_BUS_RREADY : IN STD_LOGIC;
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      interrupt : OUT STD_LOGIC;
      in_pixel0_TVALID : IN STD_LOGIC;
      in_pixel0_TREADY : OUT STD_LOGIC;
      in_pixel0_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      in_pixel0_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      in_pixel1_TVALID : IN STD_LOGIC;
      in_pixel1_TREADY : OUT STD_LOGIC;
      in_pixel1_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      in_pixel1_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      in_pixel2_TVALID : IN STD_LOGIC;
      in_pixel2_TREADY : OUT STD_LOGIC;
      in_pixel2_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      in_pixel2_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      in_pixel3_TVALID : IN STD_LOGIC;
      in_pixel3_TREADY : OUT STD_LOGIC;
      in_pixel3_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      in_pixel3_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      out_pixel0_TVALID : OUT STD_LOGIC;
      out_pixel0_TREADY : IN STD_LOGIC;
      out_pixel0_TDATA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      out_pixel0_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      in_weight0_TVALID : IN STD_LOGIC;
      in_weight0_TREADY : OUT STD_LOGIC;
      in_weight0_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      in_weight0_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
  END COMPONENT dataflow;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_dataflow_0_0_arch: ARCHITECTURE IS "HLS";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF in_weight0_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 in_weight0 TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF in_weight0_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 in_weight0 TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF in_weight0_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 in_weight0 TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF in_weight0_TVALID: SIGNAL IS "XIL_INTERFACENAME in_weight0, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF in_weight0_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 in_weight0 TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF out_pixel0_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 out_pixel0 TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF out_pixel0_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 out_pixel0 TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF out_pixel0_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 out_pixel0 TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF out_pixel0_TVALID: SIGNAL IS "XIL_INTERFACENAME out_pixel0, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF out_pixel0_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 out_pixel0 TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF in_pixel3_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 in_pixel3 TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF in_pixel3_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 in_pixel3 TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF in_pixel3_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 in_pixel3 TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF in_pixel3_TVALID: SIGNAL IS "XIL_INTERFACENAME in_pixel3, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF in_pixel3_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 in_pixel3 TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF in_pixel2_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 in_pixel2 TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF in_pixel2_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 in_pixel2 TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF in_pixel2_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 in_pixel2 TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF in_pixel2_TVALID: SIGNAL IS "XIL_INTERFACENAME in_pixel2, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF in_pixel2_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 in_pixel2 TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF in_pixel1_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 in_pixel1 TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF in_pixel1_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 in_pixel1 TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF in_pixel1_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 in_pixel1 TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF in_pixel1_TVALID: SIGNAL IS "XIL_INTERFACENAME in_pixel1, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF in_pixel1_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 in_pixel1 TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF in_pixel0_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 in_pixel0 TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF in_pixel0_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 in_pixel0 TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF in_pixel0_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 in_pixel0 TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF in_pixel0_TVALID: SIGNAL IS "XIL_INTERFACENAME in_pixel0, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF in_pixel0_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 in_pixel0 TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF interrupt: SIGNAL IS "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF interrupt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst_n: SIGNAL IS "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_CTRL_BUS:in_pixel0:in_pixel1:in_pixel2:in_pixel3:out_pixel0:in_weight0, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_CTRL_BUS_AWADDR: SIGNAL IS "XIL_INTERFACENAME s_axi_CTRL_BUS, ADDR_WIDTH 7, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 50000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ" & 
"_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWADDR";
BEGIN
  U0 : dataflow
    GENERIC MAP (
      C_S_AXI_CTRL_BUS_ADDR_WIDTH => 7,
      C_S_AXI_CTRL_BUS_DATA_WIDTH => 32
    )
    PORT MAP (
      s_axi_CTRL_BUS_AWADDR => s_axi_CTRL_BUS_AWADDR,
      s_axi_CTRL_BUS_AWVALID => s_axi_CTRL_BUS_AWVALID,
      s_axi_CTRL_BUS_AWREADY => s_axi_CTRL_BUS_AWREADY,
      s_axi_CTRL_BUS_WDATA => s_axi_CTRL_BUS_WDATA,
      s_axi_CTRL_BUS_WSTRB => s_axi_CTRL_BUS_WSTRB,
      s_axi_CTRL_BUS_WVALID => s_axi_CTRL_BUS_WVALID,
      s_axi_CTRL_BUS_WREADY => s_axi_CTRL_BUS_WREADY,
      s_axi_CTRL_BUS_BRESP => s_axi_CTRL_BUS_BRESP,
      s_axi_CTRL_BUS_BVALID => s_axi_CTRL_BUS_BVALID,
      s_axi_CTRL_BUS_BREADY => s_axi_CTRL_BUS_BREADY,
      s_axi_CTRL_BUS_ARADDR => s_axi_CTRL_BUS_ARADDR,
      s_axi_CTRL_BUS_ARVALID => s_axi_CTRL_BUS_ARVALID,
      s_axi_CTRL_BUS_ARREADY => s_axi_CTRL_BUS_ARREADY,
      s_axi_CTRL_BUS_RDATA => s_axi_CTRL_BUS_RDATA,
      s_axi_CTRL_BUS_RRESP => s_axi_CTRL_BUS_RRESP,
      s_axi_CTRL_BUS_RVALID => s_axi_CTRL_BUS_RVALID,
      s_axi_CTRL_BUS_RREADY => s_axi_CTRL_BUS_RREADY,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      interrupt => interrupt,
      in_pixel0_TVALID => in_pixel0_TVALID,
      in_pixel0_TREADY => in_pixel0_TREADY,
      in_pixel0_TDATA => in_pixel0_TDATA,
      in_pixel0_TLAST => in_pixel0_TLAST,
      in_pixel1_TVALID => in_pixel1_TVALID,
      in_pixel1_TREADY => in_pixel1_TREADY,
      in_pixel1_TDATA => in_pixel1_TDATA,
      in_pixel1_TLAST => in_pixel1_TLAST,
      in_pixel2_TVALID => in_pixel2_TVALID,
      in_pixel2_TREADY => in_pixel2_TREADY,
      in_pixel2_TDATA => in_pixel2_TDATA,
      in_pixel2_TLAST => in_pixel2_TLAST,
      in_pixel3_TVALID => in_pixel3_TVALID,
      in_pixel3_TREADY => in_pixel3_TREADY,
      in_pixel3_TDATA => in_pixel3_TDATA,
      in_pixel3_TLAST => in_pixel3_TLAST,
      out_pixel0_TVALID => out_pixel0_TVALID,
      out_pixel0_TREADY => out_pixel0_TREADY,
      out_pixel0_TDATA => out_pixel0_TDATA,
      out_pixel0_TLAST => out_pixel0_TLAST,
      in_weight0_TVALID => in_weight0_TVALID,
      in_weight0_TREADY => in_weight0_TREADY,
      in_weight0_TDATA => in_weight0_TDATA,
      in_weight0_TLAST => in_weight0_TLAST
    );
END design_1_dataflow_0_0_arch;
