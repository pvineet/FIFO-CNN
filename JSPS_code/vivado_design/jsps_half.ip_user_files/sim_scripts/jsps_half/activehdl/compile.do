vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xbip_utils_v3_0_10
vlib activehdl/axi_utils_v2_0_6
vlib activehdl/xbip_pipe_v3_0_6
vlib activehdl/xbip_dsp48_wrapper_v3_0_4
vlib activehdl/xbip_dsp48_addsub_v3_0_6
vlib activehdl/xbip_dsp48_multadd_v3_0_6
vlib activehdl/xbip_bram18k_v3_0_6
vlib activehdl/mult_gen_v12_0_16
vlib activehdl/floating_point_v7_1_9
vlib activehdl/xil_defaultlib
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_6
vlib activehdl/processing_system7_vip_v1_0_8
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/fifo_generator_v13_2_5
vlib activehdl/lib_fifo_v1_0_14
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/axi_datamover_v5_1_22
vlib activehdl/axi_sg_v4_1_13
vlib activehdl/axi_dma_v7_1_21
vlib activehdl/xlconstant_v1_1_6
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_register_slice_v2_1_20
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_data_fifo_v2_1_19
vlib activehdl/axi_crossbar_v2_1_21
vlib activehdl/axi_protocol_converter_v2_1_20

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap xbip_utils_v3_0_10 activehdl/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 activehdl/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 activehdl/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 activehdl/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 activehdl/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 activehdl/xbip_dsp48_multadd_v3_0_6
vmap xbip_bram18k_v3_0_6 activehdl/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_16 activehdl/mult_gen_v12_0_16
vmap floating_point_v7_1_9 activehdl/floating_point_v7_1_9
vmap xil_defaultlib activehdl/xil_defaultlib
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_6 activehdl/axi_vip_v1_1_6
vmap processing_system7_vip_v1_0_8 activehdl/processing_system7_vip_v1_0_8
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_5 activehdl/fifo_generator_v13_2_5
vmap lib_fifo_v1_0_14 activehdl/lib_fifo_v1_0_14
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_22 activehdl/axi_datamover_v5_1_22
vmap axi_sg_v4_1_13 activehdl/axi_sg_v4_1_13
vmap axi_dma_v7_1_21 activehdl/axi_dma_v7_1_21
vmap xlconstant_v1_1_6 activehdl/xlconstant_v1_1_6
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_register_slice_v2_1_20 activehdl/axi_register_slice_v2_1_20
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_data_fifo_v2_1_19 activehdl/axi_data_fifo_v2_1_19
vmap axi_crossbar_v2_1_21 activehdl/axi_crossbar_v2_1_21
vmap axi_protocol_converter_v2_1_20 activehdl/axi_protocol_converter_v2_1_20

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_10 -93 \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b795/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93 \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93 \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93 \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -93 \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93 \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_16 -93 \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ce84/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_9 -93 \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/f7b4/hdl/floating_point_v7_1_rfs.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/6533/hdl/verilog/Block_proc34.v" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/6533/hdl/verilog/Block_proc34_psumcud.v" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/6533/hdl/verilog/Block_proc34_psumdEe.v" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/6533/hdl/verilog/dataflow_half_CTRL_BUS_s_axi.v" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/6533/hdl/verilog/dataflow_half_had1iI.v" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/6533/hdl/verilog/dataflow_half_hcmbkb.v" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/6533/hdl/verilog/dataflow_half_hmu2iS.v" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/6533/hdl/verilog/dataflow_half_spt0iy.v" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/6533/hdl/verilog/dataflow_half_uitZio.v" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/6533/hdl/verilog/read_inputs.v" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/6533/hdl/verilog/read_inputs_Block_p.v" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/6533/hdl/verilog/regslice_core.v" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/6533/hdl/verilog/dataflow_half.v" \

vcom -work xil_defaultlib -93 \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/6533/hdl/ip/dataflow_half_ap_hadd_3_full_dsp_16.vhd" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/6533/hdl/ip/dataflow_half_ap_hcmp_0_no_dsp_16.vhd" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/6533/hdl/ip/dataflow_half_ap_hmul_2_max_dsp_16.vhd" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/6533/hdl/ip/dataflow_half_ap_sptohp_0_no_dsp_32.vhd" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/6533/hdl/ip/dataflow_half_ap_uitofp_4_no_dsp_32.vhd" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_dataflow_half_0_0/sim/jsps_half_dataflow_half_0_0.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_6  -sv2k12 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/dc12/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_8  -sv2k12 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0/sim/jsps_half_processing_system7_0_0.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_14 -93 \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_22 -93 \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1e40/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_13 -93 \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/4919/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_21 -93 \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec2a/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_axi_dma_0_0/sim/jsps_half_axi_dma_0_0.vhd" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_axi_dma_1_0/sim/jsps_half_axi_dma_1_0.vhd" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_axi_dma_2_0/sim/jsps_half_axi_dma_2_0.vhd" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_axi_dma_3_0/sim/jsps_half_axi_dma_3_0.vhd" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_axi_dma_4_0/sim/jsps_half_axi_dma_4_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/sim/bd_3f22.v" \

