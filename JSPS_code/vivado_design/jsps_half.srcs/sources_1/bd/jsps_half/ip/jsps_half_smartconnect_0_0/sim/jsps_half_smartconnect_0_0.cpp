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

#include "jsps_half_smartconnect_0_0_sc.h"

#include "jsps_half_smartconnect_0_0.h"

#include "smartconnect.h"

#include <map>
#include <string>

jsps_half_smartconnect_0_0::jsps_half_smartconnect_0_0(const sc_core::sc_module_name& nm) : jsps_half_smartconnect_0_0_sc(nm), aclk("aclk"), aresetn("aresetn"), S00_AXI_araddr("S00_AXI_araddr"), S00_AXI_arlen("S00_AXI_arlen"), S00_AXI_arsize("S00_AXI_arsize"), S00_AXI_arburst("S00_AXI_arburst"), S00_AXI_arlock("S00_AXI_arlock"), S00_AXI_arcache("S00_AXI_arcache"), S00_AXI_arprot("S00_AXI_arprot"), S00_AXI_arqos("S00_AXI_arqos"), S00_AXI_arvalid("S00_AXI_arvalid"), S00_AXI_arready("S00_AXI_arready"), S00_AXI_rdata("S00_AXI_rdata"), S00_AXI_rresp("S00_AXI_rresp"), S00_AXI_rlast("S00_AXI_rlast"), S00_AXI_rvalid("S00_AXI_rvalid"), S00_AXI_rready("S00_AXI_rready"), S01_AXI_awaddr("S01_AXI_awaddr"), S01_AXI_awlen("S01_AXI_awlen"), S01_AXI_awsize("S01_AXI_awsize"), S01_AXI_awburst("S01_AXI_awburst"), S01_AXI_awlock("S01_AXI_awlock"), S01_AXI_awcache("S01_AXI_awcache"), S01_AXI_awprot("S01_AXI_awprot"), S01_AXI_awqos("S01_AXI_awqos"), S01_AXI_awvalid("S01_AXI_awvalid"), S01_AXI_awready("S01_AXI_awready"), S01_AXI_wdata("S01_AXI_wdata"), S01_AXI_wstrb("S01_AXI_wstrb"), S01_AXI_wlast("S01_AXI_wlast"), S01_AXI_wvalid("S01_AXI_wvalid"), S01_AXI_wready("S01_AXI_wready"), S01_AXI_bresp("S01_AXI_bresp"), S01_AXI_bvalid("S01_AXI_bvalid"), S01_AXI_bready("S01_AXI_bready"), S02_AXI_araddr("S02_AXI_araddr"), S02_AXI_arlen("S02_AXI_arlen"), S02_AXI_arsize("S02_AXI_arsize"), S02_AXI_arburst("S02_AXI_arburst"), S02_AXI_arlock("S02_AXI_arlock"), S02_AXI_arcache("S02_AXI_arcache"), S02_AXI_arprot("S02_AXI_arprot"), S02_AXI_arqos("S02_AXI_arqos"), S02_AXI_arvalid("S02_AXI_arvalid"), S02_AXI_arready("S02_AXI_arready"), S02_AXI_rdata("S02_AXI_rdata"), S02_AXI_rresp("S02_AXI_rresp"), S02_AXI_rlast("S02_AXI_rlast"), S02_AXI_rvalid("S02_AXI_rvalid"), S02_AXI_rready("S02_AXI_rready"), S03_AXI_araddr("S03_AXI_araddr"), S03_AXI_arlen("S03_AXI_arlen"), S03_AXI_arsize("S03_AXI_arsize"), S03_AXI_arburst("S03_AXI_arburst"), S03_AXI_arlock("S03_AXI_arlock"), S03_AXI_arcache("S03_AXI_arcache"), S03_AXI_arprot("S03_AXI_arprot"), S03_AXI_arqos("S03_AXI_arqos"), S03_AXI_arvalid("S03_AXI_arvalid"), S03_AXI_arready("S03_AXI_arready"), S03_AXI_rdata("S03_AXI_rdata"), S03_AXI_rresp("S03_AXI_rresp"), S03_AXI_rlast("S03_AXI_rlast"), S03_AXI_rvalid("S03_AXI_rvalid"), S03_AXI_rready("S03_AXI_rready"), S04_AXI_araddr("S04_AXI_araddr"), S04_AXI_arlen("S04_AXI_arlen"), S04_AXI_arsize("S04_AXI_arsize"), S04_AXI_arburst("S04_AXI_arburst"), S04_AXI_arlock("S04_AXI_arlock"), S04_AXI_arcache("S04_AXI_arcache"), S04_AXI_arprot("S04_AXI_arprot"), S04_AXI_arqos("S04_AXI_arqos"), S04_AXI_arvalid("S04_AXI_arvalid"), S04_AXI_arready("S04_AXI_arready"), S04_AXI_rdata("S04_AXI_rdata"), S04_AXI_rresp("S04_AXI_rresp"), S04_AXI_rlast("S04_AXI_rlast"), S04_AXI_rvalid("S04_AXI_rvalid"), S04_AXI_rready("S04_AXI_rready"), S05_AXI_araddr("S05_AXI_araddr"), S05_AXI_arlen("S05_AXI_arlen"), S05_AXI_arsize("S05_AXI_arsize"), S05_AXI_arburst("S05_AXI_arburst"), S05_AXI_arlock("S05_AXI_arlock"), S05_AXI_arcache("S05_AXI_arcache"), S05_AXI_arprot("S05_AXI_arprot"), S05_AXI_arqos("S05_AXI_arqos"), S05_AXI_arvalid("S05_AXI_arvalid"), S05_AXI_arready("S05_AXI_arready"), S05_AXI_rdata("S05_AXI_rdata"), S05_AXI_rresp("S05_AXI_rresp"), S05_AXI_rlast("S05_AXI_rlast"), S05_AXI_rvalid("S05_AXI_rvalid"), S05_AXI_rready("S05_AXI_rready"), M00_AXI_awaddr("M00_AXI_awaddr"), M00_AXI_awlen("M00_AXI_awlen"), M00_AXI_awsize("M00_AXI_awsize"), M00_AXI_awburst("M00_AXI_awburst"), M00_AXI_awlock("M00_AXI_awlock"), M00_AXI_awcache("M00_AXI_awcache"), M00_AXI_awprot("M00_AXI_awprot"), M00_AXI_awqos("M00_AXI_awqos"), M00_AXI_awvalid("M00_AXI_awvalid"), M00_AXI_awready("M00_AXI_awready"), M00_AXI_wdata("M00_AXI_wdata"), M00_AXI_wstrb("M00_AXI_wstrb"), M00_AXI_wlast("M00_AXI_wlast"), M00_AXI_wvalid("M00_AXI_wvalid"), M00_AXI_wready("M00_AXI_wready"), M00_AXI_bresp("M00_AXI_bresp"), M00_AXI_bvalid("M00_AXI_bvalid"), M00_AXI_bready("M00_AXI_bready"), M00_AXI_araddr("M00_AXI_araddr"), M00_AXI_arlen("M00_AXI_arlen"), M00_AXI_arsize("M00_AXI_arsize"), M00_AXI_arburst("M00_AXI_arburst"), M00_AXI_arlock("M00_AXI_arlock"), M00_AXI_arcache("M00_AXI_arcache"), M00_AXI_arprot("M00_AXI_arprot"), M00_AXI_arqos("M00_AXI_arqos"), M00_AXI_arvalid("M00_AXI_arvalid"), M00_AXI_arready("M00_AXI_arready"), M00_AXI_rdata("M00_AXI_rdata"), M00_AXI_rresp("M00_AXI_rresp"), M00_AXI_rlast("M00_AXI_rlast"), M00_AXI_rvalid("M00_AXI_rvalid"), M00_AXI_rready("M00_AXI_rready"), M01_AXI_awaddr("M01_AXI_awaddr"), M01_AXI_awlen("M01_AXI_awlen"), M01_AXI_awsize("M01_AXI_awsize"), M01_AXI_awburst("M01_AXI_awburst"), M01_AXI_awlock("M01_AXI_awlock"), M01_AXI_awcache("M01_AXI_awcache"), M01_AXI_awprot("M01_AXI_awprot"), M01_AXI_awqos("M01_AXI_awqos"), M01_AXI_awvalid("M01_AXI_awvalid"), M01_AXI_awready("M01_AXI_awready"), M01_AXI_wdata("M01_AXI_wdata"), M01_AXI_wstrb("M01_AXI_wstrb"), M01_AXI_wlast("M01_AXI_wlast"), M01_AXI_wvalid("M01_AXI_wvalid"), M01_AXI_wready("M01_AXI_wready"), M01_AXI_bresp("M01_AXI_bresp"), M01_AXI_bvalid("M01_AXI_bvalid"), M01_AXI_bready("M01_AXI_bready"), M01_AXI_araddr("M01_AXI_araddr"), M01_AXI_arlen("M01_AXI_arlen"), M01_AXI_arsize("M01_AXI_arsize"), M01_AXI_arburst("M01_AXI_arburst"), M01_AXI_arlock("M01_AXI_arlock"), M01_AXI_arcache("M01_AXI_arcache"), M01_AXI_arprot("M01_AXI_arprot"), M01_AXI_arqos("M01_AXI_arqos"), M01_AXI_arvalid("M01_AXI_arvalid"), M01_AXI_arready("M01_AXI_arready"), M01_AXI_rdata("M01_AXI_rdata"), M01_AXI_rresp("M01_AXI_rresp"), M01_AXI_rlast("M01_AXI_rlast"), M01_AXI_rvalid("M01_AXI_rvalid"), M01_AXI_rready("M01_AXI_rready"), M02_AXI_awaddr("M02_AXI_awaddr"), M02_AXI_awlen("M02_AXI_awlen"), M02_AXI_awsize("M02_AXI_awsize"), M02_AXI_awburst("M02_AXI_awburst"), M02_AXI_awlock("M02_AXI_awlock"), M02_AXI_awcache("M02_AXI_awcache"), M02_AXI_awprot("M02_AXI_awprot"), M02_AXI_awqos("M02_AXI_awqos"), M02_AXI_awvalid("M02_AXI_awvalid"), M02_AXI_awready("M02_AXI_awready"), M02_AXI_wdata("M02_AXI_wdata"), M02_AXI_wstrb("M02_AXI_wstrb"), M02_AXI_wlast("M02_AXI_wlast"), M02_AXI_wvalid("M02_AXI_wvalid"), M02_AXI_wready("M02_AXI_wready"), M02_AXI_bresp("M02_AXI_bresp"), M02_AXI_bvalid("M02_AXI_bvalid"), M02_AXI_bready("M02_AXI_bready"), M02_AXI_araddr("M02_AXI_araddr"), M02_AXI_arlen("M02_AXI_arlen"), M02_AXI_arsize("M02_AXI_arsize"), M02_AXI_arburst("M02_AXI_arburst"), M02_AXI_arlock("M02_AXI_arlock"), M02_AXI_arcache("M02_AXI_arcache"), M02_AXI_arprot("M02_AXI_arprot"), M02_AXI_arqos("M02_AXI_arqos"), M02_AXI_arvalid("M02_AXI_arvalid"), M02_AXI_arready("M02_AXI_arready"), M02_AXI_rdata("M02_AXI_rdata"), M02_AXI_rresp("M02_AXI_rresp"), M02_AXI_rlast("M02_AXI_rlast"), M02_AXI_rvalid("M02_AXI_rvalid"), M02_AXI_rready("M02_AXI_rready"), M03_AXI_awaddr("M03_AXI_awaddr"), M03_AXI_awlen("M03_AXI_awlen"), M03_AXI_awsize("M03_AXI_awsize"), M03_AXI_awburst("M03_AXI_awburst"), M03_AXI_awlock("M03_AXI_awlock"), M03_AXI_awcache("M03_AXI_awcache"), M03_AXI_awprot("M03_AXI_awprot"), M03_AXI_awqos("M03_AXI_awqos"), M03_AXI_awvalid("M03_AXI_awvalid"), M03_AXI_awready("M03_AXI_awready"), M03_AXI_wdata("M03_AXI_wdata"), M03_AXI_wstrb("M03_AXI_wstrb"), M03_AXI_wlast("M03_AXI_wlast"), M03_AXI_wvalid("M03_AXI_wvalid"), M03_AXI_wready("M03_AXI_wready"), M03_AXI_bresp("M03_AXI_bresp"), M03_AXI_bvalid("M03_AXI_bvalid"), M03_AXI_bready("M03_AXI_bready"), M03_AXI_araddr("M03_AXI_araddr"), M03_AXI_arlen("M03_AXI_arlen"), M03_AXI_arsize("M03_AXI_arsize"), M03_AXI_arburst("M03_AXI_arburst"), M03_AXI_arlock("M03_AXI_arlock"), M03_AXI_arcache("M03_AXI_arcache"), M03_AXI_arprot("M03_AXI_arprot"), M03_AXI_arqos("M03_AXI_arqos"), M03_AXI_arvalid("M03_AXI_arvalid"), M03_AXI_arready("M03_AXI_arready"), M03_AXI_rdata("M03_AXI_rdata"), M03_AXI_rresp("M03_AXI_rresp"), M03_AXI_rlast("M03_AXI_rlast"), M03_AXI_rvalid("M03_AXI_rvalid"), M03_AXI_rready("M03_AXI_rready")
{

  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_S00_AXI_arlock_converter = NULL;
  mp_S01_AXI_transactor = NULL;
  mp_S01_AXI_awlock_converter = NULL;
  mp_S02_AXI_transactor = NULL;
  mp_S02_AXI_arlock_converter = NULL;
  mp_S03_AXI_transactor = NULL;
  mp_S03_AXI_arlock_converter = NULL;
  mp_S04_AXI_transactor = NULL;
  mp_S04_AXI_arlock_converter = NULL;
  mp_S05_AXI_transactor = NULL;
  mp_S05_AXI_arlock_converter = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_M00_AXI_awlen_converter = NULL;
  mp_M00_AXI_awlock_converter = NULL;
  mp_M00_AXI_arlen_converter = NULL;
  mp_M00_AXI_arlock_converter = NULL;
  mp_M01_AXI_transactor = NULL;
  mp_M01_AXI_awlen_converter = NULL;
  mp_M01_AXI_awlock_converter = NULL;
  mp_M01_AXI_arlen_converter = NULL;
  mp_M01_AXI_arlock_converter = NULL;
  mp_M02_AXI_transactor = NULL;
  mp_M02_AXI_awlen_converter = NULL;
  mp_M02_AXI_awlock_converter = NULL;
  mp_M02_AXI_arlen_converter = NULL;
  mp_M02_AXI_arlock_converter = NULL;
  mp_M03_AXI_transactor = NULL;
  mp_M03_AXI_awlen_converter = NULL;
  mp_M03_AXI_awlock_converter = NULL;
  mp_M03_AXI_arlen_converter = NULL;
  mp_M03_AXI_arlock_converter = NULL;
}

