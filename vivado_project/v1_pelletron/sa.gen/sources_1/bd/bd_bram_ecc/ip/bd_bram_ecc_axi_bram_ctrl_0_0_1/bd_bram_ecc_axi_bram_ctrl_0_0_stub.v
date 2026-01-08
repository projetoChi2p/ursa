// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon May 12 20:49:55 2025
// Host        : ulisses-thinkpad running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/ulisses/Projects/nn-apsoc-sa/exp_studies/ulisses/sa_stationary_results/vivado/sa_v1/sa.gen/sources_1/bd/bd_bram_ecc/ip/bd_bram_ecc_axi_bram_ctrl_0_0_1/bd_bram_ecc_axi_bram_ctrl_0_0_stub.v
// Design      : bd_bram_ecc_axi_bram_ctrl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "axi_bram_ctrl,Vivado 2023.2" *)
module bd_bram_ecc_axi_bram_ctrl_0_0(s_axi_aclk, s_axi_aresetn, ecc_interrupt, 
  ecc_ue, s_axi_awid, s_axi_awaddr, s_axi_awlen, s_axi_awsize, s_axi_awburst, s_axi_awlock, 
  s_axi_awcache, s_axi_awprot, s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, 
  s_axi_wlast, s_axi_wvalid, s_axi_wready, s_axi_bid, s_axi_bresp, s_axi_bvalid, s_axi_bready, 
  s_axi_arid, s_axi_araddr, s_axi_arlen, s_axi_arsize, s_axi_arburst, s_axi_arlock, 
  s_axi_arcache, s_axi_arprot, s_axi_arvalid, s_axi_arready, s_axi_rid, s_axi_rdata, 
  s_axi_rresp, s_axi_rlast, s_axi_rvalid, s_axi_rready, s_axi_ctrl_awvalid, 
  s_axi_ctrl_awready, s_axi_ctrl_awaddr, s_axi_ctrl_wdata, s_axi_ctrl_wvalid, 
  s_axi_ctrl_wready, s_axi_ctrl_bresp, s_axi_ctrl_bvalid, s_axi_ctrl_bready, 
  s_axi_ctrl_araddr, s_axi_ctrl_arvalid, s_axi_ctrl_arready, s_axi_ctrl_rdata, 
  s_axi_ctrl_rresp, s_axi_ctrl_rvalid, s_axi_ctrl_rready, bram_rst_a, bram_clk_a, bram_en_a, 
  bram_we_a, bram_addr_a, bram_wrdata_a, bram_rddata_a)
/* synthesis syn_black_box black_box_pad_pin="s_axi_aresetn,ecc_interrupt,ecc_ue,s_axi_awid[12:0],s_axi_awaddr[31:0],s_axi_awlen[7:0],s_axi_awsize[2:0],s_axi_awburst[1:0],s_axi_awlock,s_axi_awcache[3:0],s_axi_awprot[2:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wlast,s_axi_wvalid,s_axi_wready,s_axi_bid[12:0],s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_arid[12:0],s_axi_araddr[31:0],s_axi_arlen[7:0],s_axi_arsize[2:0],s_axi_arburst[1:0],s_axi_arlock,s_axi_arcache[3:0],s_axi_arprot[2:0],s_axi_arvalid,s_axi_arready,s_axi_rid[12:0],s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rlast,s_axi_rvalid,s_axi_rready,s_axi_ctrl_awvalid,s_axi_ctrl_awready,s_axi_ctrl_awaddr[31:0],s_axi_ctrl_wdata[31:0],s_axi_ctrl_wvalid,s_axi_ctrl_wready,s_axi_ctrl_bresp[1:0],s_axi_ctrl_bvalid,s_axi_ctrl_bready,s_axi_ctrl_araddr[31:0],s_axi_ctrl_arvalid,s_axi_ctrl_arready,s_axi_ctrl_rdata[31:0],s_axi_ctrl_rresp[1:0],s_axi_ctrl_rvalid,s_axi_ctrl_rready,bram_rst_a,bram_en_a,bram_we_a[4:0],bram_addr_a[31:0],bram_wrdata_a[39:0],bram_rddata_a[39:0]" */
/* synthesis syn_force_seq_prim="s_axi_aclk" */
/* synthesis syn_force_seq_prim="bram_clk_a" */;
  input s_axi_aclk /* synthesis syn_isclock = 1 */;
  input s_axi_aresetn;
  output ecc_interrupt;
  output ecc_ue;
  input [12:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [12:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [12:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [12:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [31:0]s_axi_ctrl_awaddr;
  input [31:0]s_axi_ctrl_wdata;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  output [1:0]s_axi_ctrl_bresp;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  input [31:0]s_axi_ctrl_araddr;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output bram_rst_a;
  output bram_clk_a /* synthesis syn_isclock = 1 */;
  output bram_en_a;
  output [4:0]bram_we_a;
  output [31:0]bram_addr_a;
  output [39:0]bram_wrdata_a;
  input [39:0]bram_rddata_a;
endmodule