vlog -work xlconstant_v1_1_6  -v2k5 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/34f7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_3f22_one_0.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_3f22_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_3f22_arsw_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_3f22_rsw_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_3f22_awsw_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_3f22_wsw_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_3f22_bsw_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2508/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_3f22_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_3f22_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/9d43/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_3f22_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_3f22_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_3f22_sarn_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_3f22_srn_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_13/sim/bd_3f22_s01mmu_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_14/sim/bd_3f22_s01tr_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_15/sim/bd_3f22_s01sic_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_16/sim/bd_3f22_s01a2s_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_17/sim/bd_3f22_sawn_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_18/sim/bd_3f22_swn_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_19/sim/bd_3f22_sbn_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_20/sim/bd_3f22_s02mmu_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_21/sim/bd_3f22_s02tr_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_22/sim/bd_3f22_s02sic_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_23/sim/bd_3f22_s02a2s_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_24/sim/bd_3f22_sarn_1.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_25/sim/bd_3f22_srn_1.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_26/sim/bd_3f22_s03mmu_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_27/sim/bd_3f22_s03tr_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_28/sim/bd_3f22_s03sic_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_29/sim/bd_3f22_s03a2s_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_30/sim/bd_3f22_sarn_2.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_31/sim/bd_3f22_srn_2.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_32/sim/bd_3f22_s04mmu_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_33/sim/bd_3f22_s04tr_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_34/sim/bd_3f22_s04sic_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_35/sim/bd_3f22_s04a2s_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_36/sim/bd_3f22_sarn_3.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_37/sim/bd_3f22_srn_3.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_38/sim/bd_3f22_s05mmu_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_39/sim/bd_3f22_s05tr_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_40/sim/bd_3f22_s05sic_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_41/sim/bd_3f22_s05a2s_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_42/sim/bd_3f22_sarn_4.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_43/sim/bd_3f22_srn_4.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_44/sim/bd_3f22_m00s2a_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_45/sim/bd_3f22_m00arn_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_46/sim/bd_3f22_m00rn_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_47/sim/bd_3f22_m00awn_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_48/sim/bd_3f22_m00wn_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_49/sim/bd_3f22_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/901a/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_50/sim/bd_3f22_m00e_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_51/sim/bd_3f22_m01s2a_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_52/sim/bd_3f22_m01arn_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_53/sim/bd_3f22_m01rn_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_54/sim/bd_3f22_m01awn_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_55/sim/bd_3f22_m01wn_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_56/sim/bd_3f22_m01bn_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_57/sim/bd_3f22_m01e_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_58/sim/bd_3f22_m02s2a_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_59/sim/bd_3f22_m02arn_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_60/sim/bd_3f22_m02rn_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_61/sim/bd_3f22_m02awn_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_62/sim/bd_3f22_m02wn_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_63/sim/bd_3f22_m02bn_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_64/sim/bd_3f22_m02e_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_65/sim/bd_3f22_m03s2a_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_66/sim/bd_3f22_m03arn_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_67/sim/bd_3f22_m03rn_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_68/sim/bd_3f22_m03awn_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_69/sim/bd_3f22_m03wn_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_70/sim/bd_3f22_m03bn_0.sv" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/bd_0/ip/ip_71/sim/bd_3f22_m03e_0.sv" \

vlog -work axi_register_slice_v2_1_20  -v2k5 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_smartconnect_0_0/sim/jsps_half_smartconnect_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_19  -v2k5 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/60de/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_21  -v2k5 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_xbar_0/sim/jsps_half_xbar_0.v" \

vcom -work xil_defaultlib -93 \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_rst_ps7_0_50M_0/sim/jsps_half_rst_ps7_0_50M_0.vhd" \

vlog -work axi_protocol_converter_v2_1_20  -v2k5 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/c4a6/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/ec67/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/2d50/hdl" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/1ddd/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ipshared/b2d0/hdl/verilog" "+incdir+../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/ip/jsps_half_auto_pc_0/sim/jsps_half_auto_pc_0.v" \
"../../../../jsps_half.srcs/sources_1/bd/jsps_half/sim/jsps_half.v" \

vlog -work xil_defaultlib \
"glbl.v"

