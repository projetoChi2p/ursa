// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon May 12 20:49:55 2025
// Host        : ulisses-thinkpad running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/ulisses/Projects/nn-apsoc-sa/exp_studies/ulisses/sa_stationary_results/vivado/sa_v1/sa.gen/sources_1/bd/bd_bram_ecc/ip/bd_bram_ecc_blk_mem_gen_0_0_1/bd_bram_ecc_blk_mem_gen_0_0_stub.v
// Design      : bd_bram_ecc_blk_mem_gen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *)
module bd_bram_ecc_blk_mem_gen_0_0(clka, rsta, ena, wea, addra, dina, douta, rsta_busy)
/* synthesis syn_black_box black_box_pad_pin="rsta,ena,wea[4:0],addra[31:0],dina[39:0],douta[39:0],rsta_busy" */
/* synthesis syn_force_seq_prim="clka" */;
  input clka /* synthesis syn_isclock = 1 */;
  input rsta;
  input ena;
  input [4:0]wea;
  input [31:0]addra;
  input [39:0]dina;
  output [39:0]douta;
  output rsta_busy;
endmodule