void jsps_half_smartconnect_0_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("jsps_half_smartconnect_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "50000000");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "jsps_half_processing_system7_0_0_FCLK_CLK0");
    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);
    mp_S00_AXI_transactor->ARADDR(S00_AXI_araddr);
    mp_S00_AXI_transactor->ARLEN(S00_AXI_arlen);
    mp_S00_AXI_transactor->ARSIZE(S00_AXI_arsize);
    mp_S00_AXI_transactor->ARBURST(S00_AXI_arburst);
    mp_S00_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_arlock_converter");
    mp_S00_AXI_arlock_converter->vector_in(S00_AXI_arlock);
    mp_S00_AXI_arlock_converter->scalar_out(m_S00_AXI_arlock_converter_signal);
    mp_S00_AXI_transactor->ARLOCK(m_S00_AXI_arlock_converter_signal);
    mp_S00_AXI_transactor->ARCACHE(S00_AXI_arcache);
    mp_S00_AXI_transactor->ARPROT(S00_AXI_arprot);
    mp_S00_AXI_transactor->ARQOS(S00_AXI_arqos);
    mp_S00_AXI_transactor->ARVALID(S00_AXI_arvalid);
    mp_S00_AXI_transactor->ARREADY(S00_AXI_arready);
    mp_S00_AXI_transactor->RDATA(S00_AXI_rdata);
    mp_S00_AXI_transactor->RRESP(S00_AXI_rresp);
    mp_S00_AXI_transactor->RLAST(S00_AXI_rlast);
    mp_S00_AXI_transactor->RVALID(S00_AXI_rvalid);
    mp_S00_AXI_transactor->RREADY(S00_AXI_rready);
    mp_S00_AXI_transactor->CLK(aclk);
    m_S00_AXI_transactor_rst_signal.write(1);
    mp_S00_AXI_transactor->RST(m_S00_AXI_transactor_rst_signal);

    mp_impl->S00_AXI_tlm_aximm_read_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->S00_AXI_tlm_aximm_write_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  }
  // configure 'S01_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("jsps_half_smartconnect_0_0", "S01_AXI_TLM_MODE") != 1)
  {
    xsc::common_cpp::properties S01_AXI_transactor_param_props;
    S01_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S01_AXI_transactor_param_props.addLong("FREQ_HZ", "50000000");
    S01_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S01_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    S01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S01_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    S01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RRESP", "0");
    S01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "WRITE_ONLY");
    S01_AXI_transactor_param_props.addString("CLK_DOMAIN", "jsps_half_processing_system7_0_0_FCLK_CLK0");
    mp_S01_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S01_AXI_transactor", S01_AXI_transactor_param_props);
    mp_S01_AXI_transactor->AWADDR(S01_AXI_awaddr);
    mp_S01_AXI_transactor->AWLEN(S01_AXI_awlen);
    mp_S01_AXI_transactor->AWSIZE(S01_AXI_awsize);
    mp_S01_AXI_transactor->AWBURST(S01_AXI_awburst);
    mp_S01_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_awlock_converter");
    mp_S01_AXI_awlock_converter->vector_in(S01_AXI_awlock);
    mp_S01_AXI_awlock_converter->scalar_out(m_S01_AXI_awlock_converter_signal);
    mp_S01_AXI_transactor->AWLOCK(m_S01_AXI_awlock_converter_signal);
    mp_S01_AXI_transactor->AWCACHE(S01_AXI_awcache);
    mp_S01_AXI_transactor->AWPROT(S01_AXI_awprot);
    mp_S01_AXI_transactor->AWQOS(S01_AXI_awqos);
    mp_S01_AXI_transactor->AWVALID(S01_AXI_awvalid);
    mp_S01_AXI_transactor->AWREADY(S01_AXI_awready);
    mp_S01_AXI_transactor->WDATA(S01_AXI_wdata);
    mp_S01_AXI_transactor->WSTRB(S01_AXI_wstrb);
    mp_S01_AXI_transactor->WLAST(S01_AXI_wlast);
    mp_S01_AXI_transactor->WVALID(S01_AXI_wvalid);
    mp_S01_AXI_transactor->WREADY(S01_AXI_wready);
    mp_S01_AXI_transactor->BRESP(S01_AXI_bresp);
    mp_S01_AXI_transactor->BVALID(S01_AXI_bvalid);
    mp_S01_AXI_transactor->BREADY(S01_AXI_bready);
    mp_S01_AXI_transactor->CLK(aclk);
    m_S01_AXI_transactor_rst_signal.write(1);
    mp_S01_AXI_transactor->RST(m_S01_AXI_transactor_rst_signal);

    mp_impl->S01_AXI_tlm_aximm_read_socket->bind(*(mp_S01_AXI_transactor->rd_socket));
    mp_impl->S01_AXI_tlm_aximm_write_socket->bind(*(mp_S01_AXI_transactor->wr_socket));
  }
  // configure 'S02_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("jsps_half_smartconnect_0_0", "S02_AXI_TLM_MODE") != 1)
  {
    xsc::common_cpp::properties S02_AXI_transactor_param_props;
    S02_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S02_AXI_transactor_param_props.addLong("FREQ_HZ", "50000000");
    S02_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S02_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    S02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S02_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S02_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    S02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S02_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S02_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S02_AXI_transactor_param_props.addString("CLK_DOMAIN", "jsps_half_processing_system7_0_0_FCLK_CLK0");
    mp_S02_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S02_AXI_transactor", S02_AXI_transactor_param_props);
    mp_S02_AXI_transactor->ARADDR(S02_AXI_araddr);
    mp_S02_AXI_transactor->ARLEN(S02_AXI_arlen);
    mp_S02_AXI_transactor->ARSIZE(S02_AXI_arsize);
    mp_S02_AXI_transactor->ARBURST(S02_AXI_arburst);
    mp_S02_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_arlock_converter");
    mp_S02_AXI_arlock_converter->vector_in(S02_AXI_arlock);
    mp_S02_AXI_arlock_converter->scalar_out(m_S02_AXI_arlock_converter_signal);
    mp_S02_AXI_transactor->ARLOCK(m_S02_AXI_arlock_converter_signal);
    mp_S02_AXI_transactor->ARCACHE(S02_AXI_arcache);
    mp_S02_AXI_transactor->ARPROT(S02_AXI_arprot);
    mp_S02_AXI_transactor->ARQOS(S02_AXI_arqos);
    mp_S02_AXI_transactor->ARVALID(S02_AXI_arvalid);
    mp_S02_AXI_transactor->ARREADY(S02_AXI_arready);
    mp_S02_AXI_transactor->RDATA(S02_AXI_rdata);
    mp_S02_AXI_transactor->RRESP(S02_AXI_rresp);
    mp_S02_AXI_transactor->RLAST(S02_AXI_rlast);
    mp_S02_AXI_transactor->RVALID(S02_AXI_rvalid);
    mp_S02_AXI_transactor->RREADY(S02_AXI_rready);
    mp_S02_AXI_transactor->CLK(aclk);
    m_S02_AXI_transactor_rst_signal.write(1);
    mp_S02_AXI_transactor->RST(m_S02_AXI_transactor_rst_signal);

    mp_impl->S02_AXI_tlm_aximm_read_socket->bind(*(mp_S02_AXI_transactor->rd_socket));
    mp_impl->S02_AXI_tlm_aximm_write_socket->bind(*(mp_S02_AXI_transactor->wr_socket));
  }
  // configure 'S03_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("jsps_half_smartconnect_0_0", "S03_AXI_TLM_MODE") != 1)
  {
    xsc::common_cpp::properties S03_AXI_transactor_param_props;
    S03_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S03_AXI_transactor_param_props.addLong("FREQ_HZ", "50000000");
    S03_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S03_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S03_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    S03_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S03_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S03_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    S03_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S03_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S03_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S03_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S03_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S03_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S03_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S03_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S03_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S03_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S03_AXI_transactor_param_props.addString("CLK_DOMAIN", "jsps_half_processing_system7_0_0_FCLK_CLK0");
    mp_S03_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S03_AXI_transactor", S03_AXI_transactor_param_props);
    mp_S03_AXI_transactor->ARADDR(S03_AXI_araddr);
    mp_S03_AXI_transactor->ARLEN(S03_AXI_arlen);
    mp_S03_AXI_transactor->ARSIZE(S03_AXI_arsize);
    mp_S03_AXI_transactor->ARBURST(S03_AXI_arburst);
    mp_S03_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_arlock_converter");
    mp_S03_AXI_arlock_converter->vector_in(S03_AXI_arlock);
    mp_S03_AXI_arlock_converter->scalar_out(m_S03_AXI_arlock_converter_signal);
    mp_S03_AXI_transactor->ARLOCK(m_S03_AXI_arlock_converter_signal);
    mp_S03_AXI_transactor->ARCACHE(S03_AXI_arcache);
    mp_S03_AXI_transactor->ARPROT(S03_AXI_arprot);
    mp_S03_AXI_transactor->ARQOS(S03_AXI_arqos);
    mp_S03_AXI_transactor->ARVALID(S03_AXI_arvalid);
    mp_S03_AXI_transactor->ARREADY(S03_AXI_arready);
    mp_S03_AXI_transactor->RDATA(S03_AXI_rdata);
    mp_S03_AXI_transactor->RRESP(S03_AXI_rresp);
    mp_S03_AXI_transactor->RLAST(S03_AXI_rlast);
    mp_S03_AXI_transactor->RVALID(S03_AXI_rvalid);
    mp_S03_AXI_transactor->RREADY(S03_AXI_rready);
    mp_S03_AXI_transactor->CLK(aclk);
    m_S03_AXI_transactor_rst_signal.write(1);
    mp_S03_AXI_transactor->RST(m_S03_AXI_transactor_rst_signal);

    mp_impl->S03_AXI_tlm_aximm_read_socket->bind(*(mp_S03_AXI_transactor->rd_socket));
    mp_impl->S03_AXI_tlm_aximm_write_socket->bind(*(mp_S03_AXI_transactor->wr_socket));
  }
  // configure 'S04_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("jsps_half_smartconnect_0_0", "S04_AXI_TLM_MODE") != 1)
  {
    xsc::common_cpp::properties S04_AXI_transactor_param_props;
    S04_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S04_AXI_transactor_param_props.addLong("FREQ_HZ", "50000000");
    S04_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S04_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S04_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    S04_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S04_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S04_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    S04_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S04_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S04_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S04_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S04_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S04_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S04_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S04_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S04_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S04_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S04_AXI_transactor_param_props.addString("CLK_DOMAIN", "jsps_half_processing_system7_0_0_FCLK_CLK0");
    mp_S04_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S04_AXI_transactor", S04_AXI_transactor_param_props);
    mp_S04_AXI_transactor->ARADDR(S04_AXI_araddr);
    mp_S04_AXI_transactor->ARLEN(S04_AXI_arlen);
    mp_S04_AXI_transactor->ARSIZE(S04_AXI_arsize);
    mp_S04_AXI_transactor->ARBURST(S04_AXI_arburst);
    mp_S04_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_arlock_converter");
    mp_S04_AXI_arlock_converter->vector_in(S04_AXI_arlock);
    mp_S04_AXI_arlock_converter->scalar_out(m_S04_AXI_arlock_converter_signal);
    mp_S04_AXI_transactor->ARLOCK(m_S04_AXI_arlock_converter_signal);
    mp_S04_AXI_transactor->ARCACHE(S04_AXI_arcache);
    mp_S04_AXI_transactor->ARPROT(S04_AXI_arprot);
    mp_S04_AXI_transactor->ARQOS(S04_AXI_arqos);
    mp_S04_AXI_transactor->ARVALID(S04_AXI_arvalid);
    mp_S04_AXI_transactor->ARREADY(S04_AXI_arready);
    mp_S04_AXI_transactor->RDATA(S04_AXI_rdata);
    mp_S04_AXI_transactor->RRESP(S04_AXI_rresp);
    mp_S04_AXI_transactor->RLAST(S04_AXI_rlast);
    mp_S04_AXI_transactor->RVALID(S04_AXI_rvalid);
    mp_S04_AXI_transactor->RREADY(S04_AXI_rready);
    mp_S04_AXI_transactor->CLK(aclk);
    m_S04_AXI_transactor_rst_signal.write(1);
    mp_S04_AXI_transactor->RST(m_S04_AXI_transactor_rst_signal);

    mp_impl->S04_AXI_tlm_aximm_read_socket->bind(*(mp_S04_AXI_transactor->rd_socket));
    mp_impl->S04_AXI_tlm_aximm_write_socket->bind(*(mp_S04_AXI_transactor->wr_socket));
  }
  // configure 'S05_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("jsps_half_smartconnect_0_0", "S05_AXI_TLM_MODE") != 1)
  {
    xsc::common_cpp::properties S05_AXI_transactor_param_props;
    S05_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S05_AXI_transactor_param_props.addLong("FREQ_HZ", "50000000");
    S05_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S05_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S05_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    S05_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S05_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S05_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    S05_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S05_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S05_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S05_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S05_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S05_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S05_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S05_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S05_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S05_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S05_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S05_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S05_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S05_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S05_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S05_AXI_transactor_param_props.addString("CLK_DOMAIN", "jsps_half_processing_system7_0_0_FCLK_CLK0");
    mp_S05_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S05_AXI_transactor", S05_AXI_transactor_param_props);
    mp_S05_AXI_transactor->ARADDR(S05_AXI_araddr);
    mp_S05_AXI_transactor->ARLEN(S05_AXI_arlen);
    mp_S05_AXI_transactor->ARSIZE(S05_AXI_arsize);
    mp_S05_AXI_transactor->ARBURST(S05_AXI_arburst);
    mp_S05_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S05_AXI_arlock_converter");
    mp_S05_AXI_arlock_converter->vector_in(S05_AXI_arlock);
    mp_S05_AXI_arlock_converter->scalar_out(m_S05_AXI_arlock_converter_signal);
    mp_S05_AXI_transactor->ARLOCK(m_S05_AXI_arlock_converter_signal);
    mp_S05_AXI_transactor->ARCACHE(S05_AXI_arcache);
    mp_S05_AXI_transactor->ARPROT(S05_AXI_arprot);
    mp_S05_AXI_transactor->ARQOS(S05_AXI_arqos);
    mp_S05_AXI_transactor->ARVALID(S05_AXI_arvalid);
    mp_S05_AXI_transactor->ARREADY(S05_AXI_arready);
    mp_S05_AXI_transactor->RDATA(S05_AXI_rdata);
    mp_S05_AXI_transactor->RRESP(S05_AXI_rresp);
    mp_S05_AXI_transactor->RLAST(S05_AXI_rlast);
    mp_S05_AXI_transactor->RVALID(S05_AXI_rvalid);
    mp_S05_AXI_transactor->RREADY(S05_AXI_rready);
    mp_S05_AXI_transactor->CLK(aclk);
    m_S05_AXI_transactor_rst_signal.write(1);
    mp_S05_AXI_transactor->RST(m_S05_AXI_transactor_rst_signal);

    mp_impl->S05_AXI_tlm_aximm_read_socket->bind(*(mp_S05_AXI_transactor->rd_socket));
    mp_impl->S05_AXI_tlm_aximm_write_socket->bind(*(mp_S05_AXI_transactor->wr_socket));
  }
  // configure 'M00_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("jsps_half_smartconnect_0_0", "M00_AXI_TLM_MODE") != 1)
  {
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "64");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "50000000");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI3");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "jsps_half_processing_system7_0_0_FCLK_CLK0");
    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<64,32,1,1,1,1,1,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);
    mp_M00_AXI_transactor->AWADDR(M00_AXI_awaddr);
    mp_M00_AXI_awlen_converter = new xsc::common::vector2vector_converter<8,4>("M00_AXI_awlen_converter");
    mp_M00_AXI_awlen_converter->vector_in(m_M00_AXI_awlen_converter_signal);
    mp_M00_AXI_awlen_converter->vector_out(M00_AXI_awlen);
    mp_M00_AXI_transactor->AWLEN(m_M00_AXI_awlen_converter_signal);
    mp_M00_AXI_transactor->AWSIZE(M00_AXI_awsize);
    mp_M00_AXI_transactor->AWBURST(M00_AXI_awburst);
    mp_M00_AXI_awlock_converter = new xsc::common::scalar2vectorN_converter<2>("M00_AXI_awlock_converter");
    mp_M00_AXI_awlock_converter->scalar_in(m_M00_AXI_awlock_converter_signal);
    mp_M00_AXI_awlock_converter->vector_out(M00_AXI_awlock);
    mp_M00_AXI_transactor->AWLOCK(m_M00_AXI_awlock_converter_signal);
    mp_M00_AXI_transactor->AWCACHE(M00_AXI_awcache);
    mp_M00_AXI_transactor->AWPROT(M00_AXI_awprot);
    mp_M00_AXI_transactor->AWQOS(M00_AXI_awqos);
    mp_M00_AXI_transactor->AWVALID(M00_AXI_awvalid);
    mp_M00_AXI_transactor->AWREADY(M00_AXI_awready);
    mp_M00_AXI_transactor->WDATA(M00_AXI_wdata);
    mp_M00_AXI_transactor->WSTRB(M00_AXI_wstrb);
    mp_M00_AXI_transactor->WLAST(M00_AXI_wlast);
    mp_M00_AXI_transactor->WVALID(M00_AXI_wvalid);
    mp_M00_AXI_transactor->WREADY(M00_AXI_wready);
    mp_M00_AXI_transactor->BRESP(M00_AXI_bresp);
    mp_M00_AXI_transactor->BVALID(M00_AXI_bvalid);
    mp_M00_AXI_transactor->BREADY(M00_AXI_bready);
    mp_M00_AXI_transactor->ARADDR(M00_AXI_araddr);
    mp_M00_AXI_arlen_converter = new xsc::common::vector2vector_converter<8,4>("M00_AXI_arlen_converter");
    mp_M00_AXI_arlen_converter->vector_in(m_M00_AXI_arlen_converter_signal);
    mp_M00_AXI_arlen_converter->vector_out(M00_AXI_arlen);
    mp_M00_AXI_transactor->ARLEN(m_M00_AXI_arlen_converter_signal);
    mp_M00_AXI_transactor->ARSIZE(M00_AXI_arsize);
    mp_M00_AXI_transactor->ARBURST(M00_AXI_arburst);
    mp_M00_AXI_arlock_converter = new xsc::common::scalar2vectorN_converter<2>("M00_AXI_arlock_converter");
    mp_M00_AXI_arlock_converter->scalar_in(m_M00_AXI_arlock_converter_signal);
    mp_M00_AXI_arlock_converter->vector_out(M00_AXI_arlock);
    mp_M00_AXI_transactor->ARLOCK(m_M00_AXI_arlock_converter_signal);
    mp_M00_AXI_transactor->ARCACHE(M00_AXI_arcache);
    mp_M00_AXI_transactor->ARPROT(M00_AXI_arprot);
    mp_M00_AXI_transactor->ARQOS(M00_AXI_arqos);
    mp_M00_AXI_transactor->ARVALID(M00_AXI_arvalid);
    mp_M00_AXI_transactor->ARREADY(M00_AXI_arready);
    mp_M00_AXI_transactor->RDATA(M00_AXI_rdata);
    mp_M00_AXI_transactor->RRESP(M00_AXI_rresp);
    mp_M00_AXI_transactor->RLAST(M00_AXI_rlast);
    mp_M00_AXI_transactor->RVALID(M00_AXI_rvalid);
    mp_M00_AXI_transactor->RREADY(M00_AXI_rready);
    mp_M00_AXI_transactor->CLK(aclk);
    m_M00_AXI_transactor_rst_signal.write(1);
    mp_M00_AXI_transactor->RST(m_M00_AXI_transactor_rst_signal);

    mp_impl->M00_AXI_tlm_aximm_read_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->M00_AXI_tlm_aximm_write_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  }
  // configure 'M01_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("jsps_half_smartconnect_0_0", "M01_AXI_TLM_MODE") != 1)
  {
    xsc::common_cpp::properties M01_AXI_transactor_param_props;
    M01_AXI_transactor_param_props.addLong("DATA_WIDTH", "64");
    M01_AXI_transactor_param_props.addLong("FREQ_HZ", "50000000");
    M01_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    M01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M01_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M01_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M01_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    M01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    M01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M01_AXI_transactor_param_props.addString("PROTOCOL", "AXI3");
    M01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M01_AXI_transactor_param_props.addString("CLK_DOMAIN", "jsps_half_processing_system7_0_0_FCLK_CLK0");
    mp_M01_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<64,32,1,1,1,1,1,1>("M01_AXI_transactor", M01_AXI_transactor_param_props);
    mp_M01_AXI_transactor->AWADDR(M01_AXI_awaddr);
    mp_M01_AXI_awlen_converter = new xsc::common::vector2vector_converter<8,4>("M01_AXI_awlen_converter");
    mp_M01_AXI_awlen_converter->vector_in(m_M01_AXI_awlen_converter_signal);
    mp_M01_AXI_awlen_converter->vector_out(M01_AXI_awlen);
    mp_M01_AXI_transactor->AWLEN(m_M01_AXI_awlen_converter_signal);
    mp_M01_AXI_transactor->AWSIZE(M01_AXI_awsize);
    mp_M01_AXI_transactor->AWBURST(M01_AXI_awburst);
    mp_M01_AXI_awlock_converter = new xsc::common::scalar2vectorN_converter<2>("M01_AXI_awlock_converter");
    mp_M01_AXI_awlock_converter->scalar_in(m_M01_AXI_awlock_converter_signal);
    mp_M01_AXI_awlock_converter->vector_out(M01_AXI_awlock);
    mp_M01_AXI_transactor->AWLOCK(m_M01_AXI_awlock_converter_signal);
    mp_M01_AXI_transactor->AWCACHE(M01_AXI_awcache);
    mp_M01_AXI_transactor->AWPROT(M01_AXI_awprot);
    mp_M01_AXI_transactor->AWQOS(M01_AXI_awqos);
    mp_M01_AXI_transactor->AWVALID(M01_AXI_awvalid);
    mp_M01_AXI_transactor->AWREADY(M01_AXI_awready);
    mp_M01_AXI_transactor->WDATA(M01_AXI_wdata);
    mp_M01_AXI_transactor->WSTRB(M01_AXI_wstrb);
    mp_M01_AXI_transactor->WLAST(M01_AXI_wlast);
    mp_M01_AXI_transactor->WVALID(M01_AXI_wvalid);
    mp_M01_AXI_transactor->WREADY(M01_AXI_wready);
    mp_M01_AXI_transactor->BRESP(M01_AXI_bresp);
    mp_M01_AXI_transactor->BVALID(M01_AXI_bvalid);
    mp_M01_AXI_transactor->BREADY(M01_AXI_bready);
    mp_M01_AXI_transactor->ARADDR(M01_AXI_araddr);
    mp_M01_AXI_arlen_converter = new xsc::common::vector2vector_converter<8,4>("M01_AXI_arlen_converter");
    mp_M01_AXI_arlen_converter->vector_in(m_M01_AXI_arlen_converter_signal);
    mp_M01_AXI_arlen_converter->vector_out(M01_AXI_arlen);
    mp_M01_AXI_transactor->ARLEN(m_M01_AXI_arlen_converter_signal);
    mp_M01_AXI_transactor->ARSIZE(M01_AXI_arsize);
    mp_M01_AXI_transactor->ARBURST(M01_AXI_arburst);
    mp_M01_AXI_arlock_converter = new xsc::common::scalar2vectorN_converter<2>("M01_AXI_arlock_converter");
    mp_M01_AXI_arlock_converter->scalar_in(m_M01_AXI_arlock_converter_signal);
    mp_M01_AXI_arlock_converter->vector_out(M01_AXI_arlock);
    mp_M01_AXI_transactor->ARLOCK(m_M01_AXI_arlock_converter_signal);
    mp_M01_AXI_transactor->ARCACHE(M01_AXI_arcache);
    mp_M01_AXI_transactor->ARPROT(M01_AXI_arprot);
    mp_M01_AXI_transactor->ARQOS(M01_AXI_arqos);
    mp_M01_AXI_transactor->ARVALID(M01_AXI_arvalid);
    mp_M01_AXI_transactor->ARREADY(M01_AXI_arready);
    mp_M01_AXI_transactor->RDATA(M01_AXI_rdata);
    mp_M01_AXI_transactor->RRESP(M01_AXI_rresp);
    mp_M01_AXI_transactor->RLAST(M01_AXI_rlast);
    mp_M01_AXI_transactor->RVALID(M01_AXI_rvalid);
    mp_M01_AXI_transactor->RREADY(M01_AXI_rready);
    mp_M01_AXI_transactor->CLK(aclk);
    m_M01_AXI_transactor_rst_signal.write(1);
    mp_M01_AXI_transactor->RST(m_M01_AXI_transactor_rst_signal);

    mp_impl->M01_AXI_tlm_aximm_read_socket->bind(*(mp_M01_AXI_transactor->rd_socket));
    mp_impl->M01_AXI_tlm_aximm_write_socket->bind(*(mp_M01_AXI_transactor->wr_socket));
  }
  // configure 'M02_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("jsps_half_smartconnect_0_0", "M02_AXI_TLM_MODE") != 1)
  {
    xsc::common_cpp::properties M02_AXI_transactor_param_props;
    M02_AXI_transactor_param_props.addLong("DATA_WIDTH", "64");
    M02_AXI_transactor_param_props.addLong("FREQ_HZ", "50000000");
    M02_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    M02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M02_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M02_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M02_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M02_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M02_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    M02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    M02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M02_AXI_transactor_param_props.addString("PROTOCOL", "AXI3");
    M02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M02_AXI_transactor_param_props.addString("CLK_DOMAIN", "jsps_half_processing_system7_0_0_FCLK_CLK0");
    mp_M02_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<64,32,1,1,1,1,1,1>("M02_AXI_transactor", M02_AXI_transactor_param_props);
    mp_M02_AXI_transactor->AWADDR(M02_AXI_awaddr);
    mp_M02_AXI_awlen_converter = new xsc::common::vector2vector_converter<8,4>("M02_AXI_awlen_converter");
    mp_M02_AXI_awlen_converter->vector_in(m_M02_AXI_awlen_converter_signal);
    mp_M02_AXI_awlen_converter->vector_out(M02_AXI_awlen);
    mp_M02_AXI_transactor->AWLEN(m_M02_AXI_awlen_converter_signal);
    mp_M02_AXI_transactor->AWSIZE(M02_AXI_awsize);
    mp_M02_AXI_transactor->AWBURST(M02_AXI_awburst);
    mp_M02_AXI_awlock_converter = new xsc::common::scalar2vectorN_converter<2>("M02_AXI_awlock_converter");
    mp_M02_AXI_awlock_converter->scalar_in(m_M02_AXI_awlock_converter_signal);
    mp_M02_AXI_awlock_converter->vector_out(M02_AXI_awlock);
    mp_M02_AXI_transactor->AWLOCK(m_M02_AXI_awlock_converter_signal);
    mp_M02_AXI_transactor->AWCACHE(M02_AXI_awcache);
    mp_M02_AXI_transactor->AWPROT(M02_AXI_awprot);
    mp_M02_AXI_transactor->AWQOS(M02_AXI_awqos);
    mp_M02_AXI_transactor->AWVALID(M02_AXI_awvalid);
    mp_M02_AXI_transactor->AWREADY(M02_AXI_awready);
    mp_M02_AXI_transactor->WDATA(M02_AXI_wdata);
    mp_M02_AXI_transactor->WSTRB(M02_AXI_wstrb);
    mp_M02_AXI_transactor->WLAST(M02_AXI_wlast);
    mp_M02_AXI_transactor->WVALID(M02_AXI_wvalid);
    mp_M02_AXI_transactor->WREADY(M02_AXI_wready);
    mp_M02_AXI_transactor->BRESP(M02_AXI_bresp);
    mp_M02_AXI_transactor->BVALID(M02_AXI_bvalid);
    mp_M02_AXI_transactor->BREADY(M02_AXI_bready);
    mp_M02_AXI_transactor->ARADDR(M02_AXI_araddr);
    mp_M02_AXI_arlen_converter = new xsc::common::vector2vector_converter<8,4>("M02_AXI_arlen_converter");
    mp_M02_AXI_arlen_converter->vector_in(m_M02_AXI_arlen_converter_signal);
    mp_M02_AXI_arlen_converter->vector_out(M02_AXI_arlen);
    mp_M02_AXI_transactor->ARLEN(m_M02_AXI_arlen_converter_signal);
    mp_M02_AXI_transactor->ARSIZE(M02_AXI_arsize);
    mp_M02_AXI_transactor->ARBURST(M02_AXI_arburst);
    mp_M02_AXI_arlock_converter = new xsc::common::scalar2vectorN_converter<2>("M02_AXI_arlock_converter");
    mp_M02_AXI_arlock_converter->scalar_in(m_M02_AXI_arlock_converter_signal);
    mp_M02_AXI_arlock_converter->vector_out(M02_AXI_arlock);
    mp_M02_AXI_transactor->ARLOCK(m_M02_AXI_arlock_converter_signal);
    mp_M02_AXI_transactor->ARCACHE(M02_AXI_arcache);
    mp_M02_AXI_transactor->ARPROT(M02_AXI_arprot);
    mp_M02_AXI_transactor->ARQOS(M02_AXI_arqos);
    mp_M02_AXI_transactor->ARVALID(M02_AXI_arvalid);
    mp_M02_AXI_transactor->ARREADY(M02_AXI_arready);
    mp_M02_AXI_transactor->RDATA(M02_AXI_rdata);
    mp_M02_AXI_transactor->RRESP(M02_AXI_rresp);
    mp_M02_AXI_transactor->RLAST(M02_AXI_rlast);
    mp_M02_AXI_transactor->RVALID(M02_AXI_rvalid);
    mp_M02_AXI_transactor->RREADY(M02_AXI_rready);
    mp_M02_AXI_transactor->CLK(aclk);
    m_M02_AXI_transactor_rst_signal.write(1);
    mp_M02_AXI_transactor->RST(m_M02_AXI_transactor_rst_signal);

    mp_impl->M02_AXI_tlm_aximm_read_socket->bind(*(mp_M02_AXI_transactor->rd_socket));
    mp_impl->M02_AXI_tlm_aximm_write_socket->bind(*(mp_M02_AXI_transactor->wr_socket));
  }
  // configure 'M03_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("jsps_half_smartconnect_0_0", "M03_AXI_TLM_MODE") != 1)
  {
    xsc::common_cpp::properties M03_AXI_transactor_param_props;
    M03_AXI_transactor_param_props.addLong("DATA_WIDTH", "64");
    M03_AXI_transactor_param_props.addLong("FREQ_HZ", "50000000");
    M03_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    M03_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M03_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M03_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M03_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M03_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M03_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M03_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M03_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M03_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M03_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M03_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    M03_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    M03_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    M03_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M03_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M03_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M03_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M03_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M03_AXI_transactor_param_props.addString("PROTOCOL", "AXI3");
    M03_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M03_AXI_transactor_param_props.addString("CLK_DOMAIN", "jsps_half_processing_system7_0_0_FCLK_CLK0");
    mp_M03_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<64,32,1,1,1,1,1,1>("M03_AXI_transactor", M03_AXI_transactor_param_props);
    mp_M03_AXI_transactor->AWADDR(M03_AXI_awaddr);
    mp_M03_AXI_awlen_converter = new xsc::common::vector2vector_converter<8,4>("M03_AXI_awlen_converter");
    mp_M03_AXI_awlen_converter->vector_in(m_M03_AXI_awlen_converter_signal);
    mp_M03_AXI_awlen_converter->vector_out(M03_AXI_awlen);
    mp_M03_AXI_transactor->AWLEN(m_M03_AXI_awlen_converter_signal);
    mp_M03_AXI_transactor->AWSIZE(M03_AXI_awsize);
    mp_M03_AXI_transactor->AWBURST(M03_AXI_awburst);
    mp_M03_AXI_awlock_converter = new xsc::common::scalar2vectorN_converter<2>("M03_AXI_awlock_converter");
    mp_M03_AXI_awlock_converter->scalar_in(m_M03_AXI_awlock_converter_signal);
    mp_M03_AXI_awlock_converter->vector_out(M03_AXI_awlock);
    mp_M03_AXI_transactor->AWLOCK(m_M03_AXI_awlock_converter_signal);
    mp_M03_AXI_transactor->AWCACHE(M03_AXI_awcache);
    mp_M03_AXI_transactor->AWPROT(M03_AXI_awprot);
    mp_M03_AXI_transactor->AWQOS(M03_AXI_awqos);
    mp_M03_AXI_transactor->AWVALID(M03_AXI_awvalid);
    mp_M03_AXI_transactor->AWREADY(M03_AXI_awready);
    mp_M03_AXI_transactor->WDATA(M03_AXI_wdata);
    mp_M03_AXI_transactor->WSTRB(M03_AXI_wstrb);
    mp_M03_AXI_transactor->WLAST(M03_AXI_wlast);
    mp_M03_AXI_transactor->WVALID(M03_AXI_wvalid);
    mp_M03_AXI_transactor->WREADY(M03_AXI_wready);
    mp_M03_AXI_transactor->BRESP(M03_AXI_bresp);
    mp_M03_AXI_transactor->BVALID(M03_AXI_bvalid);
    mp_M03_AXI_transactor->BREADY(M03_AXI_bready);
    mp_M03_AXI_transactor->ARADDR(M03_AXI_araddr);
    mp_M03_AXI_arlen_converter = new xsc::common::vector2vector_converter<8,4>("M03_AXI_arlen_converter");
    mp_M03_AXI_arlen_converter->vector_in(m_M03_AXI_arlen_converter_signal);
    mp_M03_AXI_arlen_converter->vector_out(M03_AXI_arlen);
    mp_M03_AXI_transactor->ARLEN(m_M03_AXI_arlen_converter_signal);
    mp_M03_AXI_transactor->ARSIZE(M03_AXI_arsize);
    mp_M03_AXI_transactor->ARBURST(M03_AXI_arburst);
    mp_M03_AXI_arlock_converter = new xsc::common::scalar2vectorN_converter<2>("M03_AXI_arlock_converter");
    mp_M03_AXI_arlock_converter->scalar_in(m_M03_AXI_arlock_converter_signal);
    mp_M03_AXI_arlock_converter->vector_out(M03_AXI_arlock);
    mp_M03_AXI_transactor->ARLOCK(m_M03_AXI_arlock_converter_signal);
    mp_M03_AXI_transactor->ARCACHE(M03_AXI_arcache);
    mp_M03_AXI_transactor->ARPROT(M03_AXI_arprot);
    mp_M03_AXI_transactor->ARQOS(M03_AXI_arqos);
    mp_M03_AXI_transactor->ARVALID(M03_AXI_arvalid);
    mp_M03_AXI_transactor->ARREADY(M03_AXI_arready);
    mp_M03_AXI_transactor->RDATA(M03_AXI_rdata);
    mp_M03_AXI_transactor->RRESP(M03_AXI_rresp);
    mp_M03_AXI_transactor->RLAST(M03_AXI_rlast);
    mp_M03_AXI_transactor->RVALID(M03_AXI_rvalid);
    mp_M03_AXI_transactor->RREADY(M03_AXI_rready);
    mp_M03_AXI_transactor->CLK(aclk);
    m_M03_AXI_transactor_rst_signal.write(1);
    mp_M03_AXI_transactor->RST(m_M03_AXI_transactor_rst_signal);

    mp_impl->M03_AXI_tlm_aximm_read_socket->bind(*(mp_M03_AXI_transactor->rd_socket));
    mp_impl->M03_AXI_tlm_aximm_write_socket->bind(*(mp_M03_AXI_transactor->wr_socket));
  }
}

