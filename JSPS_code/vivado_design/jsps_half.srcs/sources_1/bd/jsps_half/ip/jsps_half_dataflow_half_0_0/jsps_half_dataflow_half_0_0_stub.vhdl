-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Jun 18 22:56:34 2020
-- Host        : RM-LT-180 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/vpanchbhaiyye/Documents/jsps_half/jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_dataflow_half_0_0/jsps_half_dataflow_half_0_0_stub.vhdl
-- Design      : jsps_half_dataflow_half_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity jsps_half_dataflow_half_0_0 is
  Port ( 
    s_axi_CTRL_BUS_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CTRL_BUS_AWVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_AWREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_BUS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_BUS_WVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_WREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BUS_BVALID : out STD_LOGIC;
    s_axi_CTRL_BUS_BREADY : in STD_LOGIC;
    s_axi_CTRL_BUS_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CTRL_BUS_ARVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_ARREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_BUS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BUS_RVALID : out STD_LOGIC;
    s_axi_CTRL_BUS_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    in0_TVALID : in STD_LOGIC;
    in0_TREADY : out STD_LOGIC;
    in0_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in0_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    in1_TVALID : in STD_LOGIC;
    in1_TREADY : out STD_LOGIC;
    in1_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in1_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    in2_TVALID : in STD_LOGIC;
    in2_TREADY : out STD_LOGIC;
    in2_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in2_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    in3_TVALID : in STD_LOGIC;
    in3_TREADY : out STD_LOGIC;
    in3_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in3_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    out0_TVALID : out STD_LOGIC;
    out0_TREADY : in STD_LOGIC;
    out0_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out0_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    in_wts_TVALID : in STD_LOGIC;
    in_wts_TREADY : out STD_LOGIC;
    in_wts_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in_wts_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 )
  );

end jsps_half_dataflow_half_0_0;

architecture stub of jsps_half_dataflow_half_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_CTRL_BUS_AWADDR[5:0],s_axi_CTRL_BUS_AWVALID,s_axi_CTRL_BUS_AWREADY,s_axi_CTRL_BUS_WDATA[31:0],s_axi_CTRL_BUS_WSTRB[3:0],s_axi_CTRL_BUS_WVALID,s_axi_CTRL_BUS_WREADY,s_axi_CTRL_BUS_BRESP[1:0],s_axi_CTRL_BUS_BVALID,s_axi_CTRL_BUS_BREADY,s_axi_CTRL_BUS_ARADDR[5:0],s_axi_CTRL_BUS_ARVALID,s_axi_CTRL_BUS_ARREADY,s_axi_CTRL_BUS_RDATA[31:0],s_axi_CTRL_BUS_RRESP[1:0],s_axi_CTRL_BUS_RVALID,s_axi_CTRL_BUS_RREADY,ap_clk,ap_rst_n,interrupt,in0_TVALID,in0_TREADY,in0_TDATA[15:0],in0_TLAST[0:0],in1_TVALID,in1_TREADY,in1_TDATA[15:0],in1_TLAST[0:0],in2_TVALID,in2_TREADY,in2_TDATA[15:0],in2_TLAST[0:0],in3_TVALID,in3_TREADY,in3_TDATA[15:0],in3_TLAST[0:0],out0_TVALID,out0_TREADY,out0_TDATA[15:0],out0_TLAST[0:0],in_wts_TVALID,in_wts_TREADY,in_wts_TDATA[15:0],in_wts_TLAST[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "dataflow_half,Vivado 2019.2";
begin
end;
