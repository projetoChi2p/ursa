// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Fri May  9 11:26:14 2025
// Host        : ulisses-thinkpad running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/ulisses/Projects/nn-apsoc-sa/exp_studies/ulisses/sa_stationary_results/vivado/sa_v1/sa.gen/sources_1/bd/bd_bram_tmr/ip/bd_bram_tmr_shell_top_0_0/bd_bram_tmr_shell_top_0_0_stub.v
// Design      : bd_bram_tmr_shell_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "shell_top,Vivado 2023.2" *)
module bd_bram_tmr_shell_top_0_0(s_axi_ap_AWADDR, s_axi_ap_AWVALID, 
  s_axi_ap_AWREADY, s_axi_ap_WDATA, s_axi_ap_WSTRB, s_axi_ap_WVALID, s_axi_ap_WREADY, 
  s_axi_ap_BRESP, s_axi_ap_BVALID, s_axi_ap_BREADY, s_axi_ap_ARADDR, s_axi_ap_ARVALID, 
  s_axi_ap_ARREADY, s_axi_ap_RDATA, s_axi_ap_RRESP, s_axi_ap_RVALID, s_axi_ap_RREADY, 
  s_axi_control_AWADDR, s_axi_control_AWVALID, s_axi_control_AWREADY, 
  s_axi_control_WDATA, s_axi_control_WSTRB, s_axi_control_WVALID, s_axi_control_WREADY, 
  s_axi_control_BRESP, s_axi_control_BVALID, s_axi_control_BREADY, s_axi_control_ARADDR, 
  s_axi_control_ARVALID, s_axi_control_ARREADY, s_axi_control_RDATA, s_axi_control_RRESP, 
  s_axi_control_RVALID, s_axi_control_RREADY, ap_clk, ap_rst_n, interrupt, m_axi_aw_AWID, 
  m_axi_aw_AWADDR, m_axi_aw_AWLEN, m_axi_aw_AWSIZE, m_axi_aw_AWBURST, m_axi_aw_AWLOCK, 
  m_axi_aw_AWREGION, m_axi_aw_AWCACHE, m_axi_aw_AWPROT, m_axi_aw_AWQOS, m_axi_aw_AWVALID, 
  m_axi_aw_AWREADY, m_axi_aw_WID, m_axi_aw_WDATA, m_axi_aw_WSTRB, m_axi_aw_WLAST, 
  m_axi_aw_WVALID, m_axi_aw_WREADY, m_axi_aw_BID, m_axi_aw_BRESP, m_axi_aw_BVALID, 
  m_axi_aw_BREADY, m_axi_aw_ARID, m_axi_aw_ARADDR, m_axi_aw_ARLEN, m_axi_aw_ARSIZE, 
  m_axi_aw_ARBURST, m_axi_aw_ARLOCK, m_axi_aw_ARREGION, m_axi_aw_ARCACHE, m_axi_aw_ARPROT, 
  m_axi_aw_ARQOS, m_axi_aw_ARVALID, m_axi_aw_ARREADY, m_axi_aw_RID, m_axi_aw_RDATA, 
  m_axi_aw_RRESP, m_axi_aw_RLAST, m_axi_aw_RVALID, m_axi_aw_RREADY, m_axi_bi_AWID, 
  m_axi_bi_AWADDR, m_axi_bi_AWLEN, m_axi_bi_AWSIZE, m_axi_bi_AWBURST, m_axi_bi_AWLOCK, 
  m_axi_bi_AWREGION, m_axi_bi_AWCACHE, m_axi_bi_AWPROT, m_axi_bi_AWQOS, m_axi_bi_AWVALID, 
  m_axi_bi_AWREADY, m_axi_bi_WID, m_axi_bi_WDATA, m_axi_bi_WSTRB, m_axi_bi_WLAST, 
  m_axi_bi_WVALID, m_axi_bi_WREADY, m_axi_bi_BID, m_axi_bi_BRESP, m_axi_bi_BVALID, 
  m_axi_bi_BREADY, m_axi_bi_ARID, m_axi_bi_ARADDR, m_axi_bi_ARLEN, m_axi_bi_ARSIZE, 
  m_axi_bi_ARBURST, m_axi_bi_ARLOCK, m_axi_bi_ARREGION, m_axi_bi_ARCACHE, m_axi_bi_ARPROT, 
  m_axi_bi_ARQOS, m_axi_bi_ARVALID, m_axi_bi_ARREADY, m_axi_bi_RID, m_axi_bi_RDATA, 
  m_axi_bi_RRESP, m_axi_bi_RLAST, m_axi_bi_RVALID, m_axi_bi_RREADY, m_axi_ca_AWID, 
  m_axi_ca_AWADDR, m_axi_ca_AWLEN, m_axi_ca_AWSIZE, m_axi_ca_AWBURST, m_axi_ca_AWLOCK, 
  m_axi_ca_AWREGION, m_axi_ca_AWCACHE, m_axi_ca_AWPROT, m_axi_ca_AWQOS, m_axi_ca_AWVALID, 
  m_axi_ca_AWREADY, m_axi_ca_WID, m_axi_ca_WDATA, m_axi_ca_WSTRB, m_axi_ca_WLAST, 
  m_axi_ca_WVALID, m_axi_ca_WREADY, m_axi_ca_BID, m_axi_ca_BRESP, m_axi_ca_BVALID, 
  m_axi_ca_BREADY, m_axi_ca_ARID, m_axi_ca_ARADDR, m_axi_ca_ARLEN, m_axi_ca_ARSIZE, 
  m_axi_ca_ARBURST, m_axi_ca_ARLOCK, m_axi_ca_ARREGION, m_axi_ca_ARCACHE, m_axi_ca_ARPROT, 
  m_axi_ca_ARQOS, m_axi_ca_ARVALID, m_axi_ca_ARREADY, m_axi_ca_RID, m_axi_ca_RDATA, 
  m_axi_ca_RRESP, m_axi_ca_RLAST, m_axi_ca_RVALID, m_axi_ca_RREADY)
