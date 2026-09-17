// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:shell_top:1.0
// IP Revision: 2114069833

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_hybrid_ecc_shell_top_2_0 (
  s_axi_ap_AWADDR,
  s_axi_ap_AWVALID,
  s_axi_ap_AWREADY,
  s_axi_ap_WDATA,
  s_axi_ap_WSTRB,
  s_axi_ap_WVALID,
  s_axi_ap_WREADY,
  s_axi_ap_BRESP,
  s_axi_ap_BVALID,
  s_axi_ap_BREADY,
  s_axi_ap_ARADDR,
  s_axi_ap_ARVALID,
  s_axi_ap_ARREADY,
  s_axi_ap_RDATA,
  s_axi_ap_RRESP,
  s_axi_ap_RVALID,
  s_axi_ap_RREADY,
  s_axi_control_AWADDR,
  s_axi_control_AWVALID,
  s_axi_control_AWREADY,
  s_axi_control_WDATA,
  s_axi_control_WSTRB,
  s_axi_control_WVALID,
  s_axi_control_WREADY,
  s_axi_control_BRESP,
  s_axi_control_BVALID,
  s_axi_control_BREADY,
  s_axi_control_ARADDR,
  s_axi_control_ARVALID,
  s_axi_control_ARREADY,
  s_axi_control_RDATA,
  s_axi_control_RRESP,
  s_axi_control_RVALID,
  s_axi_control_RREADY,
  ap_clk,
  ap_rst_n,
  interrupt,
  m_axi_aw_AWID,
  m_axi_aw_AWADDR,
  m_axi_aw_AWLEN,
  m_axi_aw_AWSIZE,
  m_axi_aw_AWBURST,
  m_axi_aw_AWLOCK,
  m_axi_aw_AWREGION,
  m_axi_aw_AWCACHE,
  m_axi_aw_AWPROT,
  m_axi_aw_AWQOS,
  m_axi_aw_AWVALID,
  m_axi_aw_AWREADY,
  m_axi_aw_WID,
  m_axi_aw_WDATA,
  m_axi_aw_WSTRB,
  m_axi_aw_WLAST,
  m_axi_aw_WVALID,
  m_axi_aw_WREADY,
  m_axi_aw_BID,
  m_axi_aw_BRESP,
  m_axi_aw_BVALID,
  m_axi_aw_BREADY,
  m_axi_aw_ARID,
  m_axi_aw_ARADDR,
  m_axi_aw_ARLEN,
  m_axi_aw_ARSIZE,
  m_axi_aw_ARBURST,
  m_axi_aw_ARLOCK,
  m_axi_aw_ARREGION,
  m_axi_aw_ARCACHE,
  m_axi_aw_ARPROT,
  m_axi_aw_ARQOS,
  m_axi_aw_ARVALID,
  m_axi_aw_ARREADY,
  m_axi_aw_RID,
  m_axi_aw_RDATA,
  m_axi_aw_RRESP,
  m_axi_aw_RLAST,
  m_axi_aw_RVALID,
  m_axi_aw_RREADY,
  m_axi_bi_AWID,
  m_axi_bi_AWADDR,
  m_axi_bi_AWLEN,
  m_axi_bi_AWSIZE,
  m_axi_bi_AWBURST,
  m_axi_bi_AWLOCK,
  m_axi_bi_AWREGION,
  m_axi_bi_AWCACHE,
  m_axi_bi_AWPROT,
  m_axi_bi_AWQOS,
  m_axi_bi_AWVALID,
  m_axi_bi_AWREADY,
  m_axi_bi_WID,
  m_axi_bi_WDATA,
  m_axi_bi_WSTRB,
  m_axi_bi_WLAST,
  m_axi_bi_WVALID,
  m_axi_bi_WREADY,
  m_axi_bi_BID,
  m_axi_bi_BRESP,
  m_axi_bi_BVALID,
  m_axi_bi_BREADY,
  m_axi_bi_ARID,
  m_axi_bi_ARADDR,
  m_axi_bi_ARLEN,
  m_axi_bi_ARSIZE,
  m_axi_bi_ARBURST,
  m_axi_bi_ARLOCK,
  m_axi_bi_ARREGION,
  m_axi_bi_ARCACHE,
  m_axi_bi_ARPROT,
  m_axi_bi_ARQOS,
  m_axi_bi_ARVALID,
  m_axi_bi_ARREADY,
  m_axi_bi_RID,
  m_axi_bi_RDATA,
  m_axi_bi_RRESP,
  m_axi_bi_RLAST,
  m_axi_bi_RVALID,
  m_axi_bi_RREADY,
  m_axi_ca_AWID,
  m_axi_ca_AWADDR,
  m_axi_ca_AWLEN,
  m_axi_ca_AWSIZE,
  m_axi_ca_AWBURST,
  m_axi_ca_AWLOCK,
  m_axi_ca_AWREGION,
  m_axi_ca_AWCACHE,
  m_axi_ca_AWPROT,
  m_axi_ca_AWQOS,
  m_axi_ca_AWVALID,
  m_axi_ca_AWREADY,
  m_axi_ca_WID,
  m_axi_ca_WDATA,
  m_axi_ca_WSTRB,
  m_axi_ca_WLAST,
  m_axi_ca_WVALID,
  m_axi_ca_WREADY,
  m_axi_ca_BID,
  m_axi_ca_BRESP,
  m_axi_ca_BVALID,
  m_axi_ca_BREADY,
  m_axi_ca_ARID,
  m_axi_ca_ARADDR,
  m_axi_ca_ARLEN,
  m_axi_ca_ARSIZE,
  m_axi_ca_ARBURST,
  m_axi_ca_ARLOCK,
  m_axi_ca_ARREGION,
  m_axi_ca_ARCACHE,
  m_axi_ca_ARPROT,
  m_axi_ca_ARQOS,
  m_axi_ca_ARVALID,
  m_axi_ca_ARREADY,
  m_axi_ca_RID,
  m_axi_ca_RDATA,
  m_axi_ca_RRESP,
  m_axi_ca_RLAST,
  m_axi_ca_RVALID,
  m_axi_ca_RREADY
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ap AWADDR" *)
input wire [5 : 0] s_axi_ap_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ap AWVALID" *)
input wire s_axi_ap_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ap AWREADY" *)
output wire s_axi_ap_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ap WDATA" *)
input wire [31 : 0] s_axi_ap_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ap WSTRB" *)
input wire [3 : 0] s_axi_ap_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ap WVALID" *)
input wire s_axi_ap_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ap WREADY" *)
output wire s_axi_ap_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ap BRESP" *)
output wire [1 : 0] s_axi_ap_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ap BVALID" *)
output wire s_axi_ap_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ap BREADY" *)
input wire s_axi_ap_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ap ARADDR" *)
input wire [5 : 0] s_axi_ap_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ap ARVALID" *)
input wire s_axi_ap_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ap ARREADY" *)
output wire s_axi_ap_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ap RDATA" *)
output wire [31 : 0] s_axi_ap_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ap RRESP" *)
output wire [1 : 0] s_axi_ap_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ap RVALID" *)
output wire s_axi_ap_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ap, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_hybrid_ecc_processing_system7_0_0_FCLK_CLK0, NUM_READ_T\
HREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ap RREADY" *)
input wire s_axi_ap_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *)
input wire [5 : 0] s_axi_control_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *)
input wire s_axi_control_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *)
output wire s_axi_control_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *)
input wire [31 : 0] s_axi_control_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *)
input wire [3 : 0] s_axi_control_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *)
input wire s_axi_control_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *)
output wire s_axi_control_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *)
output wire [1 : 0] s_axi_control_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *)
output wire s_axi_control_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *)
input wire s_axi_control_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *)
input wire [5 : 0] s_axi_control_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *)
input wire s_axi_control_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *)
output wire s_axi_control_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *)
output wire [31 : 0] s_axi_control_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *)
output wire [1 : 0] s_axi_control_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *)
output wire s_axi_control_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_hybrid_ecc_processing_system7_0_0_FCLK_CLK0, NUM_R\
EAD_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *)
input wire s_axi_control_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_ap:s_axi_control:m_axi_aw:m_axi_bi:m_axi_ca, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_hybrid_ecc_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw AWID" *)
output wire [0 : 0] m_axi_aw_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw AWADDR" *)
output wire [31 : 0] m_axi_aw_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw AWLEN" *)
output wire [7 : 0] m_axi_aw_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw AWSIZE" *)
output wire [2 : 0] m_axi_aw_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw AWBURST" *)
output wire [1 : 0] m_axi_aw_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw AWLOCK" *)
output wire [1 : 0] m_axi_aw_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw AWREGION" *)
output wire [3 : 0] m_axi_aw_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw AWCACHE" *)
output wire [3 : 0] m_axi_aw_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw AWPROT" *)
output wire [2 : 0] m_axi_aw_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw AWQOS" *)
output wire [3 : 0] m_axi_aw_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw AWVALID" *)
output wire m_axi_aw_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw AWREADY" *)
input wire m_axi_aw_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw WID" *)
output wire [0 : 0] m_axi_aw_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw WDATA" *)
output wire [31 : 0] m_axi_aw_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw WSTRB" *)
output wire [3 : 0] m_axi_aw_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw WLAST" *)
output wire m_axi_aw_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw WVALID" *)
output wire m_axi_aw_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw WREADY" *)
input wire m_axi_aw_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw BID" *)
input wire [0 : 0] m_axi_aw_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw BRESP" *)
input wire [1 : 0] m_axi_aw_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw BVALID" *)
input wire m_axi_aw_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw BREADY" *)
output wire m_axi_aw_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw ARID" *)
output wire [0 : 0] m_axi_aw_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw ARADDR" *)
output wire [31 : 0] m_axi_aw_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw ARLEN" *)
output wire [7 : 0] m_axi_aw_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw ARSIZE" *)
output wire [2 : 0] m_axi_aw_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw ARBURST" *)
output wire [1 : 0] m_axi_aw_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw ARLOCK" *)
output wire [1 : 0] m_axi_aw_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw ARREGION" *)
output wire [3 : 0] m_axi_aw_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw ARCACHE" *)
output wire [3 : 0] m_axi_aw_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw ARPROT" *)
output wire [2 : 0] m_axi_aw_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw ARQOS" *)
output wire [3 : 0] m_axi_aw_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw ARVALID" *)
output wire m_axi_aw_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw ARREADY" *)
input wire m_axi_aw_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw RID" *)
input wire [0 : 0] m_axi_aw_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw RDATA" *)
input wire [31 : 0] m_axi_aw_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw RRESP" *)
input wire [1 : 0] m_axi_aw_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw RLAST" *)
input wire m_axi_aw_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw RVALID" *)
input wire m_axi_aw_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_aw, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN bd_hybr\
id_ecc_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_aw RREADY" *)
output wire m_axi_aw_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi AWID" *)
output wire [0 : 0] m_axi_bi_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi AWADDR" *)
output wire [31 : 0] m_axi_bi_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi AWLEN" *)
output wire [7 : 0] m_axi_bi_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi AWSIZE" *)
output wire [2 : 0] m_axi_bi_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi AWBURST" *)
output wire [1 : 0] m_axi_bi_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi AWLOCK" *)
output wire [1 : 0] m_axi_bi_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi AWREGION" *)
output wire [3 : 0] m_axi_bi_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi AWCACHE" *)
output wire [3 : 0] m_axi_bi_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi AWPROT" *)
output wire [2 : 0] m_axi_bi_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi AWQOS" *)
output wire [3 : 0] m_axi_bi_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi AWVALID" *)
output wire m_axi_bi_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi AWREADY" *)
input wire m_axi_bi_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi WID" *)
output wire [0 : 0] m_axi_bi_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi WDATA" *)
output wire [31 : 0] m_axi_bi_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi WSTRB" *)
output wire [3 : 0] m_axi_bi_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi WLAST" *)
output wire m_axi_bi_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi WVALID" *)
output wire m_axi_bi_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi WREADY" *)
input wire m_axi_bi_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi BID" *)
input wire [0 : 0] m_axi_bi_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi BRESP" *)
input wire [1 : 0] m_axi_bi_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi BVALID" *)
input wire m_axi_bi_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi BREADY" *)
output wire m_axi_bi_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi ARID" *)
output wire [0 : 0] m_axi_bi_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi ARADDR" *)
output wire [31 : 0] m_axi_bi_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi ARLEN" *)
output wire [7 : 0] m_axi_bi_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi ARSIZE" *)
output wire [2 : 0] m_axi_bi_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi ARBURST" *)
output wire [1 : 0] m_axi_bi_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi ARLOCK" *)
output wire [1 : 0] m_axi_bi_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi ARREGION" *)
output wire [3 : 0] m_axi_bi_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi ARCACHE" *)
output wire [3 : 0] m_axi_bi_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi ARPROT" *)
output wire [2 : 0] m_axi_bi_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi ARQOS" *)
output wire [3 : 0] m_axi_bi_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi ARVALID" *)
output wire m_axi_bi_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi ARREADY" *)
input wire m_axi_bi_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi RID" *)
input wire [0 : 0] m_axi_bi_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi RDATA" *)
input wire [31 : 0] m_axi_bi_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi RRESP" *)
input wire [1 : 0] m_axi_bi_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi RLAST" *)
input wire m_axi_bi_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi RVALID" *)
input wire m_axi_bi_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_bi, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN bd_hybr\
id_ecc_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bi RREADY" *)
output wire m_axi_bi_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca AWID" *)
output wire [0 : 0] m_axi_ca_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca AWADDR" *)
output wire [31 : 0] m_axi_ca_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca AWLEN" *)
output wire [7 : 0] m_axi_ca_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca AWSIZE" *)
output wire [2 : 0] m_axi_ca_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca AWBURST" *)
output wire [1 : 0] m_axi_ca_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca AWLOCK" *)
output wire [1 : 0] m_axi_ca_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca AWREGION" *)
output wire [3 : 0] m_axi_ca_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca AWCACHE" *)
output wire [3 : 0] m_axi_ca_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca AWPROT" *)
output wire [2 : 0] m_axi_ca_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca AWQOS" *)
output wire [3 : 0] m_axi_ca_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca AWVALID" *)
output wire m_axi_ca_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca AWREADY" *)
input wire m_axi_ca_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca WID" *)
output wire [0 : 0] m_axi_ca_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca WDATA" *)
output wire [31 : 0] m_axi_ca_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca WSTRB" *)
output wire [3 : 0] m_axi_ca_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca WLAST" *)
output wire m_axi_ca_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca WVALID" *)
output wire m_axi_ca_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca WREADY" *)
input wire m_axi_ca_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca BID" *)
input wire [0 : 0] m_axi_ca_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca BRESP" *)
input wire [1 : 0] m_axi_ca_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca BVALID" *)
input wire m_axi_ca_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca BREADY" *)
output wire m_axi_ca_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca ARID" *)
output wire [0 : 0] m_axi_ca_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca ARADDR" *)
output wire [31 : 0] m_axi_ca_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca ARLEN" *)
output wire [7 : 0] m_axi_ca_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca ARSIZE" *)
output wire [2 : 0] m_axi_ca_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca ARBURST" *)
output wire [1 : 0] m_axi_ca_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca ARLOCK" *)
output wire [1 : 0] m_axi_ca_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca ARREGION" *)
output wire [3 : 0] m_axi_ca_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca ARCACHE" *)
output wire [3 : 0] m_axi_ca_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca ARPROT" *)
output wire [2 : 0] m_axi_ca_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca ARQOS" *)
output wire [3 : 0] m_axi_ca_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca ARVALID" *)
output wire m_axi_ca_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca ARREADY" *)
input wire m_axi_ca_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca RID" *)
input wire [0 : 0] m_axi_ca_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca RDATA" *)
input wire [31 : 0] m_axi_ca_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca RRESP" *)
input wire [1 : 0] m_axi_ca_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca RLAST" *)
input wire m_axi_ca_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca RVALID" *)
input wire m_axi_ca_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_ca, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN bd_hyb\
rid_ecc_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ca RREADY" *)
output wire m_axi_ca_RREADY;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SIM_INST = "" *)
  shell_top #(
    .C_S_AXI_AP_ADDR_WIDTH(6),
    .C_S_AXI_AP_DATA_WIDTH(32),
    .C_S_AXI_CONTROL_ADDR_WIDTH(6),
    .C_S_AXI_CONTROL_DATA_WIDTH(32),
    .C_M_AXI_AW_ID_WIDTH(1),
    .C_M_AXI_AW_ADDR_WIDTH(32),
    .C_M_AXI_AW_DATA_WIDTH(32),
    .C_M_AXI_AW_AWUSER_WIDTH(1),
    .C_M_AXI_AW_ARUSER_WIDTH(1),
    .C_M_AXI_AW_WUSER_WIDTH(1),
    .C_M_AXI_AW_RUSER_WIDTH(1),
    .C_M_AXI_AW_BUSER_WIDTH(1),
    .C_M_AXI_AW_USER_VALUE(32'H00000000),
    .C_M_AXI_AW_PROT_VALUE(3'B000),
    .C_M_AXI_AW_CACHE_VALUE(4'B0011),
    .C_M_AXI_BI_ID_WIDTH(1),
    .C_M_AXI_BI_ADDR_WIDTH(32),
    .C_M_AXI_BI_DATA_WIDTH(32),
    .C_M_AXI_BI_AWUSER_WIDTH(1),
    .C_M_AXI_BI_ARUSER_WIDTH(1),
    .C_M_AXI_BI_WUSER_WIDTH(1),
    .C_M_AXI_BI_RUSER_WIDTH(1),
    .C_M_AXI_BI_BUSER_WIDTH(1),
    .C_M_AXI_BI_USER_VALUE(32'H00000000),
    .C_M_AXI_BI_PROT_VALUE(3'B000),
    .C_M_AXI_BI_CACHE_VALUE(4'B0011),
    .C_M_AXI_CA_ID_WIDTH(1),
    .C_M_AXI_CA_ADDR_WIDTH(32),
    .C_M_AXI_CA_DATA_WIDTH(32),
    .C_M_AXI_CA_AWUSER_WIDTH(1),
    .C_M_AXI_CA_ARUSER_WIDTH(1),
    .C_M_AXI_CA_WUSER_WIDTH(1),
    .C_M_AXI_CA_RUSER_WIDTH(1),
    .C_M_AXI_CA_BUSER_WIDTH(1),
    .C_M_AXI_CA_USER_VALUE(32'H00000000),
    .C_M_AXI_CA_PROT_VALUE(3'B000),
    .C_M_AXI_CA_CACHE_VALUE(4'B0011)
  ) inst (
    .s_axi_ap_AWADDR(s_axi_ap_AWADDR),
    .s_axi_ap_AWVALID(s_axi_ap_AWVALID),
    .s_axi_ap_AWREADY(s_axi_ap_AWREADY),
    .s_axi_ap_WDATA(s_axi_ap_WDATA),
    .s_axi_ap_WSTRB(s_axi_ap_WSTRB),
    .s_axi_ap_WVALID(s_axi_ap_WVALID),
    .s_axi_ap_WREADY(s_axi_ap_WREADY),
    .s_axi_ap_BRESP(s_axi_ap_BRESP),
    .s_axi_ap_BVALID(s_axi_ap_BVALID),
    .s_axi_ap_BREADY(s_axi_ap_BREADY),
    .s_axi_ap_ARADDR(s_axi_ap_ARADDR),
    .s_axi_ap_ARVALID(s_axi_ap_ARVALID),
    .s_axi_ap_ARREADY(s_axi_ap_ARREADY),
    .s_axi_ap_RDATA(s_axi_ap_RDATA),
    .s_axi_ap_RRESP(s_axi_ap_RRESP),
    .s_axi_ap_RVALID(s_axi_ap_RVALID),
    .s_axi_ap_RREADY(s_axi_ap_RREADY),
    .s_axi_control_AWADDR(s_axi_control_AWADDR),
    .s_axi_control_AWVALID(s_axi_control_AWVALID),
    .s_axi_control_AWREADY(s_axi_control_AWREADY),
    .s_axi_control_WDATA(s_axi_control_WDATA),
    .s_axi_control_WSTRB(s_axi_control_WSTRB),
    .s_axi_control_WVALID(s_axi_control_WVALID),
    .s_axi_control_WREADY(s_axi_control_WREADY),
    .s_axi_control_BRESP(s_axi_control_BRESP),
    .s_axi_control_BVALID(s_axi_control_BVALID),
    .s_axi_control_BREADY(s_axi_control_BREADY),
    .s_axi_control_ARADDR(s_axi_control_ARADDR),
    .s_axi_control_ARVALID(s_axi_control_ARVALID),
    .s_axi_control_ARREADY(s_axi_control_ARREADY),
    .s_axi_control_RDATA(s_axi_control_RDATA),
    .s_axi_control_RRESP(s_axi_control_RRESP),
    .s_axi_control_RVALID(s_axi_control_RVALID),
    .s_axi_control_RREADY(s_axi_control_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .m_axi_aw_AWID(m_axi_aw_AWID),
    .m_axi_aw_AWADDR(m_axi_aw_AWADDR),
    .m_axi_aw_AWLEN(m_axi_aw_AWLEN),
    .m_axi_aw_AWSIZE(m_axi_aw_AWSIZE),
    .m_axi_aw_AWBURST(m_axi_aw_AWBURST),
    .m_axi_aw_AWLOCK(m_axi_aw_AWLOCK),
    .m_axi_aw_AWREGION(m_axi_aw_AWREGION),
    .m_axi_aw_AWCACHE(m_axi_aw_AWCACHE),
    .m_axi_aw_AWPROT(m_axi_aw_AWPROT),
    .m_axi_aw_AWQOS(m_axi_aw_AWQOS),
    .m_axi_aw_AWUSER(),
    .m_axi_aw_AWVALID(m_axi_aw_AWVALID),
    .m_axi_aw_AWREADY(m_axi_aw_AWREADY),
    .m_axi_aw_WID(m_axi_aw_WID),
    .m_axi_aw_WDATA(m_axi_aw_WDATA),
    .m_axi_aw_WSTRB(m_axi_aw_WSTRB),
    .m_axi_aw_WLAST(m_axi_aw_WLAST),
    .m_axi_aw_WUSER(),
    .m_axi_aw_WVALID(m_axi_aw_WVALID),
    .m_axi_aw_WREADY(m_axi_aw_WREADY),
    .m_axi_aw_BID(m_axi_aw_BID),
    .m_axi_aw_BRESP(m_axi_aw_BRESP),
    .m_axi_aw_BUSER(1'B0),
    .m_axi_aw_BVALID(m_axi_aw_BVALID),
    .m_axi_aw_BREADY(m_axi_aw_BREADY),
    .m_axi_aw_ARID(m_axi_aw_ARID),
    .m_axi_aw_ARADDR(m_axi_aw_ARADDR),
    .m_axi_aw_ARLEN(m_axi_aw_ARLEN),
    .m_axi_aw_ARSIZE(m_axi_aw_ARSIZE),
    .m_axi_aw_ARBURST(m_axi_aw_ARBURST),
    .m_axi_aw_ARLOCK(m_axi_aw_ARLOCK),
    .m_axi_aw_ARREGION(m_axi_aw_ARREGION),
    .m_axi_aw_ARCACHE(m_axi_aw_ARCACHE),
    .m_axi_aw_ARPROT(m_axi_aw_ARPROT),
    .m_axi_aw_ARQOS(m_axi_aw_ARQOS),
    .m_axi_aw_ARUSER(),
    .m_axi_aw_ARVALID(m_axi_aw_ARVALID),
    .m_axi_aw_ARREADY(m_axi_aw_ARREADY),
    .m_axi_aw_RID(m_axi_aw_RID),
    .m_axi_aw_RDATA(m_axi_aw_RDATA),
    .m_axi_aw_RRESP(m_axi_aw_RRESP),
    .m_axi_aw_RLAST(m_axi_aw_RLAST),
    .m_axi_aw_RUSER(1'B0),
    .m_axi_aw_RVALID(m_axi_aw_RVALID),
    .m_axi_aw_RREADY(m_axi_aw_RREADY),
    .m_axi_bi_AWID(m_axi_bi_AWID),
    .m_axi_bi_AWADDR(m_axi_bi_AWADDR),
    .m_axi_bi_AWLEN(m_axi_bi_AWLEN),
    .m_axi_bi_AWSIZE(m_axi_bi_AWSIZE),
    .m_axi_bi_AWBURST(m_axi_bi_AWBURST),
    .m_axi_bi_AWLOCK(m_axi_bi_AWLOCK),
    .m_axi_bi_AWREGION(m_axi_bi_AWREGION),
    .m_axi_bi_AWCACHE(m_axi_bi_AWCACHE),
    .m_axi_bi_AWPROT(m_axi_bi_AWPROT),
    .m_axi_bi_AWQOS(m_axi_bi_AWQOS),
    .m_axi_bi_AWUSER(),
    .m_axi_bi_AWVALID(m_axi_bi_AWVALID),
    .m_axi_bi_AWREADY(m_axi_bi_AWREADY),
    .m_axi_bi_WID(m_axi_bi_WID),
    .m_axi_bi_WDATA(m_axi_bi_WDATA),
    .m_axi_bi_WSTRB(m_axi_bi_WSTRB),
    .m_axi_bi_WLAST(m_axi_bi_WLAST),
    .m_axi_bi_WUSER(),
    .m_axi_bi_WVALID(m_axi_bi_WVALID),
    .m_axi_bi_WREADY(m_axi_bi_WREADY),
    .m_axi_bi_BID(m_axi_bi_BID),
    .m_axi_bi_BRESP(m_axi_bi_BRESP),
    .m_axi_bi_BUSER(1'B0),
    .m_axi_bi_BVALID(m_axi_bi_BVALID),
    .m_axi_bi_BREADY(m_axi_bi_BREADY),
    .m_axi_bi_ARID(m_axi_bi_ARID),
    .m_axi_bi_ARADDR(m_axi_bi_ARADDR),
    .m_axi_bi_ARLEN(m_axi_bi_ARLEN),
    .m_axi_bi_ARSIZE(m_axi_bi_ARSIZE),
    .m_axi_bi_ARBURST(m_axi_bi_ARBURST),
    .m_axi_bi_ARLOCK(m_axi_bi_ARLOCK),
    .m_axi_bi_ARREGION(m_axi_bi_ARREGION),
    .m_axi_bi_ARCACHE(m_axi_bi_ARCACHE),
    .m_axi_bi_ARPROT(m_axi_bi_ARPROT),
    .m_axi_bi_ARQOS(m_axi_bi_ARQOS),
    .m_axi_bi_ARUSER(),
    .m_axi_bi_ARVALID(m_axi_bi_ARVALID),
    .m_axi_bi_ARREADY(m_axi_bi_ARREADY),
    .m_axi_bi_RID(m_axi_bi_RID),
    .m_axi_bi_RDATA(m_axi_bi_RDATA),
    .m_axi_bi_RRESP(m_axi_bi_RRESP),
    .m_axi_bi_RLAST(m_axi_bi_RLAST),
    .m_axi_bi_RUSER(1'B0),
    .m_axi_bi_RVALID(m_axi_bi_RVALID),
    .m_axi_bi_RREADY(m_axi_bi_RREADY),
    .m_axi_ca_AWID(m_axi_ca_AWID),
    .m_axi_ca_AWADDR(m_axi_ca_AWADDR),
    .m_axi_ca_AWLEN(m_axi_ca_AWLEN),
    .m_axi_ca_AWSIZE(m_axi_ca_AWSIZE),
    .m_axi_ca_AWBURST(m_axi_ca_AWBURST),
    .m_axi_ca_AWLOCK(m_axi_ca_AWLOCK),
    .m_axi_ca_AWREGION(m_axi_ca_AWREGION),
    .m_axi_ca_AWCACHE(m_axi_ca_AWCACHE),
    .m_axi_ca_AWPROT(m_axi_ca_AWPROT),
    .m_axi_ca_AWQOS(m_axi_ca_AWQOS),
    .m_axi_ca_AWUSER(),
    .m_axi_ca_AWVALID(m_axi_ca_AWVALID),
    .m_axi_ca_AWREADY(m_axi_ca_AWREADY),
    .m_axi_ca_WID(m_axi_ca_WID),
    .m_axi_ca_WDATA(m_axi_ca_WDATA),
    .m_axi_ca_WSTRB(m_axi_ca_WSTRB),
    .m_axi_ca_WLAST(m_axi_ca_WLAST),
    .m_axi_ca_WUSER(),
    .m_axi_ca_WVALID(m_axi_ca_WVALID),
    .m_axi_ca_WREADY(m_axi_ca_WREADY),
    .m_axi_ca_BID(m_axi_ca_BID),
    .m_axi_ca_BRESP(m_axi_ca_BRESP),
    .m_axi_ca_BUSER(1'B0),
    .m_axi_ca_BVALID(m_axi_ca_BVALID),
    .m_axi_ca_BREADY(m_axi_ca_BREADY),
    .m_axi_ca_ARID(m_axi_ca_ARID),
    .m_axi_ca_ARADDR(m_axi_ca_ARADDR),
    .m_axi_ca_ARLEN(m_axi_ca_ARLEN),
    .m_axi_ca_ARSIZE(m_axi_ca_ARSIZE),
    .m_axi_ca_ARBURST(m_axi_ca_ARBURST),
    .m_axi_ca_ARLOCK(m_axi_ca_ARLOCK),
    .m_axi_ca_ARREGION(m_axi_ca_ARREGION),
    .m_axi_ca_ARCACHE(m_axi_ca_ARCACHE),
    .m_axi_ca_ARPROT(m_axi_ca_ARPROT),
    .m_axi_ca_ARQOS(m_axi_ca_ARQOS),
    .m_axi_ca_ARUSER(),
    .m_axi_ca_ARVALID(m_axi_ca_ARVALID),
    .m_axi_ca_ARREADY(m_axi_ca_ARREADY),
    .m_axi_ca_RID(m_axi_ca_RID),
    .m_axi_ca_RDATA(m_axi_ca_RDATA),
    .m_axi_ca_RRESP(m_axi_ca_RRESP),
    .m_axi_ca_RLAST(m_axi_ca_RLAST),
    .m_axi_ca_RUSER(1'B0),
    .m_axi_ca_RVALID(m_axi_ca_RVALID),
    .m_axi_ca_RREADY(m_axi_ca_RREADY)
  );
endmodule