jsps_half_smartconnect_0_0::~jsps_half_smartconnect_0_0()
{
  delete mp_S00_AXI_transactor;
  delete mp_S00_AXI_arlock_converter;
  delete mp_S01_AXI_transactor;
  delete mp_S01_AXI_awlock_converter;
  delete mp_S02_AXI_transactor;
  delete mp_S02_AXI_arlock_converter;
  delete mp_S03_AXI_transactor;
  delete mp_S03_AXI_arlock_converter;
  delete mp_S04_AXI_transactor;
  delete mp_S04_AXI_arlock_converter;
  delete mp_S05_AXI_transactor;
  delete mp_S05_AXI_arlock_converter;
  delete mp_M00_AXI_transactor;
  delete mp_M00_AXI_awlen_converter;
  delete mp_M00_AXI_awlock_converter;
  delete mp_M00_AXI_arlen_converter;
  delete mp_M00_AXI_arlock_converter;
  delete mp_M01_AXI_transactor;
  delete mp_M01_AXI_awlen_converter;
  delete mp_M01_AXI_awlock_converter;
  delete mp_M01_AXI_arlen_converter;
  delete mp_M01_AXI_arlock_converter;
  delete mp_M02_AXI_transactor;
  delete mp_M02_AXI_awlen_converter;
  delete mp_M02_AXI_awlock_converter;
  delete mp_M02_AXI_arlen_converter;
  delete mp_M02_AXI_arlock_converter;
  delete mp_M03_AXI_transactor;
  delete mp_M03_AXI_awlen_converter;
  delete mp_M03_AXI_awlock_converter;
  delete mp_M03_AXI_arlen_converter;
  delete mp_M03_AXI_arlock_converter;
}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(jsps_half_smartconnect_0_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(jsps_half_smartconnect_0_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(jsps_half_smartconnect_0_0);
#endif