/* synthesis syn_black_box black_box_pad_pin="s_axi_ap_AWADDR[5:0],s_axi_ap_AWVALID,s_axi_ap_AWREADY,s_axi_ap_WDATA[31:0],s_axi_ap_WSTRB[3:0],s_axi_ap_WVALID,s_axi_ap_WREADY,s_axi_ap_BRESP[1:0],s_axi_ap_BVALID,s_axi_ap_BREADY,s_axi_ap_ARADDR[5:0],s_axi_ap_ARVALID,s_axi_ap_ARREADY,s_axi_ap_RDATA[31:0],s_axi_ap_RRESP[1:0],s_axi_ap_RVALID,s_axi_ap_RREADY,s_axi_control_AWADDR[5:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[5:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_rst_n,interrupt,m_axi_aw_AWID[0:0],m_axi_aw_AWADDR[31:0],m_axi_aw_AWLEN[7:0],m_axi_aw_AWSIZE[2:0],m_axi_aw_AWBURST[1:0],m_axi_aw_AWLOCK[1:0],m_axi_aw_AWREGION[3:0],m_axi_aw_AWCACHE[3:0],m_axi_aw_AWPROT[2:0],m_axi_aw_AWQOS[3:0],m_axi_aw_AWVALID,m_axi_aw_AWREADY,m_axi_aw_WID[0:0],m_axi_aw_WDATA[31:0],m_axi_aw_WSTRB[3:0],m_axi_aw_WLAST,m_axi_aw_WVALID,m_axi_aw_WREADY,m_axi_aw_BID[0:0],m_axi_aw_BRESP[1:0],m_axi_aw_BVALID,m_axi_aw_BREADY,m_axi_aw_ARID[0:0],m_axi_aw_ARADDR[31:0],m_axi_aw_ARLEN[7:0],m_axi_aw_ARSIZE[2:0],m_axi_aw_ARBURST[1:0],m_axi_aw_ARLOCK[1:0],m_axi_aw_ARREGION[3:0],m_axi_aw_ARCACHE[3:0],m_axi_aw_ARPROT[2:0],m_axi_aw_ARQOS[3:0],m_axi_aw_ARVALID,m_axi_aw_ARREADY,m_axi_aw_RID[0:0],m_axi_aw_RDATA[31:0],m_axi_aw_RRESP[1:0],m_axi_aw_RLAST,m_axi_aw_RVALID,m_axi_aw_RREADY,m_axi_bi_AWID[0:0],m_axi_bi_AWADDR[31:0],m_axi_bi_AWLEN[7:0],m_axi_bi_AWSIZE[2:0],m_axi_bi_AWBURST[1:0],m_axi_bi_AWLOCK[1:0],m_axi_bi_AWREGION[3:0],m_axi_bi_AWCACHE[3:0],m_axi_bi_AWPROT[2:0],m_axi_bi_AWQOS[3:0],m_axi_bi_AWVALID,m_axi_bi_AWREADY,m_axi_bi_WID[0:0],m_axi_bi_WDATA[31:0],m_axi_bi_WSTRB[3:0],m_axi_bi_WLAST,m_axi_bi_WVALID,m_axi_bi_WREADY,m_axi_bi_BID[0:0],m_axi_bi_BRESP[1:0],m_axi_bi_BVALID,m_axi_bi_BREADY,m_axi_bi_ARID[0:0],m_axi_bi_ARADDR[31:0],m_axi_bi_ARLEN[7:0],m_axi_bi_ARSIZE[2:0],m_axi_bi_ARBURST[1:0],m_axi_bi_ARLOCK[1:0],m_axi_bi_ARREGION[3:0],m_axi_bi_ARCACHE[3:0],m_axi_bi_ARPROT[2:0],m_axi_bi_ARQOS[3:0],m_axi_bi_ARVALID,m_axi_bi_ARREADY,m_axi_bi_RID[0:0],m_axi_bi_RDATA[31:0],m_axi_bi_RRESP[1:0],m_axi_bi_RLAST,m_axi_bi_RVALID,m_axi_bi_RREADY,m_axi_ca_AWID[0:0],m_axi_ca_AWADDR[31:0],m_axi_ca_AWLEN[7:0],m_axi_ca_AWSIZE[2:0],m_axi_ca_AWBURST[1:0],m_axi_ca_AWLOCK[1:0],m_axi_ca_AWREGION[3:0],m_axi_ca_AWCACHE[3:0],m_axi_ca_AWPROT[2:0],m_axi_ca_AWQOS[3:0],m_axi_ca_AWVALID,m_axi_ca_AWREADY,m_axi_ca_WID[0:0],m_axi_ca_WDATA[31:0],m_axi_ca_WSTRB[3:0],m_axi_ca_WLAST,m_axi_ca_WVALID,m_axi_ca_WREADY,m_axi_ca_BID[0:0],m_axi_ca_BRESP[1:0],m_axi_ca_BVALID,m_axi_ca_BREADY,m_axi_ca_ARID[0:0],m_axi_ca_ARADDR[31:0],m_axi_ca_ARLEN[7:0],m_axi_ca_ARSIZE[2:0],m_axi_ca_ARBURST[1:0],m_axi_ca_ARLOCK[1:0],m_axi_ca_ARREGION[3:0],m_axi_ca_ARCACHE[3:0],m_axi_ca_ARPROT[2:0],m_axi_ca_ARQOS[3:0],m_axi_ca_ARVALID,m_axi_ca_ARREADY,m_axi_ca_RID[0:0],m_axi_ca_RDATA[31:0],m_axi_ca_RRESP[1:0],m_axi_ca_RLAST,m_axi_ca_RVALID,m_axi_ca_RREADY" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  input [5:0]s_axi_ap_AWADDR;
  input s_axi_ap_AWVALID;
  output s_axi_ap_AWREADY;
  input [31:0]s_axi_ap_WDATA;
  input [3:0]s_axi_ap_WSTRB;
  input s_axi_ap_WVALID;
  output s_axi_ap_WREADY;
  output [1:0]s_axi_ap_BRESP;
  output s_axi_ap_BVALID;
  input s_axi_ap_BREADY;
  input [5:0]s_axi_ap_ARADDR;
  input s_axi_ap_ARVALID;
  output s_axi_ap_ARREADY;
  output [31:0]s_axi_ap_RDATA;
  output [1:0]s_axi_ap_RRESP;
  output s_axi_ap_RVALID;
  input s_axi_ap_RREADY;
  input [5:0]s_axi_control_AWADDR;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  output [1:0]s_axi_control_BRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  input [5:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  input ap_clk /* synthesis syn_isclock = 1 */;
  input ap_rst_n;
  output interrupt;
  output [0:0]m_axi_aw_AWID;
  output [31:0]m_axi_aw_AWADDR;
  output [7:0]m_axi_aw_AWLEN;
  output [2:0]m_axi_aw_AWSIZE;
  output [1:0]m_axi_aw_AWBURST;
  output [1:0]m_axi_aw_AWLOCK;
  output [3:0]m_axi_aw_AWREGION;
  output [3:0]m_axi_aw_AWCACHE;
  output [2:0]m_axi_aw_AWPROT;
  output [3:0]m_axi_aw_AWQOS;
  output m_axi_aw_AWVALID;
  input m_axi_aw_AWREADY;
  output [0:0]m_axi_aw_WID;
  output [31:0]m_axi_aw_WDATA;
  output [3:0]m_axi_aw_WSTRB;
  output m_axi_aw_WLAST;
  output m_axi_aw_WVALID;
  input m_axi_aw_WREADY;
  input [0:0]m_axi_aw_BID;
  input [1:0]m_axi_aw_BRESP;
  input m_axi_aw_BVALID;
  output m_axi_aw_BREADY;
  output [0:0]m_axi_aw_ARID;
  output [31:0]m_axi_aw_ARADDR;
  output [7:0]m_axi_aw_ARLEN;
  output [2:0]m_axi_aw_ARSIZE;
  output [1:0]m_axi_aw_ARBURST;
  output [1:0]m_axi_aw_ARLOCK;
  output [3:0]m_axi_aw_ARREGION;
  output [3:0]m_axi_aw_ARCACHE;
  output [2:0]m_axi_aw_ARPROT;
  output [3:0]m_axi_aw_ARQOS;
  output m_axi_aw_ARVALID;
  input m_axi_aw_ARREADY;
  input [0:0]m_axi_aw_RID;
  input [31:0]m_axi_aw_RDATA;
  input [1:0]m_axi_aw_RRESP;
  input m_axi_aw_RLAST;
  input m_axi_aw_RVALID;
  output m_axi_aw_RREADY;
  output [0:0]m_axi_bi_AWID;
  output [31:0]m_axi_bi_AWADDR;
  output [7:0]m_axi_bi_AWLEN;
  output [2:0]m_axi_bi_AWSIZE;
  output [1:0]m_axi_bi_AWBURST;
  output [1:0]m_axi_bi_AWLOCK;
  output [3:0]m_axi_bi_AWREGION;
  output [3:0]m_axi_bi_AWCACHE;
  output [2:0]m_axi_bi_AWPROT;
  output [3:0]m_axi_bi_AWQOS;
  output m_axi_bi_AWVALID;
  input m_axi_bi_AWREADY;
  output [0:0]m_axi_bi_WID;
  output [31:0]m_axi_bi_WDATA;
  output [3:0]m_axi_bi_WSTRB;
  output m_axi_bi_WLAST;
  output m_axi_bi_WVALID;
  input m_axi_bi_WREADY;
  input [0:0]m_axi_bi_BID;
  input [1:0]m_axi_bi_BRESP;
  input m_axi_bi_BVALID;
  output m_axi_bi_BREADY;
  output [0:0]m_axi_bi_ARID;
  output [31:0]m_axi_bi_ARADDR;
  output [7:0]m_axi_bi_ARLEN;
  output [2:0]m_axi_bi_ARSIZE;
  output [1:0]m_axi_bi_ARBURST;
  output [1:0]m_axi_bi_ARLOCK;
  output [3:0]m_axi_bi_ARREGION;
  output [3:0]m_axi_bi_ARCACHE;
  output [2:0]m_axi_bi_ARPROT;
  output [3:0]m_axi_bi_ARQOS;
  output m_axi_bi_ARVALID;
  input m_axi_bi_ARREADY;
  input [0:0]m_axi_bi_RID;
  input [31:0]m_axi_bi_RDATA;
  input [1:0]m_axi_bi_RRESP;
  input m_axi_bi_RLAST;
  input m_axi_bi_RVALID;
  output m_axi_bi_RREADY;
  output [0:0]m_axi_ca_AWID;
  output [31:0]m_axi_ca_AWADDR;
  output [7:0]m_axi_ca_AWLEN;
  output [2:0]m_axi_ca_AWSIZE;
  output [1:0]m_axi_ca_AWBURST;
  output [1:0]m_axi_ca_AWLOCK;
  output [3:0]m_axi_ca_AWREGION;
  output [3:0]m_axi_ca_AWCACHE;
  output [2:0]m_axi_ca_AWPROT;
  output [3:0]m_axi_ca_AWQOS;
  output m_axi_ca_AWVALID;
  input m_axi_ca_AWREADY;
  output [0:0]m_axi_ca_WID;
  output [31:0]m_axi_ca_WDATA;
  output [3:0]m_axi_ca_WSTRB;
  output m_axi_ca_WLAST;
  output m_axi_ca_WVALID;
  input m_axi_ca_WREADY;
  input [0:0]m_axi_ca_BID;
  input [1:0]m_axi_ca_BRESP;
  input m_axi_ca_BVALID;
  output m_axi_ca_BREADY;
  output [0:0]m_axi_ca_ARID;
  output [31:0]m_axi_ca_ARADDR;
  output [7:0]m_axi_ca_ARLEN;
  output [2:0]m_axi_ca_ARSIZE;
  output [1:0]m_axi_ca_ARBURST;
  output [1:0]m_axi_ca_ARLOCK;
  output [3:0]m_axi_ca_ARREGION;
  output [3:0]m_axi_ca_ARCACHE;
  output [2:0]m_axi_ca_ARPROT;
  output [3:0]m_axi_ca_ARQOS;
  output m_axi_ca_ARVALID;
  input m_axi_ca_ARREADY;
  input [0:0]m_axi_ca_RID;
  input [31:0]m_axi_ca_RDATA;
  input [1:0]m_axi_ca_RRESP;
  input m_axi_ca_RLAST;
  input m_axi_ca_RVALID;
  output m_axi_ca_RREADY;
endmodule
