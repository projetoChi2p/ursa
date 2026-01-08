// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon May 12 14:36:18 2025
// Host        : ulisses-thinkpad running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/ulisses/Projects/nn-apsoc-sa/exp_studies/ulisses/sa_stationary_results/vivado/sa_v1/sa.gen/sources_1/bd/bd_ocm_tmr/ip/bd_ocm_tmr_tmr_voter_0_0/bd_ocm_tmr_tmr_voter_0_0_stub.v
// Design      : bd_ocm_tmr_tmr_voter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "tmr_voter,Vivado 2023.2" *)
module bd_ocm_tmr_tmr_voter_0_0(Clk, M_AXI1_AWADDR, M_AXI1_AWVALID, 
  M_AXI1_AWREADY, M_AXI1_WDATA, M_AXI1_WSTRB, M_AXI1_WVALID, M_AXI1_WREADY, M_AXI1_BRESP, 
  M_AXI1_BVALID, M_AXI1_BREADY, M_AXI1_ARADDR, M_AXI1_ARVALID, M_AXI1_ARREADY, M_AXI1_RDATA, 
  M_AXI1_RRESP, M_AXI1_RVALID, M_AXI1_RREADY, M_AXI2_AWADDR, M_AXI2_AWVALID, M_AXI2_AWREADY, 
  M_AXI2_WDATA, M_AXI2_WSTRB, M_AXI2_WVALID, M_AXI2_WREADY, M_AXI2_BRESP, M_AXI2_BVALID, 
  M_AXI2_BREADY, M_AXI2_ARADDR, M_AXI2_ARVALID, M_AXI2_ARREADY, M_AXI2_RDATA, M_AXI2_RRESP, 
  M_AXI2_RVALID, M_AXI2_RREADY, M_AXI3_AWADDR, M_AXI3_AWVALID, M_AXI3_AWREADY, M_AXI3_WDATA, 
  M_AXI3_WSTRB, M_AXI3_WVALID, M_AXI3_WREADY, M_AXI3_BRESP, M_AXI3_BVALID, M_AXI3_BREADY, 
  M_AXI3_ARADDR, M_AXI3_ARVALID, M_AXI3_ARREADY, M_AXI3_RDATA, M_AXI3_RRESP, M_AXI3_RVALID, 
  M_AXI3_RREADY, S_AXI_AWADDR, S_AXI_AWVALID, S_AXI_AWREADY, S_AXI_WDATA, S_AXI_WSTRB, 
  S_AXI_WVALID, S_AXI_WREADY, S_AXI_BRESP, S_AXI_BVALID, S_AXI_BREADY, S_AXI_ARADDR, 
  S_AXI_ARVALID, S_AXI_ARREADY, S_AXI_RDATA, S_AXI_RRESP, S_AXI_RVALID, S_AXI_RREADY)
/* synthesis syn_black_box black_box_pad_pin="Clk,M_AXI1_AWADDR[5:0],M_AXI1_AWVALID,M_AXI1_AWREADY,M_AXI1_WDATA[31:0],M_AXI1_WSTRB[3:0],M_AXI1_WVALID,M_AXI1_WREADY,M_AXI1_BRESP[1:0],M_AXI1_BVALID,M_AXI1_BREADY,M_AXI1_ARADDR[5:0],M_AXI1_ARVALID,M_AXI1_ARREADY,M_AXI1_RDATA[31:0],M_AXI1_RRESP[1:0],M_AXI1_RVALID,M_AXI1_RREADY,M_AXI2_AWADDR[5:0],M_AXI2_AWVALID,M_AXI2_AWREADY,M_AXI2_WDATA[31:0],M_AXI2_WSTRB[3:0],M_AXI2_WVALID,M_AXI2_WREADY,M_AXI2_BRESP[1:0],M_AXI2_BVALID,M_AXI2_BREADY,M_AXI2_ARADDR[5:0],M_AXI2_ARVALID,M_AXI2_ARREADY,M_AXI2_RDATA[31:0],M_AXI2_RRESP[1:0],M_AXI2_RVALID,M_AXI2_RREADY,M_AXI3_AWADDR[5:0],M_AXI3_AWVALID,M_AXI3_AWREADY,M_AXI3_WDATA[31:0],M_AXI3_WSTRB[3:0],M_AXI3_WVALID,M_AXI3_WREADY,M_AXI3_BRESP[1:0],M_AXI3_BVALID,M_AXI3_BREADY,M_AXI3_ARADDR[5:0],M_AXI3_ARVALID,M_AXI3_ARREADY,M_AXI3_RDATA[31:0],M_AXI3_RRESP[1:0],M_AXI3_RVALID,M_AXI3_RREADY,S_AXI_AWADDR[5:0],S_AXI_AWVALID,S_AXI_AWREADY,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_WVALID,S_AXI_WREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_BREADY,S_AXI_ARADDR[5:0],S_AXI_ARVALID,S_AXI_ARREADY,S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],S_AXI_RVALID,S_AXI_RREADY" */;
  input Clk;
  output [5:0]M_AXI1_AWADDR;
  output M_AXI1_AWVALID;
  input M_AXI1_AWREADY;
  output [31:0]M_AXI1_WDATA;
  output [3:0]M_AXI1_WSTRB;
  output M_AXI1_WVALID;
  input M_AXI1_WREADY;
  input [1:0]M_AXI1_BRESP;
  input M_AXI1_BVALID;
  output M_AXI1_BREADY;
  output [5:0]M_AXI1_ARADDR;
  output M_AXI1_ARVALID;
  input M_AXI1_ARREADY;
  input [31:0]M_AXI1_RDATA;
  input [1:0]M_AXI1_RRESP;
  input M_AXI1_RVALID;
  output M_AXI1_RREADY;
  output [5:0]M_AXI2_AWADDR;
  output M_AXI2_AWVALID;
  input M_AXI2_AWREADY;
  output [31:0]M_AXI2_WDATA;
  output [3:0]M_AXI2_WSTRB;
  output M_AXI2_WVALID;
  input M_AXI2_WREADY;
  input [1:0]M_AXI2_BRESP;
  input M_AXI2_BVALID;
  output M_AXI2_BREADY;
  output [5:0]M_AXI2_ARADDR;
  output M_AXI2_ARVALID;
  input M_AXI2_ARREADY;
  input [31:0]M_AXI2_RDATA;
  input [1:0]M_AXI2_RRESP;
  input M_AXI2_RVALID;
  output M_AXI2_RREADY;
  output [5:0]M_AXI3_AWADDR;
  output M_AXI3_AWVALID;
  input M_AXI3_AWREADY;
  output [31:0]M_AXI3_WDATA;
  output [3:0]M_AXI3_WSTRB;
  output M_AXI3_WVALID;
  input M_AXI3_WREADY;
  input [1:0]M_AXI3_BRESP;
  input M_AXI3_BVALID;
  output M_AXI3_BREADY;
  output [5:0]M_AXI3_ARADDR;
  output M_AXI3_ARVALID;
  input M_AXI3_ARREADY;
  input [31:0]M_AXI3_RDATA;
  input [1:0]M_AXI3_RRESP;
  input M_AXI3_RVALID;
  output M_AXI3_RREADY;
  input [5:0]S_AXI_AWADDR;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [5:0]S_AXI_ARADDR;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RVALID;
  input S_AXI_RREADY;
endmodule
