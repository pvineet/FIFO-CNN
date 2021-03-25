-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon Jun 15 01:41:06 2020
-- Host        : RM-LT-180 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/vpanchbhaiyye/Documents/jsps_half/jsps_half.srcs/sources_1/bd/design_1/ip/design_1_dataflow_0_0/design_1_dataflow_0_0_stub.vhdl
-- Design      : design_1_dataflow_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_dataflow_0_0 is
  Port ( 
    s_axi_CTRL_BUS_AWADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_CTRL_BUS_AWVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_AWREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_BUS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_BUS_WVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_WREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BUS_BVALID : out STD_LOGIC;
    s_axi_CTRL_BUS_BREADY : in STD_LOGIC;
    s_axi_CTRL_BUS_ARADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_CTRL_BUS_ARVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_ARREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_BUS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BUS_RVALID : out STD_LOGIC;
    s_axi_CTRL_BUS_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    in_pixel0_TVALID : in STD_LOGIC;
    in_pixel0_TREADY : out STD_LOGIC;
    in_pixel0_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in_pixel0_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    in_pixel1_TVALID : in STD_LOGIC;
    in_pixel1_TREADY : out STD_LOGIC;
    in_pixel1_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in_pixel1_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    in_pixel2_TVALID : in STD_LOGIC;
    in_pixel2_TREADY : out STD_LOGIC;
    in_pixel2_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in_pixel2_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    in_pixel3_TVALID : in STD_LOGIC;
    in_pixel3_TREADY : out STD_LOGIC;
    in_pixel3_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in_pixel3_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    out_pixel0_TVALID : out STD_LOGIC;
    out_pixel0_TREADY : in STD_LOGIC;
    out_pixel0_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_pixel0_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    in_weight0_TVALID : in STD_LOGIC;
    in_weight0_TREADY : out STD_LOGIC;
    in_weight0_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in_weight0_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 )
  );

end design_1_dataflow_0_0;

architecture stub of design_1_dataflow_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_CTRL_BUS_AWADDR[6:0],s_axi_CTRL_BUS_AWVALID,s_axi_CTRL_BUS_AWREADY,s_axi_CTRL_BUS_WDATA[31:0],s_axi_CTRL_BUS_WSTRB[3:0],s_axi_CTRL_BUS_WVALID,s_axi_CTRL_BUS_WREADY,s_axi_CTRL_BUS_BRESP[1:0],s_axi_CTRL_BUS_BVALID,s_axi_CTRL_BUS_BREADY,s_axi_CTRL_BUS_ARADDR[6:0],s_axi_CTRL_BUS_ARVALID,s_axi_CTRL_BUS_ARREADY,s_axi_CTRL_BUS_RDATA[31:0],s_axi_CTRL_BUS_RRESP[1:0],s_axi_CTRL_BUS_RVALID,s_axi_CTRL_BUS_RREADY,ap_clk,ap_rst_n,interrupt,in_pixel0_TVALID,in_pixel0_TREADY,in_pixel0_TDATA[15:0],in_pixel0_TLAST[0:0],in_pixel1_TVALID,in_pixel1_TREADY,in_pixel1_TDATA[15:0],in_pixel1_TLAST[0:0],in_pixel2_TVALID,in_pixel2_TREADY,in_pixel2_TDATA[15:0],in_pixel2_TLAST[0:0],in_pixel3_TVALID,in_pixel3_TREADY,in_pixel3_TDATA[15:0],in_pixel3_TLAST[0:0],out_pixel0_TVALID,out_pixel0_TREADY,out_pixel0_TDATA[15:0],out_pixel0_TLAST[0:0],in_weight0_TVALID,in_weight0_TREADY,in_weight0_TDATA[15:0],in_weight0_TLAST[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "dataflow,Vivado 2019.2";
begin
end;
