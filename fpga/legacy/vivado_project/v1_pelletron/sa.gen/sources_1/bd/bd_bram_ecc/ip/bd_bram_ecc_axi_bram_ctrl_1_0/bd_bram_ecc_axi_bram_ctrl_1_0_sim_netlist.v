// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon May 12 20:49:54 2025
// Host        : ulisses-thinkpad running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top bd_bram_ecc_axi_bram_ctrl_1_0 -prefix
//               bd_bram_ecc_axi_bram_ctrl_1_0_ bd_bram_ecc_axi_bram_ctrl_2_0_sim_netlist.v
// Design      : bd_bram_ecc_axi_bram_ctrl_2_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[31] ,
    \GEN_ECC.WrData_reg[31]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[31] ;
  input [0:0]\GEN_ECC.WrData_reg[31]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[31] ;
  wire [0:0]\GEN_ECC.WrData_reg[31]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[31]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[31] ),
        .I2(\GEN_ECC.WrData_reg[31]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit_28
   (s_axi_rdata,
    S,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    \s_axi_rdata[31] );
  output [0:0]s_axi_rdata;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input \s_axi_rdata[31] ;

  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [31:31]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[31] ;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[31]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(\s_axi_rdata[31] ),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized0
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[30] ,
    \GEN_ECC.WrData_reg[30]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[30] ;
  input [0:0]\GEN_ECC.WrData_reg[30]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[30] ;
  wire [0:0]\GEN_ECC.WrData_reg[30]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[30]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[30] ),
        .I2(\GEN_ECC.WrData_reg[30]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized0_39
   (s_axi_rdata,
    Corr_MUXCY_0,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    \s_axi_rdata[30] );
  output [0:0]s_axi_rdata;
  input Corr_MUXCY_0;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input \s_axi_rdata[30] ;

  wire Corr_MUXCY_0;
  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [30:30]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[30] ;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,Corr_MUXCY_0}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[30]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(\s_axi_rdata[30] ),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized1
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[29] ,
    \GEN_ECC.WrData_reg[29]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[29] ;
  input [0:0]\GEN_ECC.WrData_reg[29]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[29] ;
  wire [0:0]\GEN_ECC.WrData_reg[29]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[29]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[29] ),
        .I2(\GEN_ECC.WrData_reg[29]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized10
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[20] ,
    \GEN_ECC.WrData_reg[20]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[20] ;
  input [0:0]\GEN_ECC.WrData_reg[20]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[20] ;
  wire [0:0]\GEN_ECC.WrData_reg[20]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[20]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[20] ),
        .I2(\GEN_ECC.WrData_reg[20]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized10_30
   (s_axi_rdata,
    S,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    \s_axi_rdata[20] );
  output [0:0]s_axi_rdata;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input \s_axi_rdata[20] ;

  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [20:20]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[20] ;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[20]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(\s_axi_rdata[20] ),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized11
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[19] ,
    \GEN_ECC.WrData_reg[19]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[19] ;
  input [0:0]\GEN_ECC.WrData_reg[19]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[19] ;
  wire [0:0]\GEN_ECC.WrData_reg[19]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[19]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[19] ),
        .I2(\GEN_ECC.WrData_reg[19]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized11_31
   (s_axi_rdata,
    S,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    \s_axi_rdata[19] );
  output [0:0]s_axi_rdata;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input \s_axi_rdata[19] ;

  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [19:19]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[19] ;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[19]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(\s_axi_rdata[19] ),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized12
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[18] ,
    \GEN_ECC.WrData_reg[18]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[18] ;
  input [0:0]\GEN_ECC.WrData_reg[18]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[18] ;
  wire [0:0]\GEN_ECC.WrData_reg[18]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[18]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[18] ),
        .I2(\GEN_ECC.WrData_reg[18]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized12_32
   (s_axi_rdata,
    S,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    \s_axi_rdata[18] );
  output [0:0]s_axi_rdata;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input \s_axi_rdata[18] ;

  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [18:18]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[18] ;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[18]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(\s_axi_rdata[18] ),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized13
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[17] ,
    \GEN_ECC.WrData_reg[17]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[17] ;
  input [0:0]\GEN_ECC.WrData_reg[17]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[17] ;
  wire [0:0]\GEN_ECC.WrData_reg[17]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[17]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[17] ),
        .I2(\GEN_ECC.WrData_reg[17]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized13_33
   (s_axi_rdata,
    S,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    \s_axi_rdata[17] );
  output [0:0]s_axi_rdata;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input \s_axi_rdata[17] ;

  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [17:17]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[17] ;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[17]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(\s_axi_rdata[17] ),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized14
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[16] ,
    \GEN_ECC.WrData_reg[16]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[16] ;
  input [0:0]\GEN_ECC.WrData_reg[16]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[16] ;
  wire [0:0]\GEN_ECC.WrData_reg[16]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[16]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[16] ),
        .I2(\GEN_ECC.WrData_reg[16]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized14_34
   (s_axi_rdata,
    S,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    \s_axi_rdata[16] );
  output [0:0]s_axi_rdata;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input \s_axi_rdata[16] ;

  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [16:16]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[16] ;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[16]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(\s_axi_rdata[16] ),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized15
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[15] ,
    \GEN_ECC.WrData_reg[15]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[15] ;
  input [0:0]\GEN_ECC.WrData_reg[15]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[15] ;
  wire [0:0]\GEN_ECC.WrData_reg[15]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[15]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[15] ),
        .I2(\GEN_ECC.WrData_reg[15]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized15_35
   (s_axi_rdata,
    S,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    \s_axi_rdata[15] );
  output [0:0]s_axi_rdata;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input \s_axi_rdata[15] ;

  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [15:15]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[15] ;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[15]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(\s_axi_rdata[15] ),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized16
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[14] ,
    \GEN_ECC.WrData_reg[14]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[14] ;
  input [0:0]\GEN_ECC.WrData_reg[14]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[14] ;
  wire [0:0]\GEN_ECC.WrData_reg[14]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[14]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[14] ),
        .I2(\GEN_ECC.WrData_reg[14]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized16_36
   (s_axi_rdata,
    S,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    \s_axi_rdata[14] );
  output [0:0]s_axi_rdata;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input \s_axi_rdata[14] ;

  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [14:14]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[14] ;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[14]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(\s_axi_rdata[14] ),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized17
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[13] ,
    \GEN_ECC.WrData_reg[13]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[13] ;
  input [0:0]\GEN_ECC.WrData_reg[13]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[13] ;
  wire [0:0]\GEN_ECC.WrData_reg[13]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[13]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[13] ),
        .I2(\GEN_ECC.WrData_reg[13]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized17_37
   (s_axi_rdata,
    S,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    \s_axi_rdata[13] );
  output [0:0]s_axi_rdata;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input \s_axi_rdata[13] ;

  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [13:13]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[13] ;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[13]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(\s_axi_rdata[13] ),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized18
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[12] ,
    \GEN_ECC.WrData_reg[12]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[12] ;
  input [0:0]\GEN_ECC.WrData_reg[12]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[12] ;
  wire [0:0]\GEN_ECC.WrData_reg[12]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[12]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[12] ),
        .I2(\GEN_ECC.WrData_reg[12]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized18_38
   (s_axi_rdata,
    S,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    \s_axi_rdata[12] );
  output [0:0]s_axi_rdata;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input \s_axi_rdata[12] ;

  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [12:12]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[12] ;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[12]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(\s_axi_rdata[12] ),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized19
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[11] ,
    \GEN_ECC.WrData_reg[11]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[11] ;
  input [0:0]\GEN_ECC.WrData_reg[11]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[11] ;
  wire [0:0]\GEN_ECC.WrData_reg[11]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[11]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[11] ),
        .I2(\GEN_ECC.WrData_reg[11]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized19_40
   (s_axi_rdata,
    S,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    \s_axi_rdata[11] );
  output [0:0]s_axi_rdata;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input \s_axi_rdata[11] ;

  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [11:11]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[11] ;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[11]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(\s_axi_rdata[11] ),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized1_50
   (s_axi_rdata,
    Corr_MUXCY_0,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    \s_axi_rdata[29] );
  output [0:0]s_axi_rdata;
  input Corr_MUXCY_0;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input \s_axi_rdata[29] ;

  wire Corr_MUXCY_0;
  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [29:29]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[29] ;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,Corr_MUXCY_0}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[29]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(\s_axi_rdata[29] ),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized2
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[28] ,
    \GEN_ECC.WrData_reg[28]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[28] ;
  input [0:0]\GEN_ECC.WrData_reg[28]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[28] ;
  wire [0:0]\GEN_ECC.WrData_reg[28]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[28]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[28] ),
        .I2(\GEN_ECC.WrData_reg[28]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized20
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[10] ,
    \GEN_ECC.WrData_reg[10]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[10] ;
  input [0:0]\GEN_ECC.WrData_reg[10]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[10] ;
  wire [0:0]\GEN_ECC.WrData_reg[10]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[10]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[10] ),
        .I2(\GEN_ECC.WrData_reg[10]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized20_41
   (s_axi_rdata,
    S,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    \s_axi_rdata[10] );
  output [0:0]s_axi_rdata;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input \s_axi_rdata[10] ;

  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [10:10]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[10] ;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[10]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(\s_axi_rdata[10] ),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized21
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[9] ,
    \GEN_ECC.WrData_reg[9]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[9] ;
  input [0:0]\GEN_ECC.WrData_reg[9]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[9] ;
  wire [0:0]\GEN_ECC.WrData_reg[9]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[9]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[9] ),
        .I2(\GEN_ECC.WrData_reg[9]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized21_42
   (s_axi_rdata,
    S,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    \s_axi_rdata[9] );
  output [0:0]s_axi_rdata;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input \s_axi_rdata[9] ;

  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [9:9]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[9] ;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[9]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(\s_axi_rdata[9] ),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized22
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[8] ,
    \GEN_ECC.WrData_reg[8]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[8] ;
  input [0:0]\GEN_ECC.WrData_reg[8]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[8] ;
  wire [0:0]\GEN_ECC.WrData_reg[8]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[8]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[8] ),
        .I2(\GEN_ECC.WrData_reg[8]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized22_43
   (s_axi_rdata,
    S,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    \s_axi_rdata[8] );
  output [0:0]s_axi_rdata;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input \s_axi_rdata[8] ;

  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [8:8]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[8] ;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[8]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(\s_axi_rdata[8] ),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized23
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[7] ,
    \GEN_ECC.WrData_reg[7]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[7] ;
  input [0:0]\GEN_ECC.WrData_reg[7]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[7] ;
  wire [0:0]\GEN_ECC.WrData_reg[7]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[7]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[7] ),
        .I2(\GEN_ECC.WrData_reg[7]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized23_44
   (s_axi_rdata,
    S,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    \s_axi_rdata[7] );
  output [0:0]s_axi_rdata;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input \s_axi_rdata[7] ;

  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [7:7]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[7] ;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[7]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(\s_axi_rdata[7] ),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized24
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[6] ,
    \GEN_ECC.WrData_reg[6]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[6] ;
  input [0:0]\GEN_ECC.WrData_reg[6]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[6] ;
  wire [0:0]\GEN_ECC.WrData_reg[6]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[6]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[6] ),
        .I2(\GEN_ECC.WrData_reg[6]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized24_45
   (s_axi_rdata,
    S,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    \s_axi_rdata[6] );
  output [0:0]s_axi_rdata;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input \s_axi_rdata[6] ;

  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [6:6]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[6] ;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[6]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(\s_axi_rdata[6] ),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized25
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[5] ,
    \GEN_ECC.WrData_reg[5]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[5] ;
  input [0:0]\GEN_ECC.WrData_reg[5]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[5] ;
  wire [0:0]\GEN_ECC.WrData_reg[5]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[5]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[5] ),
        .I2(\GEN_ECC.WrData_reg[5]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized25_46
   (s_axi_rdata,
    S,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    \s_axi_rdata[5] );
  output [0:0]s_axi_rdata;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input \s_axi_rdata[5] ;

  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [5:5]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[5] ;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[5]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(\s_axi_rdata[5] ),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized26
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[4] ,
    \GEN_ECC.WrData_reg[4]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[4] ;
  input [0:0]\GEN_ECC.WrData_reg[4]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[4] ;
  wire [0:0]\GEN_ECC.WrData_reg[4]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[4]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[4] ),
        .I2(\GEN_ECC.WrData_reg[4]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized26_47
   (s_axi_rdata,
    S,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    \s_axi_rdata[4] );
  output [0:0]s_axi_rdata;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input \s_axi_rdata[4] ;

  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [4:4]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[4] ;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[4]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(\s_axi_rdata[4] ),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized27
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[3] ,
    \GEN_ECC.WrData_reg[3]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[3] ;
  input [0:0]\GEN_ECC.WrData_reg[3]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[3] ;
  wire [0:0]\GEN_ECC.WrData_reg[3]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[3]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[3] ),
        .I2(\GEN_ECC.WrData_reg[3]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized27_48
   (s_axi_rdata,
    S,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    \s_axi_rdata[3] );
  output [0:0]s_axi_rdata;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input \s_axi_rdata[3] ;

  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [3:3]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[3] ;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[3]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(\s_axi_rdata[3] ),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized28
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[2] ,
    \GEN_ECC.WrData_reg[2]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[2] ;
  input [0:0]\GEN_ECC.WrData_reg[2]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[2] ;
  wire [0:0]\GEN_ECC.WrData_reg[2]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[2]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[2] ),
        .I2(\GEN_ECC.WrData_reg[2]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized28_49
   (s_axi_rdata,
    S,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    \s_axi_rdata[2] );
  output [0:0]s_axi_rdata;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input \s_axi_rdata[2] ;

  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [2:2]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[2] ;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[2]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(\s_axi_rdata[2] ),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized29
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[1] ,
    \GEN_ECC.WrData_reg[1]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[1] ;
  input [0:0]\GEN_ECC.WrData_reg[1]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[1] ;
  wire [0:0]\GEN_ECC.WrData_reg[1]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[1]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[1] ),
        .I2(\GEN_ECC.WrData_reg[1]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized29_51
   (s_axi_rdata,
    S,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    \s_axi_rdata[1] );
  output [0:0]s_axi_rdata;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input \s_axi_rdata[1] ;

  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [1:1]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[1] ;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[1]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(\s_axi_rdata[1] ),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized2_53
   (s_axi_rdata,
    Corr_MUXCY_0,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    \s_axi_rdata[28] );
  output [0:0]s_axi_rdata;
  input Corr_MUXCY_0;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input \s_axi_rdata[28] ;

  wire Corr_MUXCY_0;
  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [28:28]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[28] ;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,Corr_MUXCY_0}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[28]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(\s_axi_rdata[28] ),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized3
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[27] ,
    \GEN_ECC.WrData_reg[27]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[27] ;
  input [0:0]\GEN_ECC.WrData_reg[27]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[27] ;
  wire [0:0]\GEN_ECC.WrData_reg[27]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[27]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[27] ),
        .I2(\GEN_ECC.WrData_reg[27]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized30
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[0] ,
    \GEN_ECC.WrData_reg[0]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[0] ;
  input [0:0]\GEN_ECC.WrData_reg[0]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[0] ;
  wire [0:0]\GEN_ECC.WrData_reg[0]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[0]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[0] ),
        .I2(\GEN_ECC.WrData_reg[0]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized30_52
   (s_axi_rdata,
    S,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    s_axi_rdata_0_sp_1);
  output [0:0]s_axi_rdata;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input s_axi_rdata_0_sp_1;

  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [0:0]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire s_axi_rdata_0_sn_1;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  assign s_axi_rdata_0_sn_1 = s_axi_rdata_0_sp_1;
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[0]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(s_axi_rdata_0_sn_1),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized3_54
   (s_axi_rdata,
    S,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    \s_axi_rdata[27] );
  output [0:0]s_axi_rdata;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input \s_axi_rdata[27] ;

  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [27:27]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[27] ;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[27]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(\s_axi_rdata[27] ),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized4
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[26] ,
    \GEN_ECC.WrData_reg[26]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[26] ;
  input [0:0]\GEN_ECC.WrData_reg[26]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[26] ;
  wire [0:0]\GEN_ECC.WrData_reg[26]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[26]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[26] ),
        .I2(\GEN_ECC.WrData_reg[26]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized4_55
   (s_axi_rdata,
    S,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    \s_axi_rdata[26] );
  output [0:0]s_axi_rdata;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input \s_axi_rdata[26] ;

  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [26:26]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[26] ;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[26]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(\s_axi_rdata[26] ),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized5
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[25] ,
    \GEN_ECC.WrData_reg[25]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[25] ;
  input [0:0]\GEN_ECC.WrData_reg[25]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[25] ;
  wire [0:0]\GEN_ECC.WrData_reg[25]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[25]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[25] ),
        .I2(\GEN_ECC.WrData_reg[25]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized5_56
   (s_axi_rdata,
    S,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    \s_axi_rdata[25] );
  output [0:0]s_axi_rdata;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input \s_axi_rdata[25] ;

  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [25:25]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[25] ;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[25]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(\s_axi_rdata[25] ),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized6
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[24] ,
    \GEN_ECC.WrData_reg[24]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[24] ;
  input [0:0]\GEN_ECC.WrData_reg[24]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[24] ;
  wire [0:0]\GEN_ECC.WrData_reg[24]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[24]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[24] ),
        .I2(\GEN_ECC.WrData_reg[24]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized6_57
   (s_axi_rdata,
    S,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    \s_axi_rdata[24] );
  output [0:0]s_axi_rdata;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input \s_axi_rdata[24] ;

  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [24:24]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[24] ;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[24]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(\s_axi_rdata[24] ),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized7
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[23] ,
    \GEN_ECC.WrData_reg[23]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[23] ;
  input [0:0]\GEN_ECC.WrData_reg[23]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[23] ;
  wire [0:0]\GEN_ECC.WrData_reg[23]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[23]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[23] ),
        .I2(\GEN_ECC.WrData_reg[23]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized7_58
   (s_axi_rdata,
    S,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    \s_axi_rdata[23] );
  output [0:0]s_axi_rdata;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input \s_axi_rdata[23] ;

  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [23:23]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[23] ;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[23]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(\s_axi_rdata[23] ),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized8
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[22] ,
    \GEN_ECC.WrData_reg[22]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[22] ;
  input [0:0]\GEN_ECC.WrData_reg[22]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[22] ;
  wire [0:0]\GEN_ECC.WrData_reg[22]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[22]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[22] ),
        .I2(\GEN_ECC.WrData_reg[22]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized8_59
   (s_axi_rdata,
    S,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    \s_axi_rdata[22] );
  output [0:0]s_axi_rdata;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input \s_axi_rdata[22] ;

  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [22:22]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[22] ;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[22]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(\s_axi_rdata[22] ),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized9
   (D,
    S,
    Q,
    Corr_XORCY_0,
    \GEN_ECC.WrData_reg[21] ,
    \GEN_ECC.WrData_reg[21]_0 ,
    p_4_in);
  output [0:0]D;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input [0:0]\GEN_ECC.WrData_reg[21] ;
  input [0:0]\GEN_ECC.WrData_reg[21]_0 ;
  input [0:0]p_4_in;

  wire [0:0]Corr_XORCY_0;
  wire Corr_XORCY_n_0;
  wire [0:0]D;
  wire [0:0]\GEN_ECC.WrData_reg[21] ;
  wire [0:0]\GEN_ECC.WrData_reg[21]_0 ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]p_4_in;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],Corr_XORCY_n_0,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_ECC.WrData[21]_i_1 
       (.I0(Corr_XORCY_n_0),
        .I1(\GEN_ECC.WrData_reg[21] ),
        .I2(\GEN_ECC.WrData_reg[21]_0 ),
        .I3(p_4_in),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Correct_One_Bit" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized9_29
   (s_axi_rdata,
    S,
    Q,
    Corr_XORCY_0,
    Enable_ECC,
    \s_axi_rdata[21] );
  output [0:0]s_axi_rdata;
  input S;
  input [0:0]Q;
  input [0:0]Corr_XORCY_0;
  input Enable_ECC;
  input \s_axi_rdata[21] ;

  wire [0:0]Corr_XORCY_0;
  wire Enable_ECC;
  wire [21:21]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ;
  wire [0:0]Q;
  wire S;
  wire corr_c;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[21] ;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 Corr_MUXCY_CARRY4
       (.CI(1'b0),
        .CO({NLW_Corr_MUXCY_CARRY4_CO_UNCONNECTED[3:1],corr_c}),
        .CYINIT(1'b0),
        .DI({NLW_Corr_MUXCY_CARRY4_DI_UNCONNECTED[3:1],Q}),
        .O({NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[3:2],\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ,NLW_Corr_MUXCY_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_Corr_MUXCY_CARRY4_S_UNCONNECTED[3:2],Corr_XORCY_0,S}));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_rdata[21]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.axi_rdata_int_corr ),
        .I1(Enable_ECC),
        .I2(\s_axi_rdata[21] ),
        .I3(Corr_XORCY_0),
        .O(s_axi_rdata));
endmodule

module bd_bram_ecc_axi_bram_ctrl_1_0_Parity
   (\Using_LUT6.Single_LUT6.XOR6_LUT_0 ,
    S,
    S_0,
    S_1,
    S_2,
    S_3,
    S_4,
    S_5,
    S_6,
    S_7,
    S_8,
    S_9,
    S_10,
    S_11,
    Q,
    \GEN_ECC.syndrome_reg_i );
  output [0:0]\Using_LUT6.Single_LUT6.XOR6_LUT_0 ;
  output S;
  output S_0;
  output S_1;
  output S_2;
  output S_3;
  output S_4;
  output S_5;
  output S_6;
  output S_7;
  output S_8;
  output S_9;
  output S_10;
  output S_11;
  input [5:0]Q;
  input [5:0]\GEN_ECC.syndrome_reg_i ;

  wire [5:0]\GEN_ECC.syndrome_reg_i ;
  wire [5:0]Q;
  wire S;
  wire S_0;
  wire S_1;
  wire S_10;
  wire S_11;
  wire S_2;
  wire S_3;
  wire S_4;
  wire S_5;
  wire S_6;
  wire S_7;
  wire S_8;
  wire S_9;
  wire [0:0]\Using_LUT6.Single_LUT6.XOR6_LUT_0 ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFF)) 
    Corr_MUXCY_i_1__1
       (.I0(\GEN_ECC.syndrome_reg_i [0]),
        .I1(\GEN_ECC.syndrome_reg_i [4]),
        .I2(\GEN_ECC.syndrome_reg_i [3]),
        .I3(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ),
        .I4(\GEN_ECC.syndrome_reg_i [1]),
        .I5(\GEN_ECC.syndrome_reg_i [2]),
        .O(S));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    Corr_MUXCY_i_1__11
       (.I0(\GEN_ECC.syndrome_reg_i [0]),
        .I1(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ),
        .I2(\GEN_ECC.syndrome_reg_i [2]),
        .I3(\GEN_ECC.syndrome_reg_i [5]),
        .I4(\GEN_ECC.syndrome_reg_i [3]),
        .I5(\GEN_ECC.syndrome_reg_i [1]),
        .O(S_2));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    Corr_MUXCY_i_1__12
       (.I0(\GEN_ECC.syndrome_reg_i [0]),
        .I1(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ),
        .I2(\GEN_ECC.syndrome_reg_i [2]),
        .I3(\GEN_ECC.syndrome_reg_i [5]),
        .I4(\GEN_ECC.syndrome_reg_i [3]),
        .I5(\GEN_ECC.syndrome_reg_i [1]),
        .O(S_3));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    Corr_MUXCY_i_1__14
       (.I0(\GEN_ECC.syndrome_reg_i [3]),
        .I1(\GEN_ECC.syndrome_reg_i [4]),
        .I2(\GEN_ECC.syndrome_reg_i [0]),
        .I3(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ),
        .I4(\GEN_ECC.syndrome_reg_i [1]),
        .I5(\GEN_ECC.syndrome_reg_i [2]),
        .O(S_4));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    Corr_MUXCY_i_1__21
       (.I0(\GEN_ECC.syndrome_reg_i [4]),
        .I1(\GEN_ECC.syndrome_reg_i [2]),
        .I2(\GEN_ECC.syndrome_reg_i [0]),
        .I3(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ),
        .I4(\GEN_ECC.syndrome_reg_i [1]),
        .I5(\GEN_ECC.syndrome_reg_i [5]),
        .O(S_5));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    Corr_MUXCY_i_1__23
       (.I0(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ),
        .I1(\GEN_ECC.syndrome_reg_i [3]),
        .I2(\GEN_ECC.syndrome_reg_i [1]),
        .I3(\GEN_ECC.syndrome_reg_i [4]),
        .I4(\GEN_ECC.syndrome_reg_i [2]),
        .I5(\GEN_ECC.syndrome_reg_i [0]),
        .O(S_6));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    Corr_MUXCY_i_1__25
       (.I0(\GEN_ECC.syndrome_reg_i [0]),
        .I1(\GEN_ECC.syndrome_reg_i [5]),
        .I2(\GEN_ECC.syndrome_reg_i [3]),
        .I3(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ),
        .I4(\GEN_ECC.syndrome_reg_i [1]),
        .I5(\GEN_ECC.syndrome_reg_i [2]),
        .O(S_7));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    Corr_MUXCY_i_1__27
       (.I0(\GEN_ECC.syndrome_reg_i [0]),
        .I1(\GEN_ECC.syndrome_reg_i [4]),
        .I2(\GEN_ECC.syndrome_reg_i [3]),
        .I3(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ),
        .I4(\GEN_ECC.syndrome_reg_i [1]),
        .I5(\GEN_ECC.syndrome_reg_i [2]),
        .O(S_8));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    Corr_MUXCY_i_1__28
       (.I0(\GEN_ECC.syndrome_reg_i [0]),
        .I1(\GEN_ECC.syndrome_reg_i [4]),
        .I2(\GEN_ECC.syndrome_reg_i [3]),
        .I3(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ),
        .I4(\GEN_ECC.syndrome_reg_i [1]),
        .I5(\GEN_ECC.syndrome_reg_i [2]),
        .O(S_9));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    Corr_MUXCY_i_1__29
       (.I0(\GEN_ECC.syndrome_reg_i [0]),
        .I1(\GEN_ECC.syndrome_reg_i [4]),
        .I2(\GEN_ECC.syndrome_reg_i [3]),
        .I3(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ),
        .I4(\GEN_ECC.syndrome_reg_i [2]),
        .I5(\GEN_ECC.syndrome_reg_i [1]),
        .O(S_10));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    Corr_MUXCY_i_1__3
       (.I0(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ),
        .I1(\GEN_ECC.syndrome_reg_i [0]),
        .I2(\GEN_ECC.syndrome_reg_i [2]),
        .I3(\GEN_ECC.syndrome_reg_i [1]),
        .I4(\GEN_ECC.syndrome_reg_i [3]),
        .I5(\GEN_ECC.syndrome_reg_i [4]),
        .O(S_0));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    Corr_MUXCY_i_1__30
       (.I0(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ),
        .I1(\GEN_ECC.syndrome_reg_i [1]),
        .I2(\GEN_ECC.syndrome_reg_i [3]),
        .I3(\GEN_ECC.syndrome_reg_i [2]),
        .I4(\GEN_ECC.syndrome_reg_i [0]),
        .I5(\GEN_ECC.syndrome_reg_i [4]),
        .O(S_11));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    Corr_MUXCY_i_1__7
       (.I0(\GEN_ECC.syndrome_reg_i [2]),
        .I1(\GEN_ECC.syndrome_reg_i [4]),
        .I2(\GEN_ECC.syndrome_reg_i [0]),
        .I3(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ),
        .I4(\GEN_ECC.syndrome_reg_i [1]),
        .I5(\GEN_ECC.syndrome_reg_i [3]),
        .O(S_1));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity_0
   (bram_wrdata_a,
    Q);
  output [0:0]bram_wrdata_a;
  input [5:0]Q;

  wire [5:0]Q;
  wire [0:0]bram_wrdata_a;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(bram_wrdata_a));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity_10
   (\Decode_Bits.chk1_1 ,
    bram_rddata_a);
  output [0:0]\Decode_Bits.chk1_1 ;
  input [5:0]bram_rddata_a;

  wire [0:0]\Decode_Bits.chk1_1 ;
  wire [5:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(bram_rddata_a[0]),
        .I1(bram_rddata_a[1]),
        .I2(bram_rddata_a[2]),
        .I3(bram_rddata_a[3]),
        .I4(bram_rddata_a[4]),
        .I5(bram_rddata_a[5]),
        .O(\Decode_Bits.chk1_1 ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity_11
   (\Decode_Bits.chk1_1 ,
    bram_rddata_a);
  output [0:0]\Decode_Bits.chk1_1 ;
  input [5:0]bram_rddata_a;

  wire [0:0]\Decode_Bits.chk1_1 ;
  wire [5:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(bram_rddata_a[0]),
        .I1(bram_rddata_a[1]),
        .I2(bram_rddata_a[2]),
        .I3(bram_rddata_a[3]),
        .I4(bram_rddata_a[4]),
        .I5(bram_rddata_a[5]),
        .O(\Decode_Bits.chk1_1 ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity_13
   (\Decode_Bits.chk2_1 ,
    bram_rddata_a);
  output [0:0]\Decode_Bits.chk2_1 ;
  input [5:0]bram_rddata_a;

  wire [0:0]\Decode_Bits.chk2_1 ;
  wire [5:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(bram_rddata_a[0]),
        .I1(bram_rddata_a[1]),
        .I2(bram_rddata_a[2]),
        .I3(bram_rddata_a[3]),
        .I4(bram_rddata_a[4]),
        .I5(bram_rddata_a[5]),
        .O(\Decode_Bits.chk2_1 ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity_14
   (\Decode_Bits.chk2_1 ,
    bram_rddata_a);
  output [0:0]\Decode_Bits.chk2_1 ;
  input [5:0]bram_rddata_a;

  wire [0:0]\Decode_Bits.chk2_1 ;
  wire [5:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(bram_rddata_a[0]),
        .I1(bram_rddata_a[1]),
        .I2(bram_rddata_a[2]),
        .I3(bram_rddata_a[3]),
        .I4(bram_rddata_a[4]),
        .I5(bram_rddata_a[5]),
        .O(\Decode_Bits.chk2_1 ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity_15
   (\Decode_Bits.chk2_1 ,
    bram_rddata_a);
  output [0:0]\Decode_Bits.chk2_1 ;
  input [5:0]bram_rddata_a;

  wire [0:0]\Decode_Bits.chk2_1 ;
  wire [5:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(bram_rddata_a[0]),
        .I1(bram_rddata_a[1]),
        .I2(bram_rddata_a[2]),
        .I3(bram_rddata_a[3]),
        .I4(bram_rddata_a[4]),
        .I5(bram_rddata_a[5]),
        .O(\Decode_Bits.chk2_1 ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity_21
   (\Using_LUT6.Single_LUT6.XOR6_LUT_0 ,
    bram_rddata_a);
  output [0:0]\Using_LUT6.Single_LUT6.XOR6_LUT_0 ;
  input [5:0]bram_rddata_a;

  wire [0:0]\Using_LUT6.Single_LUT6.XOR6_LUT_0 ;
  wire [5:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(bram_rddata_a[0]),
        .I1(bram_rddata_a[1]),
        .I2(bram_rddata_a[2]),
        .I3(bram_rddata_a[3]),
        .I4(bram_rddata_a[4]),
        .I5(bram_rddata_a[5]),
        .O(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity_22
   (\Using_LUT6.Single_LUT6.XOR6_LUT_0 ,
    bram_rddata_a);
  output [0:0]\Using_LUT6.Single_LUT6.XOR6_LUT_0 ;
  input [5:0]bram_rddata_a;

  wire [0:0]\Using_LUT6.Single_LUT6.XOR6_LUT_0 ;
  wire [5:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(bram_rddata_a[0]),
        .I1(bram_rddata_a[1]),
        .I2(bram_rddata_a[2]),
        .I3(bram_rddata_a[3]),
        .I4(bram_rddata_a[4]),
        .I5(bram_rddata_a[5]),
        .O(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity_23
   (\Using_LUT6.Single_LUT6.XOR6_LUT_0 ,
    bram_rddata_a);
  output [0:0]\Using_LUT6.Single_LUT6.XOR6_LUT_0 ;
  input [5:0]bram_rddata_a;

  wire [0:0]\Using_LUT6.Single_LUT6.XOR6_LUT_0 ;
  wire [5:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(bram_rddata_a[0]),
        .I1(bram_rddata_a[1]),
        .I2(bram_rddata_a[2]),
        .I3(bram_rddata_a[3]),
        .I4(bram_rddata_a[4]),
        .I5(bram_rddata_a[5]),
        .O(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity_6
   (Res,
    bram_rddata_a);
  output Res;
  input [5:0]bram_rddata_a;

  wire Res;
  wire [5:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(bram_rddata_a[0]),
        .I1(bram_rddata_a[1]),
        .I2(bram_rddata_a[2]),
        .I3(bram_rddata_a[3]),
        .I4(bram_rddata_a[4]),
        .I5(bram_rddata_a[5]),
        .O(Res));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity_61
   (\Using_LUT6.Single_LUT6.XOR6_LUT_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[5] ,
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[5]_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[2] ,
    S,
    S_0,
    S_1,
    S_2,
    S_3,
    S_4,
    S_5,
    S_6,
    S_7,
    S_8,
    S_9,
    Q,
    Corr_MUXCY,
    syndrome_reg_i);
  output [0:0]\Using_LUT6.Single_LUT6.XOR6_LUT_0 ;
  output \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[5] ;
  output \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[5]_0 ;
  output \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[2] ;
  output S;
  output S_0;
  output S_1;
  output S_2;
  output S_3;
  output S_4;
  output S_5;
  output S_6;
  output S_7;
  output S_8;
  output S_9;
  input [5:0]Q;
  input [4:0]Corr_MUXCY;
  input [0:0]syndrome_reg_i;

  wire [4:0]Corr_MUXCY;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[2] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[5] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[5]_0 ;
  wire [5:0]Q;
  wire S;
  wire S_0;
  wire S_1;
  wire S_2;
  wire S_3;
  wire S_4;
  wire S_5;
  wire S_6;
  wire S_7;
  wire S_8;
  wire S_9;
  wire [0:0]\Using_LUT6.Single_LUT6.XOR6_LUT_0 ;
  wire [0:0]syndrome_reg_i;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    Corr_MUXCY_i_1__36
       (.I0(Corr_MUXCY[1]),
        .I1(Corr_MUXCY[2]),
        .I2(Corr_MUXCY[3]),
        .I3(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ),
        .I4(Corr_MUXCY[0]),
        .I5(syndrome_reg_i),
        .O(S));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    Corr_MUXCY_i_1__38
       (.I0(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ),
        .I1(Corr_MUXCY[2]),
        .I2(Corr_MUXCY[1]),
        .I3(syndrome_reg_i),
        .I4(Corr_MUXCY[0]),
        .I5(Corr_MUXCY[3]),
        .O(S_0));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    Corr_MUXCY_i_1__42
       (.I0(Corr_MUXCY[0]),
        .I1(Corr_MUXCY[4]),
        .I2(Corr_MUXCY[2]),
        .I3(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ),
        .I4(syndrome_reg_i),
        .I5(Corr_MUXCY[1]),
        .O(S_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
    Corr_MUXCY_i_1__43
       (.I0(Corr_MUXCY[0]),
        .I1(Corr_MUXCY[4]),
        .I2(Corr_MUXCY[2]),
        .I3(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ),
        .I4(Corr_MUXCY[1]),
        .I5(syndrome_reg_i),
        .O(S_2));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    Corr_MUXCY_i_1__48
       (.I0(Corr_MUXCY[2]),
        .I1(Corr_MUXCY[3]),
        .I2(Corr_MUXCY[0]),
        .I3(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ),
        .I4(syndrome_reg_i),
        .I5(Corr_MUXCY[1]),
        .O(S_3));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7FFFFFF)) 
    Corr_MUXCY_i_1__49
       (.I0(Corr_MUXCY[2]),
        .I1(Corr_MUXCY[3]),
        .I2(Corr_MUXCY[0]),
        .I3(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ),
        .I4(Corr_MUXCY[1]),
        .I5(syndrome_reg_i),
        .O(S_4));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    Corr_MUXCY_i_1__52
       (.I0(Corr_MUXCY[1]),
        .I1(Corr_MUXCY[3]),
        .I2(Corr_MUXCY[0]),
        .I3(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ),
        .I4(syndrome_reg_i),
        .I5(Corr_MUXCY[2]),
        .O(S_5));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    Corr_MUXCY_i_1__53
       (.I0(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ),
        .I1(Corr_MUXCY[0]),
        .I2(Corr_MUXCY[1]),
        .I3(Corr_MUXCY[3]),
        .I4(syndrome_reg_i),
        .I5(Corr_MUXCY[2]),
        .O(S_6));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDFFFFFF)) 
    Corr_MUXCY_i_1__57
       (.I0(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ),
        .I1(Corr_MUXCY[1]),
        .I2(Corr_MUXCY[4]),
        .I3(syndrome_reg_i),
        .I4(Corr_MUXCY[2]),
        .I5(Corr_MUXCY[0]),
        .O(S_7));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    Corr_MUXCY_i_1__58
       (.I0(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ),
        .I1(Corr_MUXCY[1]),
        .I2(Corr_MUXCY[4]),
        .I3(Corr_MUXCY[0]),
        .I4(syndrome_reg_i),
        .I5(Corr_MUXCY[2]),
        .O(S_8));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    Corr_MUXCY_i_1__59
       (.I0(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ),
        .I1(Corr_MUXCY[0]),
        .I2(Corr_MUXCY[1]),
        .I3(Corr_MUXCY[4]),
        .I4(syndrome_reg_i),
        .I5(Corr_MUXCY[3]),
        .O(S_9));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    Corr_MUXCY_i_1__60
       (.I0(Corr_MUXCY[0]),
        .I1(Corr_MUXCY[3]),
        .I2(Corr_MUXCY[2]),
        .I3(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ),
        .I4(syndrome_reg_i),
        .I5(Corr_MUXCY[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[5] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    Corr_MUXCY_i_1__61
       (.I0(Corr_MUXCY[0]),
        .I1(Corr_MUXCY[4]),
        .I2(Corr_MUXCY[2]),
        .I3(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ),
        .I4(syndrome_reg_i),
        .I5(Corr_MUXCY[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    Corr_MUXCY_i_1__62
       (.I0(Corr_MUXCY[2]),
        .I1(Corr_MUXCY[3]),
        .I2(Corr_MUXCY[0]),
        .I3(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ),
        .I4(syndrome_reg_i),
        .I5(Corr_MUXCY[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[2] ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity_63
   (Res,
    bram_rddata_a);
  output Res;
  input [5:0]bram_rddata_a;

  wire Res;
  wire [5:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(bram_rddata_a[0]),
        .I1(bram_rddata_a[1]),
        .I2(bram_rddata_a[2]),
        .I3(bram_rddata_a[3]),
        .I4(bram_rddata_a[4]),
        .I5(bram_rddata_a[5]),
        .O(Res));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity_64
   (\Using_LUT6.Single_LUT6.XOR6_LUT_0 ,
    bram_rddata_a);
  output \Using_LUT6.Single_LUT6.XOR6_LUT_0 ;
  input [5:0]bram_rddata_a;

  wire \Using_LUT6.Single_LUT6.XOR6_LUT_0 ;
  wire [5:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(bram_rddata_a[0]),
        .I1(bram_rddata_a[1]),
        .I2(bram_rddata_a[2]),
        .I3(bram_rddata_a[3]),
        .I4(bram_rddata_a[4]),
        .I5(bram_rddata_a[5]),
        .O(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity_65
   (\Using_LUT6.Single_LUT6.XOR6_LUT_0 ,
    bram_rddata_a);
  output \Using_LUT6.Single_LUT6.XOR6_LUT_0 ;
  input [5:0]bram_rddata_a;

  wire \Using_LUT6.Single_LUT6.XOR6_LUT_0 ;
  wire [5:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(bram_rddata_a[0]),
        .I1(bram_rddata_a[1]),
        .I2(bram_rddata_a[2]),
        .I3(bram_rddata_a[3]),
        .I4(bram_rddata_a[4]),
        .I5(bram_rddata_a[5]),
        .O(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity_67
   (\Decode_Bits.chk1_1 ,
    bram_rddata_a);
  output [0:0]\Decode_Bits.chk1_1 ;
  input [5:0]bram_rddata_a;

  wire [0:0]\Decode_Bits.chk1_1 ;
  wire [5:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(bram_rddata_a[0]),
        .I1(bram_rddata_a[1]),
        .I2(bram_rddata_a[2]),
        .I3(bram_rddata_a[3]),
        .I4(bram_rddata_a[4]),
        .I5(bram_rddata_a[5]),
        .O(\Decode_Bits.chk1_1 ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity_68
   (\Decode_Bits.chk1_1 ,
    bram_rddata_a);
  output [0:0]\Decode_Bits.chk1_1 ;
  input [5:0]bram_rddata_a;

  wire [0:0]\Decode_Bits.chk1_1 ;
  wire [5:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(bram_rddata_a[0]),
        .I1(bram_rddata_a[1]),
        .I2(bram_rddata_a[2]),
        .I3(bram_rddata_a[3]),
        .I4(bram_rddata_a[4]),
        .I5(bram_rddata_a[5]),
        .O(\Decode_Bits.chk1_1 ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity_69
   (\Decode_Bits.chk1_1 ,
    bram_rddata_a);
  output [0:0]\Decode_Bits.chk1_1 ;
  input [5:0]bram_rddata_a;

  wire [0:0]\Decode_Bits.chk1_1 ;
  wire [5:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(bram_rddata_a[0]),
        .I1(bram_rddata_a[1]),
        .I2(bram_rddata_a[2]),
        .I3(bram_rddata_a[3]),
        .I4(bram_rddata_a[4]),
        .I5(bram_rddata_a[5]),
        .O(\Decode_Bits.chk1_1 ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity_7
   (\Using_LUT6.Single_LUT6.XOR6_LUT_0 ,
    bram_rddata_a);
  output \Using_LUT6.Single_LUT6.XOR6_LUT_0 ;
  input [5:0]bram_rddata_a;

  wire \Using_LUT6.Single_LUT6.XOR6_LUT_0 ;
  wire [5:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(bram_rddata_a[0]),
        .I1(bram_rddata_a[1]),
        .I2(bram_rddata_a[2]),
        .I3(bram_rddata_a[3]),
        .I4(bram_rddata_a[4]),
        .I5(bram_rddata_a[5]),
        .O(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity_71
   (\Decode_Bits.chk2_1 ,
    bram_rddata_a);
  output [0:0]\Decode_Bits.chk2_1 ;
  input [5:0]bram_rddata_a;

  wire [0:0]\Decode_Bits.chk2_1 ;
  wire [5:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(bram_rddata_a[0]),
        .I1(bram_rddata_a[1]),
        .I2(bram_rddata_a[2]),
        .I3(bram_rddata_a[3]),
        .I4(bram_rddata_a[4]),
        .I5(bram_rddata_a[5]),
        .O(\Decode_Bits.chk2_1 ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity_72
   (\Decode_Bits.chk2_1 ,
    bram_rddata_a);
  output [0:0]\Decode_Bits.chk2_1 ;
  input [5:0]bram_rddata_a;

  wire [0:0]\Decode_Bits.chk2_1 ;
  wire [5:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(bram_rddata_a[0]),
        .I1(bram_rddata_a[1]),
        .I2(bram_rddata_a[2]),
        .I3(bram_rddata_a[3]),
        .I4(bram_rddata_a[4]),
        .I5(bram_rddata_a[5]),
        .O(\Decode_Bits.chk2_1 ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity_73
   (\Decode_Bits.chk2_1 ,
    bram_rddata_a);
  output [0:0]\Decode_Bits.chk2_1 ;
  input [5:0]bram_rddata_a;

  wire [0:0]\Decode_Bits.chk2_1 ;
  wire [5:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(bram_rddata_a[0]),
        .I1(bram_rddata_a[1]),
        .I2(bram_rddata_a[2]),
        .I3(bram_rddata_a[3]),
        .I4(bram_rddata_a[4]),
        .I5(bram_rddata_a[5]),
        .O(\Decode_Bits.chk2_1 ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity_8
   (\Using_LUT6.Single_LUT6.XOR6_LUT_0 ,
    bram_rddata_a);
  output \Using_LUT6.Single_LUT6.XOR6_LUT_0 ;
  input [5:0]bram_rddata_a;

  wire \Using_LUT6.Single_LUT6.XOR6_LUT_0 ;
  wire [5:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(bram_rddata_a[0]),
        .I1(bram_rddata_a[1]),
        .I2(bram_rddata_a[2]),
        .I3(bram_rddata_a[3]),
        .I4(bram_rddata_a[4]),
        .I5(bram_rddata_a[5]),
        .O(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity_81
   (\Using_LUT6.Single_LUT6.XOR6_LUT_0 ,
    bram_rddata_a);
  output [0:0]\Using_LUT6.Single_LUT6.XOR6_LUT_0 ;
  input [5:0]bram_rddata_a;

  wire [0:0]\Using_LUT6.Single_LUT6.XOR6_LUT_0 ;
  wire [5:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(bram_rddata_a[0]),
        .I1(bram_rddata_a[1]),
        .I2(bram_rddata_a[2]),
        .I3(bram_rddata_a[3]),
        .I4(bram_rddata_a[4]),
        .I5(bram_rddata_a[5]),
        .O(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity_82
   (\Using_LUT6.Single_LUT6.XOR6_LUT_0 ,
    bram_rddata_a);
  output [0:0]\Using_LUT6.Single_LUT6.XOR6_LUT_0 ;
  input [5:0]bram_rddata_a;

  wire [0:0]\Using_LUT6.Single_LUT6.XOR6_LUT_0 ;
  wire [5:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(bram_rddata_a[0]),
        .I1(bram_rddata_a[1]),
        .I2(bram_rddata_a[2]),
        .I3(bram_rddata_a[3]),
        .I4(bram_rddata_a[4]),
        .I5(bram_rddata_a[5]),
        .O(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity_83
   (\Using_LUT6.Single_LUT6.XOR6_LUT_0 ,
    bram_rddata_a);
  output [0:0]\Using_LUT6.Single_LUT6.XOR6_LUT_0 ;
  input [5:0]bram_rddata_a;

  wire [0:0]\Using_LUT6.Single_LUT6.XOR6_LUT_0 ;
  wire [5:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(bram_rddata_a[0]),
        .I1(bram_rddata_a[1]),
        .I2(bram_rddata_a[2]),
        .I3(bram_rddata_a[3]),
        .I4(bram_rddata_a[4]),
        .I5(bram_rddata_a[5]),
        .O(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity_9
   (\Decode_Bits.chk1_1 ,
    bram_rddata_a);
  output [0:0]\Decode_Bits.chk1_1 ;
  input [5:0]bram_rddata_a;

  wire [0:0]\Decode_Bits.chk1_1 ;
  wire [5:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(bram_rddata_a[0]),
        .I1(bram_rddata_a[1]),
        .I2(bram_rddata_a[2]),
        .I3(bram_rddata_a[3]),
        .I4(bram_rddata_a[4]),
        .I5(bram_rddata_a[5]),
        .O(\Decode_Bits.chk1_1 ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized2
   (D,
    bram_rddata_a,
    \Using_LUT6.Single_LUT6.XOR6_LUT_0 ,
    \Using_LUT6.Single_LUT6.XOR6_LUT_1 ,
    Res);
  output [0:0]D;
  input [0:0]bram_rddata_a;
  input \Using_LUT6.Single_LUT6.XOR6_LUT_0 ;
  input \Using_LUT6.Single_LUT6.XOR6_LUT_1 ;
  input Res;

  wire [0:0]D;
  wire Res;
  wire \Using_LUT6.Single_LUT6.XOR6_LUT_0 ;
  wire \Using_LUT6.Single_LUT6.XOR6_LUT_1 ;
  wire [0:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(1'b0),
        .I1(1'b0),
        .I2(bram_rddata_a),
        .I3(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ),
        .I4(\Using_LUT6.Single_LUT6.XOR6_LUT_1 ),
        .I5(Res),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_12
   (D,
    bram_rddata_a,
    \Decode_Bits.chk1_1 );
  output [0:0]D;
  input [0:0]bram_rddata_a;
  input [2:0]\Decode_Bits.chk1_1 ;

  wire [0:0]D;
  wire [2:0]\Decode_Bits.chk1_1 ;
  wire [0:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(1'b0),
        .I1(1'b0),
        .I2(bram_rddata_a),
        .I3(\Decode_Bits.chk1_1 [0]),
        .I4(\Decode_Bits.chk1_1 [1]),
        .I5(\Decode_Bits.chk1_1 [2]),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_16
   (D,
    bram_rddata_a,
    \Decode_Bits.chk2_1 );
  output [0:0]D;
  input [0:0]bram_rddata_a;
  input [2:0]\Decode_Bits.chk2_1 ;

  wire [0:0]D;
  wire [2:0]\Decode_Bits.chk2_1 ;
  wire [0:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(1'b0),
        .I1(1'b0),
        .I2(bram_rddata_a),
        .I3(\Decode_Bits.chk2_1 [0]),
        .I4(\Decode_Bits.chk2_1 [1]),
        .I5(\Decode_Bits.chk2_1 [2]),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_66
   (D,
    bram_rddata_a,
    \Using_LUT6.Single_LUT6.XOR6_LUT_0 ,
    \Using_LUT6.Single_LUT6.XOR6_LUT_1 ,
    Res);
  output [0:0]D;
  input [0:0]bram_rddata_a;
  input \Using_LUT6.Single_LUT6.XOR6_LUT_0 ;
  input \Using_LUT6.Single_LUT6.XOR6_LUT_1 ;
  input Res;

  wire [0:0]D;
  wire Res;
  wire \Using_LUT6.Single_LUT6.XOR6_LUT_0 ;
  wire \Using_LUT6.Single_LUT6.XOR6_LUT_1 ;
  wire [0:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(1'b0),
        .I1(1'b0),
        .I2(bram_rddata_a),
        .I3(\Using_LUT6.Single_LUT6.XOR6_LUT_0 ),
        .I4(\Using_LUT6.Single_LUT6.XOR6_LUT_1 ),
        .I5(Res),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_70
   (D,
    bram_rddata_a,
    \Decode_Bits.chk1_1 );
  output [0:0]D;
  input [0:0]bram_rddata_a;
  input [2:0]\Decode_Bits.chk1_1 ;

  wire [0:0]D;
  wire [2:0]\Decode_Bits.chk1_1 ;
  wire [0:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(1'b0),
        .I1(1'b0),
        .I2(bram_rddata_a),
        .I3(\Decode_Bits.chk1_1 [0]),
        .I4(\Decode_Bits.chk1_1 [1]),
        .I5(\Decode_Bits.chk1_1 [2]),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_74
   (D,
    bram_rddata_a,
    \Decode_Bits.chk2_1 );
  output [0:0]D;
  input [0:0]bram_rddata_a;
  input [2:0]\Decode_Bits.chk2_1 ;

  wire [0:0]D;
  wire [2:0]\Decode_Bits.chk2_1 ;
  wire [0:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(1'b0),
        .I1(1'b0),
        .I2(bram_rddata_a),
        .I3(\Decode_Bits.chk2_1 [0]),
        .I4(\Decode_Bits.chk2_1 [1]),
        .I5(\Decode_Bits.chk2_1 [2]),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized4
   (Res,
    bram_rddata_a);
  output Res;
  input [7:0]bram_rddata_a;

  wire Res;
  wire \Using_LUT6.Use_MUXF8.result6_1 ;
  wire \Using_LUT6.Use_MUXF8.result6_1n ;
  wire \Using_LUT6.Use_MUXF8.result6_2 ;
  wire \Using_LUT6.Use_MUXF8.result6_2n ;
  wire \Using_LUT6.Use_MUXF8.result7_1 ;
  wire \Using_LUT6.Use_MUXF8.result7_1n ;
  wire [7:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  MUXF7 \Using_LUT6.Use_MUXF8.MUXF7_LUT1 
       (.I0(\Using_LUT6.Use_MUXF8.result6_1 ),
        .I1(\Using_LUT6.Use_MUXF8.result6_1n ),
        .O(\Using_LUT6.Use_MUXF8.result7_1 ),
        .S(bram_rddata_a[1]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 \Using_LUT6.Use_MUXF8.MUXF7_LUT2 
       (.I0(\Using_LUT6.Use_MUXF8.result6_2n ),
        .I1(\Using_LUT6.Use_MUXF8.result6_2 ),
        .O(\Using_LUT6.Use_MUXF8.result7_1n ),
        .S(bram_rddata_a[1]));
  (* box_type = "PRIMITIVE" *) 
  MUXF8 \Using_LUT6.Use_MUXF8.MUXF8_LUT 
       (.I0(\Using_LUT6.Use_MUXF8.result7_1 ),
        .I1(\Using_LUT6.Use_MUXF8.result7_1n ),
        .O(Res),
        .S(bram_rddata_a[0]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT1 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_1 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT2_N 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_1n ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT3 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_2 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT4_N 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_2n ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_17
   (Res,
    bram_rddata_a);
  output Res;
  input [7:0]bram_rddata_a;

  wire Res;
  wire \Using_LUT6.Use_MUXF8.result6_1 ;
  wire \Using_LUT6.Use_MUXF8.result6_1n ;
  wire \Using_LUT6.Use_MUXF8.result6_2 ;
  wire \Using_LUT6.Use_MUXF8.result6_2n ;
  wire \Using_LUT6.Use_MUXF8.result7_1 ;
  wire \Using_LUT6.Use_MUXF8.result7_1n ;
  wire [7:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  MUXF7 \Using_LUT6.Use_MUXF8.MUXF7_LUT1 
       (.I0(\Using_LUT6.Use_MUXF8.result6_1 ),
        .I1(\Using_LUT6.Use_MUXF8.result6_1n ),
        .O(\Using_LUT6.Use_MUXF8.result7_1 ),
        .S(bram_rddata_a[1]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 \Using_LUT6.Use_MUXF8.MUXF7_LUT2 
       (.I0(\Using_LUT6.Use_MUXF8.result6_2n ),
        .I1(\Using_LUT6.Use_MUXF8.result6_2 ),
        .O(\Using_LUT6.Use_MUXF8.result7_1n ),
        .S(bram_rddata_a[1]));
  (* box_type = "PRIMITIVE" *) 
  MUXF8 \Using_LUT6.Use_MUXF8.MUXF8_LUT 
       (.I0(\Using_LUT6.Use_MUXF8.result7_1 ),
        .I1(\Using_LUT6.Use_MUXF8.result7_1n ),
        .O(Res),
        .S(bram_rddata_a[0]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT1 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_1 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT2_N 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_1n ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT3 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_2 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT4_N 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_2n ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_19
   (\Using_LUT6.Use_MUXF8.MUXF8_LUT_0 ,
    bram_rddata_a);
  output [0:0]\Using_LUT6.Use_MUXF8.MUXF8_LUT_0 ;
  input [7:0]bram_rddata_a;

  wire [0:0]\Using_LUT6.Use_MUXF8.MUXF8_LUT_0 ;
  wire \Using_LUT6.Use_MUXF8.result6_1 ;
  wire \Using_LUT6.Use_MUXF8.result6_1n ;
  wire \Using_LUT6.Use_MUXF8.result6_2 ;
  wire \Using_LUT6.Use_MUXF8.result6_2n ;
  wire \Using_LUT6.Use_MUXF8.result7_1 ;
  wire \Using_LUT6.Use_MUXF8.result7_1n ;
  wire [7:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  MUXF7 \Using_LUT6.Use_MUXF8.MUXF7_LUT1 
       (.I0(\Using_LUT6.Use_MUXF8.result6_1 ),
        .I1(\Using_LUT6.Use_MUXF8.result6_1n ),
        .O(\Using_LUT6.Use_MUXF8.result7_1 ),
        .S(bram_rddata_a[1]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 \Using_LUT6.Use_MUXF8.MUXF7_LUT2 
       (.I0(\Using_LUT6.Use_MUXF8.result6_2n ),
        .I1(\Using_LUT6.Use_MUXF8.result6_2 ),
        .O(\Using_LUT6.Use_MUXF8.result7_1n ),
        .S(bram_rddata_a[1]));
  (* box_type = "PRIMITIVE" *) 
  MUXF8 \Using_LUT6.Use_MUXF8.MUXF8_LUT 
       (.I0(\Using_LUT6.Use_MUXF8.result7_1 ),
        .I1(\Using_LUT6.Use_MUXF8.result7_1n ),
        .O(\Using_LUT6.Use_MUXF8.MUXF8_LUT_0 ),
        .S(bram_rddata_a[0]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT1 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_1 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT2_N 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_1n ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT3 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_2 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT4_N 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_2n ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_20
   (\Using_LUT6.Use_MUXF8.MUXF8_LUT_0 ,
    bram_rddata_a);
  output [0:0]\Using_LUT6.Use_MUXF8.MUXF8_LUT_0 ;
  input [7:0]bram_rddata_a;

  wire [0:0]\Using_LUT6.Use_MUXF8.MUXF8_LUT_0 ;
  wire \Using_LUT6.Use_MUXF8.result6_1 ;
  wire \Using_LUT6.Use_MUXF8.result6_1n ;
  wire \Using_LUT6.Use_MUXF8.result6_2 ;
  wire \Using_LUT6.Use_MUXF8.result6_2n ;
  wire \Using_LUT6.Use_MUXF8.result7_1 ;
  wire \Using_LUT6.Use_MUXF8.result7_1n ;
  wire [7:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  MUXF7 \Using_LUT6.Use_MUXF8.MUXF7_LUT1 
       (.I0(\Using_LUT6.Use_MUXF8.result6_1 ),
        .I1(\Using_LUT6.Use_MUXF8.result6_1n ),
        .O(\Using_LUT6.Use_MUXF8.result7_1 ),
        .S(bram_rddata_a[1]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 \Using_LUT6.Use_MUXF8.MUXF7_LUT2 
       (.I0(\Using_LUT6.Use_MUXF8.result6_2n ),
        .I1(\Using_LUT6.Use_MUXF8.result6_2 ),
        .O(\Using_LUT6.Use_MUXF8.result7_1n ),
        .S(bram_rddata_a[1]));
  (* box_type = "PRIMITIVE" *) 
  MUXF8 \Using_LUT6.Use_MUXF8.MUXF8_LUT 
       (.I0(\Using_LUT6.Use_MUXF8.result7_1 ),
        .I1(\Using_LUT6.Use_MUXF8.result7_1n ),
        .O(\Using_LUT6.Use_MUXF8.MUXF8_LUT_0 ),
        .S(bram_rddata_a[0]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT1 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_1 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT2_N 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_1n ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT3 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_2 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT4_N 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_2n ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_75
   (Res,
    bram_rddata_a);
  output Res;
  input [7:0]bram_rddata_a;

  wire Res;
  wire \Using_LUT6.Use_MUXF8.result6_1 ;
  wire \Using_LUT6.Use_MUXF8.result6_1n ;
  wire \Using_LUT6.Use_MUXF8.result6_2 ;
  wire \Using_LUT6.Use_MUXF8.result6_2n ;
  wire \Using_LUT6.Use_MUXF8.result7_1 ;
  wire \Using_LUT6.Use_MUXF8.result7_1n ;
  wire [7:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  MUXF7 \Using_LUT6.Use_MUXF8.MUXF7_LUT1 
       (.I0(\Using_LUT6.Use_MUXF8.result6_1 ),
        .I1(\Using_LUT6.Use_MUXF8.result6_1n ),
        .O(\Using_LUT6.Use_MUXF8.result7_1 ),
        .S(bram_rddata_a[1]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 \Using_LUT6.Use_MUXF8.MUXF7_LUT2 
       (.I0(\Using_LUT6.Use_MUXF8.result6_2n ),
        .I1(\Using_LUT6.Use_MUXF8.result6_2 ),
        .O(\Using_LUT6.Use_MUXF8.result7_1n ),
        .S(bram_rddata_a[1]));
  (* box_type = "PRIMITIVE" *) 
  MUXF8 \Using_LUT6.Use_MUXF8.MUXF8_LUT 
       (.I0(\Using_LUT6.Use_MUXF8.result7_1 ),
        .I1(\Using_LUT6.Use_MUXF8.result7_1n ),
        .O(Res),
        .S(bram_rddata_a[0]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT1 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_1 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT2_N 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_1n ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT3 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_2 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT4_N 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_2n ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_76
   (Res,
    bram_rddata_a);
  output Res;
  input [7:0]bram_rddata_a;

  wire Res;
  wire \Using_LUT6.Use_MUXF8.result6_1 ;
  wire \Using_LUT6.Use_MUXF8.result6_1n ;
  wire \Using_LUT6.Use_MUXF8.result6_2 ;
  wire \Using_LUT6.Use_MUXF8.result6_2n ;
  wire \Using_LUT6.Use_MUXF8.result7_1 ;
  wire \Using_LUT6.Use_MUXF8.result7_1n ;
  wire [7:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  MUXF7 \Using_LUT6.Use_MUXF8.MUXF7_LUT1 
       (.I0(\Using_LUT6.Use_MUXF8.result6_1 ),
        .I1(\Using_LUT6.Use_MUXF8.result6_1n ),
        .O(\Using_LUT6.Use_MUXF8.result7_1 ),
        .S(bram_rddata_a[1]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 \Using_LUT6.Use_MUXF8.MUXF7_LUT2 
       (.I0(\Using_LUT6.Use_MUXF8.result6_2n ),
        .I1(\Using_LUT6.Use_MUXF8.result6_2 ),
        .O(\Using_LUT6.Use_MUXF8.result7_1n ),
        .S(bram_rddata_a[1]));
  (* box_type = "PRIMITIVE" *) 
  MUXF8 \Using_LUT6.Use_MUXF8.MUXF8_LUT 
       (.I0(\Using_LUT6.Use_MUXF8.result7_1 ),
        .I1(\Using_LUT6.Use_MUXF8.result7_1n ),
        .O(Res),
        .S(bram_rddata_a[0]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT1 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_1 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT2_N 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_1n ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT3 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_2 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT4_N 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_2n ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_78
   (\Using_LUT6.Use_MUXF8.MUXF8_LUT_0 ,
    bram_rddata_a);
  output [0:0]\Using_LUT6.Use_MUXF8.MUXF8_LUT_0 ;
  input [7:0]bram_rddata_a;

  wire [0:0]\Using_LUT6.Use_MUXF8.MUXF8_LUT_0 ;
  wire \Using_LUT6.Use_MUXF8.result6_1 ;
  wire \Using_LUT6.Use_MUXF8.result6_1n ;
  wire \Using_LUT6.Use_MUXF8.result6_2 ;
  wire \Using_LUT6.Use_MUXF8.result6_2n ;
  wire \Using_LUT6.Use_MUXF8.result7_1 ;
  wire \Using_LUT6.Use_MUXF8.result7_1n ;
  wire [7:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  MUXF7 \Using_LUT6.Use_MUXF8.MUXF7_LUT1 
       (.I0(\Using_LUT6.Use_MUXF8.result6_1 ),
        .I1(\Using_LUT6.Use_MUXF8.result6_1n ),
        .O(\Using_LUT6.Use_MUXF8.result7_1 ),
        .S(bram_rddata_a[1]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 \Using_LUT6.Use_MUXF8.MUXF7_LUT2 
       (.I0(\Using_LUT6.Use_MUXF8.result6_2n ),
        .I1(\Using_LUT6.Use_MUXF8.result6_2 ),
        .O(\Using_LUT6.Use_MUXF8.result7_1n ),
        .S(bram_rddata_a[1]));
  (* box_type = "PRIMITIVE" *) 
  MUXF8 \Using_LUT6.Use_MUXF8.MUXF8_LUT 
       (.I0(\Using_LUT6.Use_MUXF8.result7_1 ),
        .I1(\Using_LUT6.Use_MUXF8.result7_1n ),
        .O(\Using_LUT6.Use_MUXF8.MUXF8_LUT_0 ),
        .S(bram_rddata_a[0]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT1 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_1 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT2_N 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_1n ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT3 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_2 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT4_N 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_2n ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_79
   (\Using_LUT6.Use_MUXF8.MUXF8_LUT_0 ,
    bram_rddata_a);
  output [0:0]\Using_LUT6.Use_MUXF8.MUXF8_LUT_0 ;
  input [7:0]bram_rddata_a;

  wire [0:0]\Using_LUT6.Use_MUXF8.MUXF8_LUT_0 ;
  wire \Using_LUT6.Use_MUXF8.result6_1 ;
  wire \Using_LUT6.Use_MUXF8.result6_1n ;
  wire \Using_LUT6.Use_MUXF8.result6_2 ;
  wire \Using_LUT6.Use_MUXF8.result6_2n ;
  wire \Using_LUT6.Use_MUXF8.result7_1 ;
  wire \Using_LUT6.Use_MUXF8.result7_1n ;
  wire [7:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  MUXF7 \Using_LUT6.Use_MUXF8.MUXF7_LUT1 
       (.I0(\Using_LUT6.Use_MUXF8.result6_1 ),
        .I1(\Using_LUT6.Use_MUXF8.result6_1n ),
        .O(\Using_LUT6.Use_MUXF8.result7_1 ),
        .S(bram_rddata_a[1]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 \Using_LUT6.Use_MUXF8.MUXF7_LUT2 
       (.I0(\Using_LUT6.Use_MUXF8.result6_2n ),
        .I1(\Using_LUT6.Use_MUXF8.result6_2 ),
        .O(\Using_LUT6.Use_MUXF8.result7_1n ),
        .S(bram_rddata_a[1]));
  (* box_type = "PRIMITIVE" *) 
  MUXF8 \Using_LUT6.Use_MUXF8.MUXF8_LUT 
       (.I0(\Using_LUT6.Use_MUXF8.result7_1 ),
        .I1(\Using_LUT6.Use_MUXF8.result7_1n ),
        .O(\Using_LUT6.Use_MUXF8.MUXF8_LUT_0 ),
        .S(bram_rddata_a[0]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT1 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_1 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT2_N 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_1n ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT3 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_2 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \Using_LUT6.Use_MUXF8.XOR6_LUT4_N 
       (.I0(bram_rddata_a[2]),
        .I1(bram_rddata_a[3]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[5]),
        .I4(bram_rddata_a[6]),
        .I5(bram_rddata_a[7]),
        .O(\Using_LUT6.Use_MUXF8.result6_2n ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized6
   (\GEN_ECC.syndrome_reg_i ,
    S,
    S_0,
    S_1,
    \GEN_ECC.CE_Q ,
    I1,
    S_2,
    I0,
    S_3,
    S_4,
    S_5,
    S_6,
    S_7,
    S_8,
    S_9,
    S_10,
    S_11,
    S_12,
    S_13,
    S_14,
    S_15,
    S_16,
    S_17,
    Q,
    Corr_MUXCY,
    Enable_ECC,
    \GEN_ECC.CE_Q_reg ,
    \Decode_Bits.Use_LUT6.UE_MUXF7 );
  output [0:0]\GEN_ECC.syndrome_reg_i ;
  output S;
  output S_0;
  output S_1;
  output \GEN_ECC.CE_Q ;
  output I1;
  output S_2;
  output I0;
  output S_3;
  output S_4;
  output S_5;
  output S_6;
  output S_7;
  output S_8;
  output S_9;
  output S_10;
  output S_11;
  output S_12;
  output S_13;
  output S_14;
  output S_15;
  output S_16;
  output S_17;
  input [1:0]Q;
  input [5:0]Corr_MUXCY;
  input Enable_ECC;
  input [0:0]\GEN_ECC.CE_Q_reg ;
  input \Decode_Bits.Use_LUT6.UE_MUXF7 ;

  wire [5:0]Corr_MUXCY;
  wire \Decode_Bits.Use_LUT6.UE_MUXF7 ;
  wire Enable_ECC;
  wire \GEN_ECC.CE_Q ;
  wire [0:0]\GEN_ECC.CE_Q_reg ;
  wire [0:0]\GEN_ECC.syndrome_reg_i ;
  wire I0;
  wire I1;
  wire [1:0]Q;
  wire S;
  wire S_0;
  wire S_1;
  wire S_10;
  wire S_11;
  wire S_12;
  wire S_13;
  wire S_14;
  wire S_15;
  wire S_16;
  wire S_17;
  wire S_2;
  wire S_3;
  wire S_4;
  wire S_5;
  wire S_6;
  wire S_7;
  wire S_8;
  wire S_9;

  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    Corr_MUXCY_i_1
       (.I0(Corr_MUXCY[2]),
        .I1(\GEN_ECC.syndrome_reg_i ),
        .I2(Corr_MUXCY[4]),
        .I3(Corr_MUXCY[0]),
        .I4(Corr_MUXCY[3]),
        .I5(Corr_MUXCY[1]),
        .O(S));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    Corr_MUXCY_i_1__0
       (.I0(Corr_MUXCY[2]),
        .I1(\GEN_ECC.syndrome_reg_i ),
        .I2(Corr_MUXCY[4]),
        .I3(Corr_MUXCY[0]),
        .I4(Corr_MUXCY[1]),
        .I5(Corr_MUXCY[3]),
        .O(S_0));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    Corr_MUXCY_i_1__10
       (.I0(Corr_MUXCY[5]),
        .I1(Corr_MUXCY[2]),
        .I2(Corr_MUXCY[4]),
        .I3(\GEN_ECC.syndrome_reg_i ),
        .I4(Corr_MUXCY[1]),
        .I5(Corr_MUXCY[0]),
        .O(S_5));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    Corr_MUXCY_i_1__13
       (.I0(Corr_MUXCY[4]),
        .I1(Corr_MUXCY[1]),
        .I2(Corr_MUXCY[2]),
        .I3(\GEN_ECC.syndrome_reg_i ),
        .I4(Corr_MUXCY[3]),
        .I5(Corr_MUXCY[0]),
        .O(S_6));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    Corr_MUXCY_i_1__15
       (.I0(\GEN_ECC.syndrome_reg_i ),
        .I1(Corr_MUXCY[2]),
        .I2(Corr_MUXCY[3]),
        .I3(Corr_MUXCY[4]),
        .I4(Corr_MUXCY[1]),
        .I5(Corr_MUXCY[0]),
        .O(S_7));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    Corr_MUXCY_i_1__16
       (.I0(Corr_MUXCY[2]),
        .I1(Corr_MUXCY[3]),
        .I2(Corr_MUXCY[5]),
        .I3(\GEN_ECC.syndrome_reg_i ),
        .I4(Corr_MUXCY[1]),
        .I5(Corr_MUXCY[0]),
        .O(S_8));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    Corr_MUXCY_i_1__17
       (.I0(Corr_MUXCY[5]),
        .I1(\GEN_ECC.syndrome_reg_i ),
        .I2(Corr_MUXCY[1]),
        .I3(Corr_MUXCY[0]),
        .I4(Corr_MUXCY[4]),
        .I5(Corr_MUXCY[3]),
        .O(S_9));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    Corr_MUXCY_i_1__18
       (.I0(Corr_MUXCY[3]),
        .I1(Corr_MUXCY[2]),
        .I2(Corr_MUXCY[5]),
        .I3(\GEN_ECC.syndrome_reg_i ),
        .I4(Corr_MUXCY[1]),
        .I5(Corr_MUXCY[0]),
        .O(S_10));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    Corr_MUXCY_i_1__19
       (.I0(Corr_MUXCY[2]),
        .I1(Corr_MUXCY[3]),
        .I2(Corr_MUXCY[4]),
        .I3(\GEN_ECC.syndrome_reg_i ),
        .I4(Corr_MUXCY[1]),
        .I5(Corr_MUXCY[0]),
        .O(S_11));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    Corr_MUXCY_i_1__2
       (.I0(Corr_MUXCY[2]),
        .I1(\GEN_ECC.syndrome_reg_i ),
        .I2(Corr_MUXCY[3]),
        .I3(Corr_MUXCY[4]),
        .I4(Corr_MUXCY[0]),
        .I5(Corr_MUXCY[1]),
        .O(S_1));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    Corr_MUXCY_i_1__20
       (.I0(Corr_MUXCY[3]),
        .I1(Corr_MUXCY[2]),
        .I2(Corr_MUXCY[4]),
        .I3(\GEN_ECC.syndrome_reg_i ),
        .I4(Corr_MUXCY[1]),
        .I5(Corr_MUXCY[0]),
        .O(S_12));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    Corr_MUXCY_i_1__22
       (.I0(Corr_MUXCY[3]),
        .I1(\GEN_ECC.syndrome_reg_i ),
        .I2(Corr_MUXCY[4]),
        .I3(Corr_MUXCY[2]),
        .I4(Corr_MUXCY[1]),
        .I5(Corr_MUXCY[0]),
        .O(S_13));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    Corr_MUXCY_i_1__24
       (.I0(Corr_MUXCY[3]),
        .I1(\GEN_ECC.syndrome_reg_i ),
        .I2(Corr_MUXCY[4]),
        .I3(Corr_MUXCY[0]),
        .I4(Corr_MUXCY[2]),
        .I5(Corr_MUXCY[1]),
        .O(S_14));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    Corr_MUXCY_i_1__26
       (.I0(Corr_MUXCY[2]),
        .I1(\GEN_ECC.syndrome_reg_i ),
        .I2(Corr_MUXCY[1]),
        .I3(Corr_MUXCY[5]),
        .I4(Corr_MUXCY[3]),
        .I5(Corr_MUXCY[0]),
        .O(S_15));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    Corr_MUXCY_i_1__31
       (.I0(Corr_MUXCY[2]),
        .I1(Corr_MUXCY[4]),
        .I2(\GEN_ECC.syndrome_reg_i ),
        .I3(Corr_MUXCY[0]),
        .I4(Corr_MUXCY[1]),
        .I5(Corr_MUXCY[5]),
        .O(S_16));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    Corr_MUXCY_i_1__32
       (.I0(Corr_MUXCY[2]),
        .I1(Corr_MUXCY[3]),
        .I2(\GEN_ECC.syndrome_reg_i ),
        .I3(Corr_MUXCY[0]),
        .I4(Corr_MUXCY[1]),
        .I5(Corr_MUXCY[5]),
        .O(S_17));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    Corr_MUXCY_i_1__6
       (.I0(Corr_MUXCY[3]),
        .I1(\GEN_ECC.syndrome_reg_i ),
        .I2(Corr_MUXCY[1]),
        .I3(Corr_MUXCY[0]),
        .I4(Corr_MUXCY[2]),
        .I5(Corr_MUXCY[5]),
        .O(S_2));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    Corr_MUXCY_i_1__8
       (.I0(Corr_MUXCY[3]),
        .I1(Corr_MUXCY[1]),
        .I2(\GEN_ECC.syndrome_reg_i ),
        .I3(Corr_MUXCY[0]),
        .I4(Corr_MUXCY[2]),
        .I5(Corr_MUXCY[5]),
        .O(S_3));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    Corr_MUXCY_i_1__9
       (.I0(Corr_MUXCY[4]),
        .I1(\GEN_ECC.syndrome_reg_i ),
        .I2(Corr_MUXCY[1]),
        .I3(Corr_MUXCY[0]),
        .I4(Corr_MUXCY[2]),
        .I5(Corr_MUXCY[5]),
        .O(S_4));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \Decode_Bits.Use_LUT6.UE_MUXF7_i_1__0 
       (.I0(Enable_ECC),
        .I1(\Decode_Bits.Use_LUT6.UE_MUXF7 ),
        .I2(Corr_MUXCY[3]),
        .I3(\GEN_ECC.syndrome_reg_i ),
        .I4(Corr_MUXCY[1]),
        .I5(Corr_MUXCY[4]),
        .O(I0));
  LUT4 #(
    .INIT(16'h8880)) 
    \Decode_Bits.Use_LUT6.UE_MUXF7_i_2 
       (.I0(Enable_ECC),
        .I1(Corr_MUXCY[1]),
        .I2(Corr_MUXCY[2]),
        .I3(\GEN_ECC.syndrome_reg_i ),
        .O(I1));
  LUT6 #(
    .INIT(64'h5700000000000000)) 
    \GEN_ECC.CE_Q_i_1 
       (.I0(Corr_MUXCY[1]),
        .I1(Corr_MUXCY[2]),
        .I2(\GEN_ECC.syndrome_reg_i ),
        .I3(Enable_ECC),
        .I4(\GEN_ECC.CE_Q_reg ),
        .I5(Corr_MUXCY[0]),
        .O(\GEN_ECC.CE_Q ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(1'b0),
        .I1(1'b0),
        .I2(1'b0),
        .I3(1'b0),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\GEN_ECC.syndrome_reg_i ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized6_18
   (D,
    \Decode_Bits.chk3_1 );
  output [0:0]D;
  input [0:1]\Decode_Bits.chk3_1 ;

  wire [0:0]D;
  wire [0:1]\Decode_Bits.chk3_1 ;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(1'b0),
        .I1(1'b0),
        .I2(1'b0),
        .I3(1'b0),
        .I4(\Decode_Bits.chk3_1 [1]),
        .I5(\Decode_Bits.chk3_1 [0]),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized6_60
   (syndrome_reg_i,
    I0,
    S,
    S_0,
    \GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q ,
    I1,
    S_1,
    S_2,
    S_3,
    S_4,
    S_5,
    S_6,
    S_7,
    S_8,
    S_9,
    S_10,
    S_11,
    S_12,
    S_13,
    S_14,
    S_15,
    S_16,
    Q,
    Enable_ECC,
    \Decode_Bits.Use_LUT6.UE_MUXF7 ,
    Corr_MUXCY,
    \GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q_reg );
  output [0:0]syndrome_reg_i;
  output I0;
  output S;
  output S_0;
  output \GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q ;
  output I1;
  output S_1;
  output S_2;
  output S_3;
  output S_4;
  output S_5;
  output S_6;
  output S_7;
  output S_8;
  output S_9;
  output S_10;
  output S_11;
  output S_12;
  output S_13;
  output S_14;
  output S_15;
  output S_16;
  input [1:0]Q;
  input Enable_ECC;
  input [4:0]\Decode_Bits.Use_LUT6.UE_MUXF7 ;
  input [0:0]Corr_MUXCY;
  input \GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q_reg ;

  wire [0:0]Corr_MUXCY;
  wire [4:0]\Decode_Bits.Use_LUT6.UE_MUXF7 ;
  wire \Decode_Bits.Use_LUT6.UE_MUXF7_i_3_n_0 ;
  wire Enable_ECC;
  wire \GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q ;
  wire \GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q_reg ;
  wire I0;
  wire I1;
  wire [1:0]Q;
  wire S;
  wire S_0;
  wire S_1;
  wire S_10;
  wire S_11;
  wire S_12;
  wire S_13;
  wire S_14;
  wire S_15;
  wire S_16;
  wire S_2;
  wire S_3;
  wire S_4;
  wire S_5;
  wire S_6;
  wire S_7;
  wire S_8;
  wire S_9;
  wire [0:0]syndrome_reg_i;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    Corr_MUXCY_i_1__33
       (.I0(\Decode_Bits.Use_LUT6.UE_MUXF7 [2]),
        .I1(\Decode_Bits.Use_LUT6.UE_MUXF7 [1]),
        .I2(syndrome_reg_i),
        .I3(Corr_MUXCY),
        .I4(\Decode_Bits.Use_LUT6.UE_MUXF7 [0]),
        .I5(\Decode_Bits.Use_LUT6.UE_MUXF7 [4]),
        .O(S_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    Corr_MUXCY_i_1__34
       (.I0(\Decode_Bits.Use_LUT6.UE_MUXF7 [2]),
        .I1(\Decode_Bits.Use_LUT6.UE_MUXF7 [1]),
        .I2(syndrome_reg_i),
        .I3(Corr_MUXCY),
        .I4(\Decode_Bits.Use_LUT6.UE_MUXF7 [0]),
        .I5(\Decode_Bits.Use_LUT6.UE_MUXF7 [3]),
        .O(S_2));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    Corr_MUXCY_i_1__35
       (.I0(syndrome_reg_i),
        .I1(\Decode_Bits.Use_LUT6.UE_MUXF7 [0]),
        .I2(\Decode_Bits.Use_LUT6.UE_MUXF7 [1]),
        .I3(\Decode_Bits.Use_LUT6.UE_MUXF7 [2]),
        .I4(\Decode_Bits.Use_LUT6.UE_MUXF7 [3]),
        .I5(Corr_MUXCY),
        .O(S_3));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    Corr_MUXCY_i_1__37
       (.I0(syndrome_reg_i),
        .I1(\Decode_Bits.Use_LUT6.UE_MUXF7 [0]),
        .I2(\Decode_Bits.Use_LUT6.UE_MUXF7 [3]),
        .I3(\Decode_Bits.Use_LUT6.UE_MUXF7 [1]),
        .I4(\Decode_Bits.Use_LUT6.UE_MUXF7 [2]),
        .I5(Corr_MUXCY),
        .O(S_4));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    Corr_MUXCY_i_1__39
       (.I0(\Decode_Bits.Use_LUT6.UE_MUXF7 [1]),
        .I1(\Decode_Bits.Use_LUT6.UE_MUXF7 [2]),
        .I2(syndrome_reg_i),
        .I3(Corr_MUXCY),
        .I4(\Decode_Bits.Use_LUT6.UE_MUXF7 [0]),
        .I5(\Decode_Bits.Use_LUT6.UE_MUXF7 [3]),
        .O(S_5));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    Corr_MUXCY_i_1__4
       (.I0(\Decode_Bits.Use_LUT6.UE_MUXF7 [3]),
        .I1(\Decode_Bits.Use_LUT6.UE_MUXF7 [2]),
        .I2(\Decode_Bits.Use_LUT6.UE_MUXF7 [1]),
        .I3(syndrome_reg_i),
        .I4(\Decode_Bits.Use_LUT6.UE_MUXF7 [0]),
        .I5(Corr_MUXCY),
        .O(S));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    Corr_MUXCY_i_1__40
       (.I0(\Decode_Bits.Use_LUT6.UE_MUXF7 [4]),
        .I1(\Decode_Bits.Use_LUT6.UE_MUXF7 [2]),
        .I2(syndrome_reg_i),
        .I3(Corr_MUXCY),
        .I4(\Decode_Bits.Use_LUT6.UE_MUXF7 [0]),
        .I5(\Decode_Bits.Use_LUT6.UE_MUXF7 [3]),
        .O(S_6));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    Corr_MUXCY_i_1__41
       (.I0(syndrome_reg_i),
        .I1(Corr_MUXCY),
        .I2(\Decode_Bits.Use_LUT6.UE_MUXF7 [0]),
        .I3(\Decode_Bits.Use_LUT6.UE_MUXF7 [3]),
        .I4(\Decode_Bits.Use_LUT6.UE_MUXF7 [4]),
        .I5(\Decode_Bits.Use_LUT6.UE_MUXF7 [1]),
        .O(S_7));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    Corr_MUXCY_i_1__44
       (.I0(\Decode_Bits.Use_LUT6.UE_MUXF7 [1]),
        .I1(\Decode_Bits.Use_LUT6.UE_MUXF7 [3]),
        .I2(syndrome_reg_i),
        .I3(Corr_MUXCY),
        .I4(\Decode_Bits.Use_LUT6.UE_MUXF7 [0]),
        .I5(\Decode_Bits.Use_LUT6.UE_MUXF7 [4]),
        .O(S_8));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    Corr_MUXCY_i_1__45
       (.I0(\Decode_Bits.Use_LUT6.UE_MUXF7 [1]),
        .I1(\Decode_Bits.Use_LUT6.UE_MUXF7 [2]),
        .I2(syndrome_reg_i),
        .I3(Corr_MUXCY),
        .I4(\Decode_Bits.Use_LUT6.UE_MUXF7 [0]),
        .I5(\Decode_Bits.Use_LUT6.UE_MUXF7 [4]),
        .O(S_9));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    Corr_MUXCY_i_1__46
       (.I0(\Decode_Bits.Use_LUT6.UE_MUXF7 [1]),
        .I1(syndrome_reg_i),
        .I2(\Decode_Bits.Use_LUT6.UE_MUXF7 [3]),
        .I3(Corr_MUXCY),
        .I4(\Decode_Bits.Use_LUT6.UE_MUXF7 [0]),
        .I5(\Decode_Bits.Use_LUT6.UE_MUXF7 [4]),
        .O(S_10));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    Corr_MUXCY_i_1__47
       (.I0(\Decode_Bits.Use_LUT6.UE_MUXF7 [3]),
        .I1(\Decode_Bits.Use_LUT6.UE_MUXF7 [2]),
        .I2(syndrome_reg_i),
        .I3(Corr_MUXCY),
        .I4(\Decode_Bits.Use_LUT6.UE_MUXF7 [1]),
        .I5(\Decode_Bits.Use_LUT6.UE_MUXF7 [0]),
        .O(S_11));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    Corr_MUXCY_i_1__5
       (.I0(\Decode_Bits.Use_LUT6.UE_MUXF7 [4]),
        .I1(\Decode_Bits.Use_LUT6.UE_MUXF7 [2]),
        .I2(\Decode_Bits.Use_LUT6.UE_MUXF7 [1]),
        .I3(syndrome_reg_i),
        .I4(\Decode_Bits.Use_LUT6.UE_MUXF7 [0]),
        .I5(Corr_MUXCY),
        .O(S_0));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    Corr_MUXCY_i_1__50
       (.I0(\Decode_Bits.Use_LUT6.UE_MUXF7 [3]),
        .I1(\Decode_Bits.Use_LUT6.UE_MUXF7 [2]),
        .I2(\Decode_Bits.Use_LUT6.UE_MUXF7 [1]),
        .I3(syndrome_reg_i),
        .I4(\Decode_Bits.Use_LUT6.UE_MUXF7 [0]),
        .I5(Corr_MUXCY),
        .O(S_12));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    Corr_MUXCY_i_1__51
       (.I0(\Decode_Bits.Use_LUT6.UE_MUXF7 [1]),
        .I1(syndrome_reg_i),
        .I2(\Decode_Bits.Use_LUT6.UE_MUXF7 [2]),
        .I3(\Decode_Bits.Use_LUT6.UE_MUXF7 [4]),
        .I4(\Decode_Bits.Use_LUT6.UE_MUXF7 [0]),
        .I5(Corr_MUXCY),
        .O(S_13));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFDFFFFF)) 
    Corr_MUXCY_i_1__54
       (.I0(\Decode_Bits.Use_LUT6.UE_MUXF7 [0]),
        .I1(syndrome_reg_i),
        .I2(\Decode_Bits.Use_LUT6.UE_MUXF7 [2]),
        .I3(\Decode_Bits.Use_LUT6.UE_MUXF7 [3]),
        .I4(Corr_MUXCY),
        .I5(\Decode_Bits.Use_LUT6.UE_MUXF7 [1]),
        .O(S_14));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    Corr_MUXCY_i_1__55
       (.I0(\Decode_Bits.Use_LUT6.UE_MUXF7 [2]),
        .I1(syndrome_reg_i),
        .I2(\Decode_Bits.Use_LUT6.UE_MUXF7 [3]),
        .I3(Corr_MUXCY),
        .I4(\Decode_Bits.Use_LUT6.UE_MUXF7 [1]),
        .I5(\Decode_Bits.Use_LUT6.UE_MUXF7 [0]),
        .O(S_15));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF7FFFF)) 
    Corr_MUXCY_i_1__56
       (.I0(syndrome_reg_i),
        .I1(Corr_MUXCY),
        .I2(\Decode_Bits.Use_LUT6.UE_MUXF7 [1]),
        .I3(\Decode_Bits.Use_LUT6.UE_MUXF7 [0]),
        .I4(\Decode_Bits.Use_LUT6.UE_MUXF7 [3]),
        .I5(\Decode_Bits.Use_LUT6.UE_MUXF7 [2]),
        .O(S_16));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \Decode_Bits.Use_LUT6.UE_MUXF7_i_1 
       (.I0(Enable_ECC),
        .I1(\Decode_Bits.Use_LUT6.UE_MUXF7 [3]),
        .I2(\Decode_Bits.Use_LUT6.UE_MUXF7 [0]),
        .I3(\Decode_Bits.Use_LUT6.UE_MUXF7 [4]),
        .I4(\Decode_Bits.Use_LUT6.UE_MUXF7 [2]),
        .I5(\Decode_Bits.Use_LUT6.UE_MUXF7_i_3_n_0 ),
        .O(I0));
  LUT4 #(
    .INIT(16'h8880)) 
    \Decode_Bits.Use_LUT6.UE_MUXF7_i_2__0 
       (.I0(Enable_ECC),
        .I1(\Decode_Bits.Use_LUT6.UE_MUXF7 [0]),
        .I2(\Decode_Bits.Use_LUT6.UE_MUXF7 [1]),
        .I3(syndrome_reg_i),
        .O(I1));
  LUT2 #(
    .INIT(4'h1)) 
    \Decode_Bits.Use_LUT6.UE_MUXF7_i_3 
       (.I0(\Decode_Bits.Use_LUT6.UE_MUXF7 [1]),
        .I1(syndrome_reg_i),
        .O(\Decode_Bits.Use_LUT6.UE_MUXF7_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000570000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q_i_1 
       (.I0(\Decode_Bits.Use_LUT6.UE_MUXF7 [0]),
        .I1(\Decode_Bits.Use_LUT6.UE_MUXF7 [1]),
        .I2(syndrome_reg_i),
        .I3(Corr_MUXCY),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q_reg ),
        .I5(Enable_ECC),
        .O(\GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(1'b0),
        .I1(1'b0),
        .I2(1'b0),
        .I3(1'b0),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(syndrome_reg_i));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized6_77
   (D,
    \Decode_Bits.chk3_1 );
  output [0:0]D;
  input [0:1]\Decode_Bits.chk3_1 ;

  wire [0:0]D;
  wire [0:1]\Decode_Bits.chk3_1 ;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Single_LUT6.XOR6_LUT 
       (.I0(1'b0),
        .I1(1'b0),
        .I2(1'b0),
        .I3(1'b0),
        .I4(\Decode_Bits.chk3_1 [1]),
        .I5(\Decode_Bits.chk3_1 [0]),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized8
   (D,
    bram_rddata_a);
  output [0:0]D;
  input [6:0]bram_rddata_a;

  wire [0:0]D;
  wire \Using_LUT6.Use_MUXF7.result6 ;
  wire \Using_LUT6.Use_MUXF7.result6n ;
  wire [6:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  MUXF7 \Using_LUT6.Use_MUXF7.MUXF7_LUT 
       (.I0(\Using_LUT6.Use_MUXF7.result6 ),
        .I1(\Using_LUT6.Use_MUXF7.result6n ),
        .O(D),
        .S(bram_rddata_a[0]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Use_MUXF7.XOR6_LUT 
       (.I0(bram_rddata_a[1]),
        .I1(bram_rddata_a[2]),
        .I2(bram_rddata_a[3]),
        .I3(bram_rddata_a[4]),
        .I4(bram_rddata_a[5]),
        .I5(bram_rddata_a[6]),
        .O(\Using_LUT6.Use_MUXF7.result6 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \Using_LUT6.Use_MUXF7.XOR6_LUT_N 
       (.I0(bram_rddata_a[1]),
        .I1(bram_rddata_a[2]),
        .I2(bram_rddata_a[3]),
        .I3(bram_rddata_a[4]),
        .I4(bram_rddata_a[5]),
        .I5(bram_rddata_a[6]),
        .O(\Using_LUT6.Use_MUXF7.result6n ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_24
   (\Using_LUT6.Use_MUXF7.MUXF7_LUT_0 ,
    bram_rddata_a);
  output [0:0]\Using_LUT6.Use_MUXF7.MUXF7_LUT_0 ;
  input [6:0]bram_rddata_a;

  wire [0:0]\Using_LUT6.Use_MUXF7.MUXF7_LUT_0 ;
  wire \Using_LUT6.Use_MUXF7.result6 ;
  wire \Using_LUT6.Use_MUXF7.result6n ;
  wire [6:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  MUXF7 \Using_LUT6.Use_MUXF7.MUXF7_LUT 
       (.I0(\Using_LUT6.Use_MUXF7.result6 ),
        .I1(\Using_LUT6.Use_MUXF7.result6n ),
        .O(\Using_LUT6.Use_MUXF7.MUXF7_LUT_0 ),
        .S(bram_rddata_a[0]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Use_MUXF7.XOR6_LUT 
       (.I0(bram_rddata_a[1]),
        .I1(bram_rddata_a[2]),
        .I2(bram_rddata_a[3]),
        .I3(bram_rddata_a[4]),
        .I4(bram_rddata_a[5]),
        .I5(bram_rddata_a[6]),
        .O(\Using_LUT6.Use_MUXF7.result6 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \Using_LUT6.Use_MUXF7.XOR6_LUT_N 
       (.I0(bram_rddata_a[1]),
        .I1(bram_rddata_a[2]),
        .I2(bram_rddata_a[3]),
        .I3(bram_rddata_a[4]),
        .I4(bram_rddata_a[5]),
        .I5(bram_rddata_a[6]),
        .O(\Using_LUT6.Use_MUXF7.result6n ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_25
   (\Using_LUT6.Use_MUXF7.MUXF7_LUT_0 ,
    bram_rddata_a);
  output [0:0]\Using_LUT6.Use_MUXF7.MUXF7_LUT_0 ;
  input [6:0]bram_rddata_a;

  wire [0:0]\Using_LUT6.Use_MUXF7.MUXF7_LUT_0 ;
  wire \Using_LUT6.Use_MUXF7.result6 ;
  wire \Using_LUT6.Use_MUXF7.result6n ;
  wire [6:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  MUXF7 \Using_LUT6.Use_MUXF7.MUXF7_LUT 
       (.I0(\Using_LUT6.Use_MUXF7.result6 ),
        .I1(\Using_LUT6.Use_MUXF7.result6n ),
        .O(\Using_LUT6.Use_MUXF7.MUXF7_LUT_0 ),
        .S(bram_rddata_a[0]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Use_MUXF7.XOR6_LUT 
       (.I0(bram_rddata_a[1]),
        .I1(bram_rddata_a[2]),
        .I2(bram_rddata_a[3]),
        .I3(bram_rddata_a[4]),
        .I4(bram_rddata_a[5]),
        .I5(bram_rddata_a[6]),
        .O(\Using_LUT6.Use_MUXF7.result6 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \Using_LUT6.Use_MUXF7.XOR6_LUT_N 
       (.I0(bram_rddata_a[1]),
        .I1(bram_rddata_a[2]),
        .I2(bram_rddata_a[3]),
        .I3(bram_rddata_a[4]),
        .I4(bram_rddata_a[5]),
        .I5(bram_rddata_a[6]),
        .O(\Using_LUT6.Use_MUXF7.result6n ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_26
   (\Using_LUT6.Use_MUXF7.MUXF7_LUT_0 ,
    bram_rddata_a);
  output [0:0]\Using_LUT6.Use_MUXF7.MUXF7_LUT_0 ;
  input [6:0]bram_rddata_a;

  wire [0:0]\Using_LUT6.Use_MUXF7.MUXF7_LUT_0 ;
  wire \Using_LUT6.Use_MUXF7.result6 ;
  wire \Using_LUT6.Use_MUXF7.result6n ;
  wire [6:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  MUXF7 \Using_LUT6.Use_MUXF7.MUXF7_LUT 
       (.I0(\Using_LUT6.Use_MUXF7.result6 ),
        .I1(\Using_LUT6.Use_MUXF7.result6n ),
        .O(\Using_LUT6.Use_MUXF7.MUXF7_LUT_0 ),
        .S(bram_rddata_a[0]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Use_MUXF7.XOR6_LUT 
       (.I0(bram_rddata_a[6]),
        .I1(bram_rddata_a[5]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[3]),
        .I4(bram_rddata_a[2]),
        .I5(bram_rddata_a[1]),
        .O(\Using_LUT6.Use_MUXF7.result6 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \Using_LUT6.Use_MUXF7.XOR6_LUT_N 
       (.I0(bram_rddata_a[6]),
        .I1(bram_rddata_a[5]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[3]),
        .I4(bram_rddata_a[2]),
        .I5(bram_rddata_a[1]),
        .O(\Using_LUT6.Use_MUXF7.result6n ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_80
   (D,
    bram_rddata_a);
  output [0:0]D;
  input [6:0]bram_rddata_a;

  wire [0:0]D;
  wire \Using_LUT6.Use_MUXF7.result6 ;
  wire \Using_LUT6.Use_MUXF7.result6n ;
  wire [6:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  MUXF7 \Using_LUT6.Use_MUXF7.MUXF7_LUT 
       (.I0(\Using_LUT6.Use_MUXF7.result6 ),
        .I1(\Using_LUT6.Use_MUXF7.result6n ),
        .O(D),
        .S(bram_rddata_a[0]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Use_MUXF7.XOR6_LUT 
       (.I0(bram_rddata_a[1]),
        .I1(bram_rddata_a[2]),
        .I2(bram_rddata_a[3]),
        .I3(bram_rddata_a[4]),
        .I4(bram_rddata_a[5]),
        .I5(bram_rddata_a[6]),
        .O(\Using_LUT6.Use_MUXF7.result6 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \Using_LUT6.Use_MUXF7.XOR6_LUT_N 
       (.I0(bram_rddata_a[1]),
        .I1(bram_rddata_a[2]),
        .I2(bram_rddata_a[3]),
        .I3(bram_rddata_a[4]),
        .I4(bram_rddata_a[5]),
        .I5(bram_rddata_a[6]),
        .O(\Using_LUT6.Use_MUXF7.result6n ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_84
   (\Using_LUT6.Use_MUXF7.MUXF7_LUT_0 ,
    bram_rddata_a);
  output [0:0]\Using_LUT6.Use_MUXF7.MUXF7_LUT_0 ;
  input [6:0]bram_rddata_a;

  wire [0:0]\Using_LUT6.Use_MUXF7.MUXF7_LUT_0 ;
  wire \Using_LUT6.Use_MUXF7.result6 ;
  wire \Using_LUT6.Use_MUXF7.result6n ;
  wire [6:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  MUXF7 \Using_LUT6.Use_MUXF7.MUXF7_LUT 
       (.I0(\Using_LUT6.Use_MUXF7.result6 ),
        .I1(\Using_LUT6.Use_MUXF7.result6n ),
        .O(\Using_LUT6.Use_MUXF7.MUXF7_LUT_0 ),
        .S(bram_rddata_a[0]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Use_MUXF7.XOR6_LUT 
       (.I0(bram_rddata_a[1]),
        .I1(bram_rddata_a[2]),
        .I2(bram_rddata_a[3]),
        .I3(bram_rddata_a[4]),
        .I4(bram_rddata_a[5]),
        .I5(bram_rddata_a[6]),
        .O(\Using_LUT6.Use_MUXF7.result6 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \Using_LUT6.Use_MUXF7.XOR6_LUT_N 
       (.I0(bram_rddata_a[1]),
        .I1(bram_rddata_a[2]),
        .I2(bram_rddata_a[3]),
        .I3(bram_rddata_a[4]),
        .I4(bram_rddata_a[5]),
        .I5(bram_rddata_a[6]),
        .O(\Using_LUT6.Use_MUXF7.result6n ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_85
   (\Using_LUT6.Use_MUXF7.MUXF7_LUT_0 ,
    bram_rddata_a);
  output [0:0]\Using_LUT6.Use_MUXF7.MUXF7_LUT_0 ;
  input [6:0]bram_rddata_a;

  wire [0:0]\Using_LUT6.Use_MUXF7.MUXF7_LUT_0 ;
  wire \Using_LUT6.Use_MUXF7.result6 ;
  wire \Using_LUT6.Use_MUXF7.result6n ;
  wire [6:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  MUXF7 \Using_LUT6.Use_MUXF7.MUXF7_LUT 
       (.I0(\Using_LUT6.Use_MUXF7.result6 ),
        .I1(\Using_LUT6.Use_MUXF7.result6n ),
        .O(\Using_LUT6.Use_MUXF7.MUXF7_LUT_0 ),
        .S(bram_rddata_a[0]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Use_MUXF7.XOR6_LUT 
       (.I0(bram_rddata_a[1]),
        .I1(bram_rddata_a[2]),
        .I2(bram_rddata_a[3]),
        .I3(bram_rddata_a[4]),
        .I4(bram_rddata_a[5]),
        .I5(bram_rddata_a[6]),
        .O(\Using_LUT6.Use_MUXF7.result6 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \Using_LUT6.Use_MUXF7.XOR6_LUT_N 
       (.I0(bram_rddata_a[1]),
        .I1(bram_rddata_a[2]),
        .I2(bram_rddata_a[3]),
        .I3(bram_rddata_a[4]),
        .I4(bram_rddata_a[5]),
        .I5(bram_rddata_a[6]),
        .O(\Using_LUT6.Use_MUXF7.result6n ));
endmodule

(* ORIG_REF_NAME = "Parity" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_86
   (\Using_LUT6.Use_MUXF7.MUXF7_LUT_0 ,
    bram_rddata_a);
  output [0:0]\Using_LUT6.Use_MUXF7.MUXF7_LUT_0 ;
  input [6:0]bram_rddata_a;

  wire [0:0]\Using_LUT6.Use_MUXF7.MUXF7_LUT_0 ;
  wire \Using_LUT6.Use_MUXF7.result6 ;
  wire \Using_LUT6.Use_MUXF7.result6n ;
  wire [6:0]bram_rddata_a;

  (* box_type = "PRIMITIVE" *) 
  MUXF7 \Using_LUT6.Use_MUXF7.MUXF7_LUT 
       (.I0(\Using_LUT6.Use_MUXF7.result6 ),
        .I1(\Using_LUT6.Use_MUXF7.result6n ),
        .O(\Using_LUT6.Use_MUXF7.MUXF7_LUT_0 ),
        .S(bram_rddata_a[0]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.Use_MUXF7.XOR6_LUT 
       (.I0(bram_rddata_a[6]),
        .I1(bram_rddata_a[5]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[3]),
        .I4(bram_rddata_a[2]),
        .I5(bram_rddata_a[1]),
        .O(\Using_LUT6.Use_MUXF7.result6 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \Using_LUT6.Use_MUXF7.XOR6_LUT_N 
       (.I0(bram_rddata_a[6]),
        .I1(bram_rddata_a[5]),
        .I2(bram_rddata_a[4]),
        .I3(bram_rddata_a[3]),
        .I4(bram_rddata_a[2]),
        .I5(bram_rddata_a[1]),
        .O(\Using_LUT6.Use_MUXF7.result6n ));
endmodule

module bd_bram_ecc_axi_bram_ctrl_1_0_SRL_FIFO
   (E,
    bid_gets_fifo_load,
    D,
    \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[4] ,
    SR,
    s_axi_aclk,
    s_axi_awid,
    aw_active_re,
    axi_wr_burst,
    Q,
    bid_gets_fifo_load_d1_reg,
    Arb2AW_Active,
    aw_active_d1,
    bid_gets_fifo_load_d1,
    Data_Exists_DFF_0,
    s_axi_bready,
    AW2Arb_BVALID_Cnt);
  output [0:0]E;
  output bid_gets_fifo_load;
  output [12:0]D;
  output [0:0]\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[4] ;
  input [0:0]SR;
  input s_axi_aclk;
  input [12:0]s_axi_awid;
  input aw_active_re;
  input axi_wr_burst;
  input [0:0]Q;
  input bid_gets_fifo_load_d1_reg;
  input Arb2AW_Active;
  input aw_active_d1;
  input bid_gets_fifo_load_d1;
  input Data_Exists_DFF_0;
  input s_axi_bready;
  input [2:0]AW2Arb_BVALID_Cnt;

  wire [2:0]AW2Arb_BVALID_Cnt;
  wire \Addr_Counters[0].FDRE_I_n_0 ;
  wire \Addr_Counters[1].FDRE_I_n_0 ;
  wire \Addr_Counters[2].FDRE_I_n_0 ;
  wire \Addr_Counters[3].FDRE_I_n_0 ;
  wire \Addr_Counters[3].XORCY_I_i_1_n_0 ;
  wire Arb2AW_Active;
  wire CI;
  wire [12:0]D;
  wire D_0;
  wire Data_Exists_DFF_0;
  wire Data_Exists_DFF_i_2_n_0;
  wire Data_Exists_DFF_i_3_n_0;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[4] ;
  wire [0:0]Q;
  wire S;
  wire S0_out;
  wire S1_out;
  wire [0:0]SR;
  wire addr_cy_1;
  wire addr_cy_2;
  wire addr_cy_3;
  wire aw_active_d1;
  wire aw_active_re;
  wire \axi_bid_int[12]_i_3_n_0 ;
  wire axi_wr_burst;
  wire bid_fifo_not_empty;
  wire [12:0]bid_fifo_rd;
  wire bid_gets_fifo_load;
  wire bid_gets_fifo_load_d1;
  wire bid_gets_fifo_load_d1_i_2_n_0;
  wire bid_gets_fifo_load_d1_reg;
  wire s_axi_aclk;
  wire [12:0]s_axi_awid;
  wire s_axi_bready;
  wire sum_A_0;
  wire sum_A_1;
  wire sum_A_2;
  wire sum_A_3;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[0].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_3),
        .Q(\Addr_Counters[0].FDRE_I_n_0 ),
        .R(SR));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \Addr_Counters[0].MUXCY_L_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED [3],addr_cy_1,addr_cy_2,addr_cy_3}),
        .CYINIT(CI),
        .DI({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED [3],\Addr_Counters[2].FDRE_I_n_0 ,\Addr_Counters[1].FDRE_I_n_0 ,\Addr_Counters[0].FDRE_I_n_0 }),
        .O({sum_A_0,sum_A_1,sum_A_2,sum_A_3}),
        .S({\Addr_Counters[3].XORCY_I_i_1_n_0 ,S0_out,S1_out,S}));
  LUT6 #(
    .INIT(64'h0000FFFFFFFE0000)) 
    \Addr_Counters[0].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[1].FDRE_I_n_0 ),
        .I1(\Addr_Counters[3].FDRE_I_n_0 ),
        .I2(\Addr_Counters[2].FDRE_I_n_0 ),
        .I3(aw_active_re),
        .I4(\axi_bid_int[12]_i_3_n_0 ),
        .I5(\Addr_Counters[0].FDRE_I_n_0 ),
        .O(S));
  LUT6 #(
    .INIT(64'hAAAAAAAA2AAAAAAA)) 
    \Addr_Counters[0].MUXCY_L_I_i_2 
       (.I0(aw_active_re),
        .I1(\Addr_Counters[2].FDRE_I_n_0 ),
        .I2(\Addr_Counters[3].FDRE_I_n_0 ),
        .I3(\Addr_Counters[1].FDRE_I_n_0 ),
        .I4(\Addr_Counters[0].FDRE_I_n_0 ),
        .I5(\axi_bid_int[12]_i_3_n_0 ),
        .O(CI));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[1].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_2),
        .Q(\Addr_Counters[1].FDRE_I_n_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000FFFFFFFE0000)) 
    \Addr_Counters[1].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[3].FDRE_I_n_0 ),
        .I1(\Addr_Counters[0].FDRE_I_n_0 ),
        .I2(\Addr_Counters[2].FDRE_I_n_0 ),
        .I3(aw_active_re),
        .I4(\axi_bid_int[12]_i_3_n_0 ),
        .I5(\Addr_Counters[1].FDRE_I_n_0 ),
        .O(S1_out));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[2].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_1),
        .Q(\Addr_Counters[2].FDRE_I_n_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000FFFFFFFE0000)) 
    \Addr_Counters[2].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[1].FDRE_I_n_0 ),
        .I1(\Addr_Counters[3].FDRE_I_n_0 ),
        .I2(\Addr_Counters[0].FDRE_I_n_0 ),
        .I3(aw_active_re),
        .I4(\axi_bid_int[12]_i_3_n_0 ),
        .I5(\Addr_Counters[2].FDRE_I_n_0 ),
        .O(S0_out));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[3].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_0),
        .Q(\Addr_Counters[3].FDRE_I_n_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000FFFFFFFE0000)) 
    \Addr_Counters[3].XORCY_I_i_1 
       (.I0(\Addr_Counters[1].FDRE_I_n_0 ),
        .I1(\Addr_Counters[0].FDRE_I_n_0 ),
        .I2(\Addr_Counters[2].FDRE_I_n_0 ),
        .I3(aw_active_re),
        .I4(\axi_bid_int[12]_i_3_n_0 ),
        .I5(\Addr_Counters[3].FDRE_I_n_0 ),
        .O(\Addr_Counters[3].XORCY_I_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    Data_Exists_DFF
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D_0),
        .Q(bid_fifo_not_empty),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFF20022)) 
    Data_Exists_DFF_i_1
       (.I0(Arb2AW_Active),
        .I1(aw_active_d1),
        .I2(Data_Exists_DFF_i_2_n_0),
        .I3(Data_Exists_DFF_i_3_n_0),
        .I4(bid_fifo_not_empty),
        .O(D_0));
  LUT6 #(
    .INIT(64'h00000000F707F7F7)) 
    Data_Exists_DFF_i_2
       (.I0(s_axi_bready),
        .I1(Data_Exists_DFF_0),
        .I2(bid_gets_fifo_load_d1_i_2_n_0),
        .I3(axi_wr_burst),
        .I4(Q),
        .I5(bid_gets_fifo_load_d1),
        .O(Data_Exists_DFF_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Data_Exists_DFF_i_3
       (.I0(\Addr_Counters[1].FDRE_I_n_0 ),
        .I1(\Addr_Counters[3].FDRE_I_n_0 ),
        .I2(\Addr_Counters[0].FDRE_I_n_0 ),
        .I3(\Addr_Counters[2].FDRE_I_n_0 ),
        .O(Data_Exists_DFF_i_3_n_0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[0].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[0].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[12]),
        .Q(bid_fifo_rd[12]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[10].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[10].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[2]),
        .Q(bid_fifo_rd[2]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[11].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[11].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[1]),
        .Q(bid_fifo_rd[1]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[12].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[12].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[0]),
        .Q(bid_fifo_rd[0]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[1].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[1].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[11]),
        .Q(bid_fifo_rd[11]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[2].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[2].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[10]),
        .Q(bid_fifo_rd[10]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[3].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[3].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[9]),
        .Q(bid_fifo_rd[9]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[4].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[4].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[8]),
        .Q(bid_fifo_rd[8]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[5].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[5].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[7]),
        .Q(bid_fifo_rd[7]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[6].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[6].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[6]),
        .Q(bid_fifo_rd[6]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[7].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[7].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[5]),
        .Q(bid_fifo_rd[5]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[8].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[8].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[4]),
        .Q(bid_fifo_rd[4]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[9].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[9].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[3]),
        .Q(bid_fifo_rd[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[0]_i_1 
       (.I0(Q),
        .I1(axi_wr_burst),
        .O(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_bid_int[0]_i_1 
       (.I0(s_axi_awid[0]),
        .I1(bid_gets_fifo_load),
        .I2(bid_fifo_rd[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_bid_int[10]_i_1 
       (.I0(s_axi_awid[10]),
        .I1(bid_gets_fifo_load),
        .I2(bid_fifo_rd[10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_bid_int[11]_i_1 
       (.I0(s_axi_awid[11]),
        .I1(bid_gets_fifo_load),
        .I2(bid_fifo_rd[11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \axi_bid_int[12]_i_1 
       (.I0(\axi_bid_int[12]_i_3_n_0 ),
        .I1(bid_gets_fifo_load),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_bid_int[12]_i_2 
       (.I0(s_axi_awid[12]),
        .I1(bid_gets_fifo_load),
        .I2(bid_fifo_rd[12]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hA8AAA888A888A888)) 
    \axi_bid_int[12]_i_3 
       (.I0(bid_fifo_not_empty),
        .I1(bid_gets_fifo_load_d1),
        .I2(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[4] ),
        .I3(bid_gets_fifo_load_d1_i_2_n_0),
        .I4(Data_Exists_DFF_0),
        .I5(s_axi_bready),
        .O(\axi_bid_int[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_bid_int[1]_i_1 
       (.I0(s_axi_awid[1]),
        .I1(bid_gets_fifo_load),
        .I2(bid_fifo_rd[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_bid_int[2]_i_1 
       (.I0(s_axi_awid[2]),
        .I1(bid_gets_fifo_load),
        .I2(bid_fifo_rd[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_bid_int[3]_i_1 
       (.I0(s_axi_awid[3]),
        .I1(bid_gets_fifo_load),
        .I2(bid_fifo_rd[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_bid_int[4]_i_1 
       (.I0(s_axi_awid[4]),
        .I1(bid_gets_fifo_load),
        .I2(bid_fifo_rd[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_bid_int[5]_i_1 
       (.I0(s_axi_awid[5]),
        .I1(bid_gets_fifo_load),
        .I2(bid_fifo_rd[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_bid_int[6]_i_1 
       (.I0(s_axi_awid[6]),
        .I1(bid_gets_fifo_load),
        .I2(bid_fifo_rd[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_bid_int[7]_i_1 
       (.I0(s_axi_awid[7]),
        .I1(bid_gets_fifo_load),
        .I2(bid_fifo_rd[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_bid_int[8]_i_1 
       (.I0(s_axi_awid[8]),
        .I1(bid_gets_fifo_load),
        .I2(bid_fifo_rd[8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_bid_int[9]_i_1 
       (.I0(s_axi_awid[9]),
        .I1(bid_gets_fifo_load),
        .I2(bid_fifo_rd[9]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h08000A0008000800)) 
    bid_gets_fifo_load_d1_i_1
       (.I0(aw_active_re),
        .I1(bid_gets_fifo_load_d1_i_2_n_0),
        .I2(axi_wr_burst),
        .I3(Q),
        .I4(bid_fifo_not_empty),
        .I5(bid_gets_fifo_load_d1_reg),
        .O(bid_gets_fifo_load));
  LUT3 #(
    .INIT(8'h01)) 
    bid_gets_fifo_load_d1_i_2
       (.I0(AW2Arb_BVALID_Cnt[1]),
        .I1(AW2Arb_BVALID_Cnt[2]),
        .I2(AW2Arb_BVALID_Cnt[0]),
        .O(bid_gets_fifo_load_d1_i_2_n_0));
endmodule

module bd_bram_ecc_axi_bram_ctrl_1_0_XOR18
   (bram_wrdata_a,
    Q);
  output [0:0]bram_wrdata_a;
  input [17:0]Q;

  wire [17:0]Q;
  wire \Using_LUT6.xor18_c1 ;
  wire \Using_LUT6.xor18_c2 ;
  wire \Using_LUT6.xor6_1 ;
  wire \Using_LUT6.xor6_2 ;
  wire \Using_LUT6.xor6_3 ;
  wire [0:0]bram_wrdata_a;
  wire [3:2]\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED ;
  wire [3:3]\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_S_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.XOR6_1_LUT 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\Using_LUT6.xor6_1 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.XOR6_2_LUT 
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(Q[9]),
        .I4(Q[10]),
        .I5(Q[11]),
        .O(\Using_LUT6.xor6_2 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.XOR6_3_LUT 
       (.I0(Q[12]),
        .I1(Q[13]),
        .I2(Q[14]),
        .I3(Q[15]),
        .I4(Q[16]),
        .I5(Q[17]),
        .O(\Using_LUT6.xor6_3 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \Using_LUT6.XOR_1st_MUXCY_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_CO_UNCONNECTED [3:2],\Using_LUT6.xor18_c2 ,\Using_LUT6.xor18_c1 }),
        .CYINIT(1'b0),
        .DI({\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_DI_UNCONNECTED [3:2],\Using_LUT6.xor6_1 ,1'b1}),
        .O({\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED [3],bram_wrdata_a,\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED [1:0]}),
        .S({\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_S_UNCONNECTED [3],\Using_LUT6.xor6_3 ,\Using_LUT6.xor6_2 ,\Using_LUT6.xor6_1 }));
endmodule

(* ORIG_REF_NAME = "XOR18" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_XOR18_1
   (bram_wrdata_a,
    Q);
  output [0:0]bram_wrdata_a;
  input [17:0]Q;

  wire [17:0]Q;
  wire \Using_LUT6.xor18_c1 ;
  wire \Using_LUT6.xor18_c2 ;
  wire \Using_LUT6.xor6_1 ;
  wire \Using_LUT6.xor6_2 ;
  wire \Using_LUT6.xor6_3 ;
  wire [0:0]bram_wrdata_a;
  wire [3:2]\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED ;
  wire [3:3]\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_S_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.XOR6_1_LUT 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\Using_LUT6.xor6_1 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.XOR6_2_LUT 
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(Q[9]),
        .I4(Q[10]),
        .I5(Q[11]),
        .O(\Using_LUT6.xor6_2 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.XOR6_3_LUT 
       (.I0(Q[12]),
        .I1(Q[13]),
        .I2(Q[14]),
        .I3(Q[15]),
        .I4(Q[16]),
        .I5(Q[17]),
        .O(\Using_LUT6.xor6_3 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \Using_LUT6.XOR_1st_MUXCY_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_CO_UNCONNECTED [3:2],\Using_LUT6.xor18_c2 ,\Using_LUT6.xor18_c1 }),
        .CYINIT(1'b0),
        .DI({\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_DI_UNCONNECTED [3:2],\Using_LUT6.xor6_1 ,1'b1}),
        .O({\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED [3],bram_wrdata_a,\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED [1:0]}),
        .S({\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_S_UNCONNECTED [3],\Using_LUT6.xor6_3 ,\Using_LUT6.xor6_2 ,\Using_LUT6.xor6_1 }));
endmodule

(* ORIG_REF_NAME = "XOR18" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_XOR18_2
   (bram_wrdata_a,
    Q);
  output [0:0]bram_wrdata_a;
  input [17:0]Q;

  wire [17:0]Q;
  wire \Using_LUT6.xor18_c1 ;
  wire \Using_LUT6.xor18_c2 ;
  wire \Using_LUT6.xor6_1 ;
  wire \Using_LUT6.xor6_2 ;
  wire \Using_LUT6.xor6_3 ;
  wire [0:0]bram_wrdata_a;
  wire [3:2]\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED ;
  wire [3:3]\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_S_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.XOR6_1_LUT 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\Using_LUT6.xor6_1 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.XOR6_2_LUT 
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(Q[9]),
        .I4(Q[10]),
        .I5(Q[11]),
        .O(\Using_LUT6.xor6_2 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.XOR6_3_LUT 
       (.I0(Q[12]),
        .I1(Q[13]),
        .I2(Q[14]),
        .I3(Q[15]),
        .I4(Q[16]),
        .I5(Q[17]),
        .O(\Using_LUT6.xor6_3 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \Using_LUT6.XOR_1st_MUXCY_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_CO_UNCONNECTED [3:2],\Using_LUT6.xor18_c2 ,\Using_LUT6.xor18_c1 }),
        .CYINIT(1'b0),
        .DI({\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_DI_UNCONNECTED [3:2],\Using_LUT6.xor6_1 ,1'b1}),
        .O({\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED [3],bram_wrdata_a,\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED [1:0]}),
        .S({\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_S_UNCONNECTED [3],\Using_LUT6.xor6_3 ,\Using_LUT6.xor6_2 ,\Using_LUT6.xor6_1 }));
endmodule

(* ORIG_REF_NAME = "XOR18" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_XOR18_3
   (bram_wrdata_a,
    Q);
  output [0:0]bram_wrdata_a;
  input [14:0]Q;

  wire [14:0]Q;
  wire \Using_LUT6.xor18_c1 ;
  wire \Using_LUT6.xor18_c2 ;
  wire \Using_LUT6.xor6_1 ;
  wire \Using_LUT6.xor6_2 ;
  wire \Using_LUT6.xor6_3 ;
  wire [0:0]bram_wrdata_a;
  wire [3:2]\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED ;
  wire [3:3]\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_S_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.XOR6_1_LUT 
       (.I0(1'b0),
        .I1(1'b0),
        .I2(1'b0),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\Using_LUT6.xor6_1 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.XOR6_2_LUT 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(Q[8]),
        .O(\Using_LUT6.xor6_2 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.XOR6_3_LUT 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(Q[11]),
        .I3(Q[12]),
        .I4(Q[13]),
        .I5(Q[14]),
        .O(\Using_LUT6.xor6_3 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \Using_LUT6.XOR_1st_MUXCY_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_CO_UNCONNECTED [3:2],\Using_LUT6.xor18_c2 ,\Using_LUT6.xor18_c1 }),
        .CYINIT(1'b0),
        .DI({\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_DI_UNCONNECTED [3:2],\Using_LUT6.xor6_1 ,1'b1}),
        .O({\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED [3],bram_wrdata_a,\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED [1:0]}),
        .S({\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_S_UNCONNECTED [3],\Using_LUT6.xor6_3 ,\Using_LUT6.xor6_2 ,\Using_LUT6.xor6_1 }));
endmodule

(* ORIG_REF_NAME = "XOR18" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_XOR18_4
   (bram_wrdata_a,
    Q);
  output [0:0]bram_wrdata_a;
  input [14:0]Q;

  wire [14:0]Q;
  wire \Using_LUT6.xor18_c1 ;
  wire \Using_LUT6.xor18_c2 ;
  wire \Using_LUT6.xor6_1 ;
  wire \Using_LUT6.xor6_2 ;
  wire \Using_LUT6.xor6_3 ;
  wire [0:0]bram_wrdata_a;
  wire [3:2]\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED ;
  wire [3:3]\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_S_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.XOR6_1_LUT 
       (.I0(1'b0),
        .I1(1'b0),
        .I2(1'b0),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\Using_LUT6.xor6_1 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.XOR6_2_LUT 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(Q[8]),
        .O(\Using_LUT6.xor6_2 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.XOR6_3_LUT 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(Q[11]),
        .I3(Q[12]),
        .I4(Q[13]),
        .I5(Q[14]),
        .O(\Using_LUT6.xor6_3 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \Using_LUT6.XOR_1st_MUXCY_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_CO_UNCONNECTED [3:2],\Using_LUT6.xor18_c2 ,\Using_LUT6.xor18_c1 }),
        .CYINIT(1'b0),
        .DI({\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_DI_UNCONNECTED [3:2],\Using_LUT6.xor6_1 ,1'b1}),
        .O({\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED [3],bram_wrdata_a,\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED [1:0]}),
        .S({\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_S_UNCONNECTED [3],\Using_LUT6.xor6_3 ,\Using_LUT6.xor6_2 ,\Using_LUT6.xor6_1 }));
endmodule

(* ORIG_REF_NAME = "XOR18" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_XOR18_5
   (bram_wrdata_a,
    Q);
  output [0:0]bram_wrdata_a;
  input [17:0]Q;

  wire [17:0]Q;
  wire \Using_LUT6.xor18_c1 ;
  wire \Using_LUT6.xor18_c2 ;
  wire \Using_LUT6.xor6_1 ;
  wire \Using_LUT6.xor6_2 ;
  wire \Using_LUT6.xor6_3 ;
  wire [0:0]bram_wrdata_a;
  wire [3:2]\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED ;
  wire [3:3]\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_S_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.XOR6_1_LUT 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\Using_LUT6.xor6_1 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.XOR6_2_LUT 
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(Q[9]),
        .I4(Q[10]),
        .I5(Q[11]),
        .O(\Using_LUT6.xor6_2 ));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Using_LUT6.XOR6_3_LUT 
       (.I0(Q[12]),
        .I1(Q[13]),
        .I2(Q[14]),
        .I3(Q[15]),
        .I4(Q[16]),
        .I5(Q[17]),
        .O(\Using_LUT6.xor6_3 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \Using_LUT6.XOR_1st_MUXCY_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_CO_UNCONNECTED [3:2],\Using_LUT6.xor18_c2 ,\Using_LUT6.xor18_c1 }),
        .CYINIT(1'b0),
        .DI({\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_DI_UNCONNECTED [3:2],\Using_LUT6.xor6_1 ,1'b1}),
        .O({\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED [3],bram_wrdata_a,\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_O_UNCONNECTED [1:0]}),
        .S({\NLW_Using_LUT6.XOR_1st_MUXCY_CARRY4_S_UNCONNECTED [3],\Using_LUT6.xor6_3 ,\Using_LUT6.xor6_2 ,\Using_LUT6.xor6_1 }));
endmodule

(* C_BRAM_ADDR_WIDTH = "12" *) (* C_BRAM_INST_MODE = "EXTERNAL" *) (* C_ECC = "1" *) 
(* C_ECC_ONOFF_RESET_VALUE = "1" *) (* C_ECC_TYPE = "0" *) (* C_FAMILY = "zynq" *) 
(* C_FAULT_INJECT = "0" *) (* C_MEMORY_DEPTH = "4096" *) (* C_RD_CMD_OPTIMIZATION = "0" *) 
(* C_READ_LATENCY = "1" *) (* C_SINGLE_PORT_BRAM = "1" *) (* C_S_AXI_ADDR_WIDTH = "32" *) 
(* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* C_S_AXI_ID_WIDTH = "13" *) (* C_S_AXI_PROTOCOL = "AXI4" *) (* C_S_AXI_SUPPORTS_NARROW_BURST = "0" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_axi_bram_ctrl
   (s_axi_aclk,
    s_axi_aresetn,
    ecc_interrupt,
    ecc_ue,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wdata,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a,
    bram_rst_b,
    bram_clk_b,
    bram_en_b,
    bram_we_b,
    bram_addr_b,
    bram_wrdata_b,
    bram_rddata_b);
  input s_axi_aclk;
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
  output bram_clk_a;
  output bram_en_a;
  output [4:0]bram_we_a;
  output [31:0]bram_addr_a;
  output [39:0]bram_wrdata_a;
  input [39:0]bram_rddata_a;
  output bram_rst_b;
  output bram_clk_b;
  output bram_en_b;
  output [4:0]bram_we_b;
  output [31:0]bram_addr_b;
  output [39:0]bram_wrdata_b;
  input [39:0]bram_rddata_b;

  wire \<const0> ;
  wire [31:2]\^bram_addr_a ;
  wire bram_en_a;
  wire [39:0]bram_rddata_a;
  wire bram_rst_a;
  wire [4:4]\^bram_we_a ;
  wire [39:0]\^bram_wrdata_a ;
  wire ecc_interrupt;
  wire ecc_ue;
  wire s_axi_aclk;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [12:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [12:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire [12:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [31:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_arready;
  wire s_axi_ctrl_arvalid;
  wire [31:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awready;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire s_axi_ctrl_bvalid;
  wire [31:0]s_axi_ctrl_rdata;
  wire s_axi_ctrl_rready;
  wire s_axi_ctrl_rvalid;
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wvalid;
  wire [31:0]s_axi_rdata;
  wire [12:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign bram_addr_a[31:2] = \^bram_addr_a [31:2];
  assign bram_addr_a[1] = \<const0> ;
  assign bram_addr_a[0] = \<const0> ;
  assign bram_addr_b[31] = \<const0> ;
  assign bram_addr_b[30] = \<const0> ;
  assign bram_addr_b[29] = \<const0> ;
  assign bram_addr_b[28] = \<const0> ;
  assign bram_addr_b[27] = \<const0> ;
  assign bram_addr_b[26] = \<const0> ;
  assign bram_addr_b[25] = \<const0> ;
  assign bram_addr_b[24] = \<const0> ;
  assign bram_addr_b[23] = \<const0> ;
  assign bram_addr_b[22] = \<const0> ;
  assign bram_addr_b[21] = \<const0> ;
  assign bram_addr_b[20] = \<const0> ;
  assign bram_addr_b[19] = \<const0> ;
  assign bram_addr_b[18] = \<const0> ;
  assign bram_addr_b[17] = \<const0> ;
  assign bram_addr_b[16] = \<const0> ;
  assign bram_addr_b[15] = \<const0> ;
  assign bram_addr_b[14] = \<const0> ;
  assign bram_addr_b[13] = \<const0> ;
  assign bram_addr_b[12] = \<const0> ;
  assign bram_addr_b[11] = \<const0> ;
  assign bram_addr_b[10] = \<const0> ;
  assign bram_addr_b[9] = \<const0> ;
  assign bram_addr_b[8] = \<const0> ;
  assign bram_addr_b[7] = \<const0> ;
  assign bram_addr_b[6] = \<const0> ;
  assign bram_addr_b[5] = \<const0> ;
  assign bram_addr_b[4] = \<const0> ;
  assign bram_addr_b[3] = \<const0> ;
  assign bram_addr_b[2] = \<const0> ;
  assign bram_addr_b[1] = \<const0> ;
  assign bram_addr_b[0] = \<const0> ;
  assign bram_clk_a = s_axi_aclk;
  assign bram_clk_b = \<const0> ;
  assign bram_en_b = \<const0> ;
  assign bram_rst_b = \<const0> ;
  assign bram_we_a[4] = \^bram_we_a [4];
  assign bram_we_a[3] = \^bram_we_a [4];
  assign bram_we_a[2] = \^bram_we_a [4];
  assign bram_we_a[1] = \^bram_we_a [4];
  assign bram_we_a[0] = \^bram_we_a [4];
  assign bram_we_b[4] = \<const0> ;
  assign bram_we_b[3] = \<const0> ;
  assign bram_we_b[2] = \<const0> ;
  assign bram_we_b[1] = \<const0> ;
  assign bram_we_b[0] = \<const0> ;
  assign bram_wrdata_a[39:8] = \^bram_wrdata_a [39:8];
  assign bram_wrdata_a[7] = \<const0> ;
  assign bram_wrdata_a[6:0] = \^bram_wrdata_a [6:0];
  assign bram_wrdata_b[39] = \<const0> ;
  assign bram_wrdata_b[38] = \<const0> ;
  assign bram_wrdata_b[37] = \<const0> ;
  assign bram_wrdata_b[36] = \<const0> ;
  assign bram_wrdata_b[35] = \<const0> ;
  assign bram_wrdata_b[34] = \<const0> ;
  assign bram_wrdata_b[33] = \<const0> ;
  assign bram_wrdata_b[32] = \<const0> ;
  assign bram_wrdata_b[31] = \<const0> ;
  assign bram_wrdata_b[30] = \<const0> ;
  assign bram_wrdata_b[29] = \<const0> ;
  assign bram_wrdata_b[28] = \<const0> ;
  assign bram_wrdata_b[27] = \<const0> ;
  assign bram_wrdata_b[26] = \<const0> ;
  assign bram_wrdata_b[25] = \<const0> ;
  assign bram_wrdata_b[24] = \<const0> ;
  assign bram_wrdata_b[23] = \<const0> ;
  assign bram_wrdata_b[22] = \<const0> ;
  assign bram_wrdata_b[21] = \<const0> ;
  assign bram_wrdata_b[20] = \<const0> ;
  assign bram_wrdata_b[19] = \<const0> ;
  assign bram_wrdata_b[18] = \<const0> ;
  assign bram_wrdata_b[17] = \<const0> ;
  assign bram_wrdata_b[16] = \<const0> ;
  assign bram_wrdata_b[15] = \<const0> ;
  assign bram_wrdata_b[14] = \<const0> ;
  assign bram_wrdata_b[13] = \<const0> ;
  assign bram_wrdata_b[12] = \<const0> ;
  assign bram_wrdata_b[11] = \<const0> ;
  assign bram_wrdata_b[10] = \<const0> ;
  assign bram_wrdata_b[9] = \<const0> ;
  assign bram_wrdata_b[8] = \<const0> ;
  assign bram_wrdata_b[7] = \<const0> ;
  assign bram_wrdata_b[6] = \<const0> ;
  assign bram_wrdata_b[5] = \<const0> ;
  assign bram_wrdata_b[4] = \<const0> ;
  assign bram_wrdata_b[3] = \<const0> ;
  assign bram_wrdata_b[2] = \<const0> ;
  assign bram_wrdata_b[1] = \<const0> ;
  assign bram_wrdata_b[0] = \<const0> ;
  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_ctrl_bresp[1] = \<const0> ;
  assign s_axi_ctrl_bresp[0] = \<const0> ;
  assign s_axi_ctrl_rresp[1] = \<const0> ;
  assign s_axi_ctrl_rresp[0] = \<const0> ;
  assign s_axi_ctrl_wready = s_axi_ctrl_awready;
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  bd_bram_ecc_axi_bram_ctrl_1_0_axi_bram_ctrl_top \gext_inst.abcv4_0_ext_inst 
       (.\Decode_Bits.Use_LUT6.UE_MUXF7 (\^s_axi_rresp ),
        .E(s_axi_ctrl_awready),
        .\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg (s_axi_rlast),
        .\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg (s_axi_rvalid),
        .Q(\^bram_addr_a ),
        .SR(bram_rst_a),
        .axi_bvalid_int_reg(s_axi_bvalid),
        .bram_en_a(bram_en_a),
        .bram_rddata_a({bram_rddata_a[39:8],bram_rddata_a[6:0]}),
        .bram_we_a(\^bram_we_a ),
        .bram_wrdata_a({\^bram_wrdata_a [39:8],\^bram_wrdata_a [6:0]}),
        .ecc_interrupt(ecc_interrupt),
        .ecc_ue(ecc_ue),
        .ongoing_write_reg(s_axi_ctrl_bvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[31:2]),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[31:2]),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen[3:0]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(\^s_axi_bresp ),
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr[9:2]),
        .s_axi_ctrl_arready(s_axi_ctrl_arready),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr[9:2]),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_rready(s_axi_ctrl_rready),
        .s_axi_ctrl_rvalid(s_axi_ctrl_rvalid),
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata[7:0]),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module bd_bram_ecc_axi_bram_ctrl_1_0_axi_bram_ctrl_top
   (\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ,
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ,
    Q,
    s_axi_ctrl_rdata,
    SR,
    bram_wrdata_a,
    \Decode_Bits.Use_LUT6.UE_MUXF7 ,
    s_axi_ctrl_rvalid,
    E,
    ongoing_write_reg,
    s_axi_awready,
    s_axi_arready,
    axi_bvalid_int_reg,
    s_axi_bid,
    s_axi_bresp,
    s_axi_rid,
    ecc_ue,
    s_axi_ctrl_arready,
    bram_en_a,
    bram_we_a,
    ecc_interrupt,
    s_axi_rdata,
    s_axi_wready,
    s_axi_arlen,
    s_axi_rready,
    s_axi_aresetn,
    s_axi_awburst,
    s_axi_arburst,
    s_axi_aclk,
    s_axi_arvalid,
    s_axi_awvalid,
    s_axi_awid,
    bram_rddata_a,
    s_axi_ctrl_rready,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_wdata,
    s_axi_bready,
    s_axi_wstrb,
    s_axi_wdata,
    s_axi_arid,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_wvalid,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_wvalid,
    s_axi_awlen,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_araddr,
    s_axi_ctrl_bready,
    s_axi_wlast);
  output \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ;
  output \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ;
  output [29:0]Q;
  output [31:0]s_axi_ctrl_rdata;
  output [0:0]SR;
  output [38:0]bram_wrdata_a;
  output \Decode_Bits.Use_LUT6.UE_MUXF7 ;
  output s_axi_ctrl_rvalid;
  output [0:0]E;
  output ongoing_write_reg;
  output s_axi_awready;
  output s_axi_arready;
  output axi_bvalid_int_reg;
  output [12:0]s_axi_bid;
  output [0:0]s_axi_bresp;
  output [12:0]s_axi_rid;
  output ecc_ue;
  output s_axi_ctrl_arready;
  output bram_en_a;
  output [0:0]bram_we_a;
  output ecc_interrupt;
  output [31:0]s_axi_rdata;
  output s_axi_wready;
  input [7:0]s_axi_arlen;
  input s_axi_rready;
  input s_axi_aresetn;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_arburst;
  input s_axi_aclk;
  input s_axi_arvalid;
  input s_axi_awvalid;
  input [12:0]s_axi_awid;
  input [38:0]bram_rddata_a;
  input s_axi_ctrl_rready;
  input s_axi_ctrl_arvalid;
  input [7:0]s_axi_ctrl_wdata;
  input s_axi_bready;
  input [3:0]s_axi_wstrb;
  input [31:0]s_axi_wdata;
  input [12:0]s_axi_arid;
  input s_axi_ctrl_awvalid;
  input s_axi_ctrl_wvalid;
  input [29:0]s_axi_araddr;
  input [29:0]s_axi_awaddr;
  input s_axi_wvalid;
  input [3:0]s_axi_awlen;
  input [7:0]s_axi_ctrl_awaddr;
  input [7:0]s_axi_ctrl_araddr;
  input s_axi_ctrl_bready;
  input s_axi_wlast;

  wire \Decode_Bits.Use_LUT6.UE_MUXF7 ;
  wire [0:0]E;
  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ;
  wire [29:0]Q;
  wire [0:0]SR;
  wire axi_bvalid_int_reg;
  wire bram_en_a;
  wire [38:0]bram_rddata_a;
  wire [0:0]bram_we_a;
  wire [38:0]bram_wrdata_a;
  wire ecc_interrupt;
  wire ecc_ue;
  wire ongoing_write_reg;
  wire s_axi_aclk;
  wire [29:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [12:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [29:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [12:0]s_axi_awid;
  wire [3:0]s_axi_awlen;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire [12:0]s_axi_bid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire [7:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_arready;
  wire s_axi_ctrl_arvalid;
  wire [7:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire [31:0]s_axi_ctrl_rdata;
  wire s_axi_ctrl_rready;
  wire s_axi_ctrl_rvalid;
  wire [7:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wvalid;
  wire [31:0]s_axi_rdata;
  wire [12:0]s_axi_rid;
  wire s_axi_rready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  bd_bram_ecc_axi_bram_ctrl_1_0_full_axi \GEN_AXI4.I_FULL_AXI 
       (.BRAM_Addr_A(Q),
        .\Decode_Bits.Use_LUT6.UE_MUXF7 (\Decode_Bits.Use_LUT6.UE_MUXF7 ),
        .E(E),
        .\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg (\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ),
        .\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg (\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ),
        .Q(bram_wrdata_a[38:7]),
        .SR(SR),
        .axi_bvalid_int_reg(axi_bvalid_int_reg),
        .bram_en_a(bram_en_a),
        .bram_rddata_a(bram_rddata_a),
        .bram_we_a(bram_we_a),
        .bram_wrdata_a(bram_wrdata_a[6:0]),
        .ecc_interrupt(ecc_interrupt),
        .ecc_ue(ecc_ue),
        .ongoing_write_reg(ongoing_write_reg),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr),
        .s_axi_ctrl_arready(s_axi_ctrl_arready),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_rready(s_axi_ctrl_rready),
        .s_axi_ctrl_rvalid(s_axi_ctrl_rvalid),
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module bd_bram_ecc_axi_bram_ctrl_1_0_axi_lite_if
   (s_axi_ctrl_rdata,
    E,
    ongoing_write_reg_0,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_arready,
    \RegWrData_reg[31]_0 ,
    Q,
    \RegAddr_reg[6]_0 ,
    D,
    \GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q_reg ,
    RegWr_reg_0,
    \RegWrData_reg[30]_0 ,
    \RegWrData_reg[31]_1 ,
    SR,
    s_axi_aclk,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_arvalid,
    s_axi_aresetn,
    s_axi_ctrl_rready,
    Wr_Sl_UE,
    Rd_Sl_UE,
    \ECC_STATUS_REGISTERS.ECC_StatusReg_reg[31] ,
    \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0 ,
    p_0_in1_in,
    p_2_in,
    \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 ,
    \CE_COUNTER.CE_CounterReg_reg[27] ,
    \CE_COUNTER.CE_CounterReg_reg[26] ,
    Rd_Sl_CE,
    Wr_Sl_CE,
    \CE_COUNTER.CE_CounterReg_reg[31] ,
    \GEN_ECC_ONOFF.ECC_OnOffReg_reg[31] ,
    \CE_COUNTER.CE_CounterReg_reg[24] ,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_araddr,
    s_axi_ctrl_bready,
    s_axi_ctrl_wdata);
  output [31:0]s_axi_ctrl_rdata;
  output [0:0]E;
  output ongoing_write_reg_0;
  output s_axi_ctrl_rvalid;
  output s_axi_ctrl_arready;
  output \RegWrData_reg[31]_0 ;
  output [1:0]Q;
  output [1:0]\RegAddr_reg[6]_0 ;
  output [7:0]D;
  output [0:0]\GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q_reg ;
  output RegWr_reg_0;
  output \RegWrData_reg[30]_0 ;
  output \RegWrData_reg[31]_1 ;
  input [0:0]SR;
  input s_axi_aclk;
  input s_axi_ctrl_awvalid;
  input s_axi_ctrl_wvalid;
  input s_axi_ctrl_arvalid;
  input s_axi_aresetn;
  input s_axi_ctrl_rready;
  input Wr_Sl_UE;
  input Rd_Sl_UE;
  input \ECC_STATUS_REGISTERS.ECC_StatusReg_reg[31] ;
  input [7:0]\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0 ;
  input p_0_in1_in;
  input [1:0]p_2_in;
  input [29:0]\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 ;
  input \CE_COUNTER.CE_CounterReg_reg[27] ;
  input \CE_COUNTER.CE_CounterReg_reg[26] ;
  input Rd_Sl_CE;
  input Wr_Sl_CE;
  input \CE_COUNTER.CE_CounterReg_reg[31] ;
  input \GEN_ECC_ONOFF.ECC_OnOffReg_reg[31] ;
  input \CE_COUNTER.CE_CounterReg_reg[24] ;
  input [7:0]s_axi_ctrl_awaddr;
  input [7:0]s_axi_ctrl_araddr;
  input s_axi_ctrl_bready;
  input [7:0]s_axi_ctrl_wdata;

  wire CE;
  wire \CE_COUNTER.CE_CounterReg[24]_i_4_n_0 ;
  wire \CE_COUNTER.CE_CounterReg_reg[24] ;
  wire \CE_COUNTER.CE_CounterReg_reg[26] ;
  wire \CE_COUNTER.CE_CounterReg_reg[27] ;
  wire \CE_COUNTER.CE_CounterReg_reg[31] ;
  wire [7:0]D;
  wire [0:0]E;
  wire \ECC_STATUS_REGISTERS.ECC_StatusReg[30]_i_2_n_0 ;
  wire \ECC_STATUS_REGISTERS.ECC_StatusReg_reg[31] ;
  wire \GEN_ECC_ONOFF.ECC_OnOffReg_reg[31] ;
  wire [0:0]\GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q_reg ;
  wire [1:0]Q;
  wire Rd_Sl_CE;
  wire Rd_Sl_UE;
  wire \RegAddr[0]_i_1_n_0 ;
  wire \RegAddr[0]_i_2_n_0 ;
  wire \RegAddr[1]_i_1_n_0 ;
  wire \RegAddr[2]_i_1_n_0 ;
  wire \RegAddr[3]_i_1_n_0 ;
  wire \RegAddr[4]_i_1_n_0 ;
  wire \RegAddr[5]_i_1_n_0 ;
  wire \RegAddr[6]_i_1_n_0 ;
  wire \RegAddr[7]_i_1_n_0 ;
  wire [0:5]RegAddr_i;
  wire [1:0]\RegAddr_reg[6]_0 ;
  wire [0:31]RegRdData;
  wire \RegWrData_reg[30]_0 ;
  wire \RegWrData_reg[31]_0 ;
  wire \RegWrData_reg[31]_1 ;
  wire \RegWrData_reg_n_0_[24] ;
  wire \RegWrData_reg_n_0_[25] ;
  wire \RegWrData_reg_n_0_[26] ;
  wire \RegWrData_reg_n_0_[27] ;
  wire \RegWrData_reg_n_0_[28] ;
  wire \RegWrData_reg_n_0_[29] ;
  wire RegWr_i;
  wire RegWr_reg_0;
  wire [0:0]SR;
  wire \S_AXI_RDATA_DFF[0].S_AXI_RDATA_FDRE_i_2_n_0 ;
  wire \S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE_i_2_n_0 ;
  wire \S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE_i_3_n_0 ;
  wire [29:0]\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 ;
  wire \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ;
  wire \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ;
  wire \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_4_n_0 ;
  wire [7:0]\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0 ;
  wire S_AXI_RVALID_i_i_1_n_0;
  wire Wr_Sl_CE;
  wire Wr_Sl_UE;
  wire ongoing_read_i_1_n_0;
  wire ongoing_write_i_1_n_0;
  wire ongoing_write_reg_0;
  wire p_0_in1_in;
  wire [1:0]p_2_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [7:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_arready;
  wire s_axi_ctrl_arvalid;
  wire [7:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire [31:0]s_axi_ctrl_rdata;
  wire s_axi_ctrl_rready;
  wire s_axi_ctrl_rvalid;
  wire [7:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wvalid;

  LUT6 #(
    .INIT(64'hFFFFFFFFEE0EEEEE)) 
    \CE_COUNTER.CE_CounterReg[24]_i_1 
       (.I0(Rd_Sl_CE),
        .I1(Wr_Sl_CE),
        .I2(\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0 [7]),
        .I3(\CE_COUNTER.CE_CounterReg_reg[31] ),
        .I4(\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0 [6]),
        .I5(\CE_COUNTER.CE_CounterReg[24]_i_4_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q_reg ));
  LUT6 #(
    .INIT(64'h8000BFFFBFFF8000)) 
    \CE_COUNTER.CE_CounterReg[24]_i_2 
       (.I0(\RegWrData_reg_n_0_[24] ),
        .I1(\RegAddr_reg[6]_0 [0]),
        .I2(RegWr_reg_0),
        .I3(\RegAddr_reg[6]_0 [1]),
        .I4(\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0 [7]),
        .I5(\CE_COUNTER.CE_CounterReg_reg[24] ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \CE_COUNTER.CE_CounterReg[24]_i_4 
       (.I0(RegWr_reg_0),
        .I1(\RegAddr_reg[6]_0 [0]),
        .I2(\RegAddr_reg[6]_0 [1]),
        .O(\CE_COUNTER.CE_CounterReg[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFFF80008000BFFF)) 
    \CE_COUNTER.CE_CounterReg[25]_i_1 
       (.I0(\RegWrData_reg_n_0_[25] ),
        .I1(\RegAddr_reg[6]_0 [0]),
        .I2(RegWr_reg_0),
        .I3(\RegAddr_reg[6]_0 [1]),
        .I4(\CE_COUNTER.CE_CounterReg_reg[31] ),
        .I5(\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0 [6]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hB88B)) 
    \CE_COUNTER.CE_CounterReg[26]_i_1 
       (.I0(\RegWrData_reg_n_0_[26] ),
        .I1(\CE_COUNTER.CE_CounterReg[24]_i_4_n_0 ),
        .I2(\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0 [5]),
        .I3(\CE_COUNTER.CE_CounterReg_reg[26] ),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hB88B)) 
    \CE_COUNTER.CE_CounterReg[27]_i_1 
       (.I0(\RegWrData_reg_n_0_[27] ),
        .I1(\CE_COUNTER.CE_CounterReg[24]_i_4_n_0 ),
        .I2(\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0 [4]),
        .I3(\CE_COUNTER.CE_CounterReg_reg[27] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h8BB8B8B8B8B8B8B8)) 
    \CE_COUNTER.CE_CounterReg[28]_i_1 
       (.I0(\RegWrData_reg_n_0_[28] ),
        .I1(\CE_COUNTER.CE_CounterReg[24]_i_4_n_0 ),
        .I2(\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0 [3]),
        .I3(\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0 [1]),
        .I4(\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0 [0]),
        .I5(\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0 [2]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h8BB8B8B8)) 
    \CE_COUNTER.CE_CounterReg[29]_i_1 
       (.I0(\RegWrData_reg_n_0_[29] ),
        .I1(\CE_COUNTER.CE_CounterReg[24]_i_4_n_0 ),
        .I2(\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0 [2]),
        .I3(\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0 [0]),
        .I4(\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0 [1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \CE_COUNTER.CE_CounterReg[30]_i_1 
       (.I0(Q[1]),
        .I1(\CE_COUNTER.CE_CounterReg[24]_i_4_n_0 ),
        .I2(\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0 [0]),
        .I3(\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hD1)) 
    \CE_COUNTER.CE_CounterReg[31]_i_1 
       (.I0(\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0 [0]),
        .I1(\CE_COUNTER.CE_CounterReg[24]_i_4_n_0 ),
        .I2(Q[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \ECC_STATUS_REGISTERS.ECC_EnableIRQReg[30]_i_2 
       (.I0(RegWr_i),
        .I1(RegAddr_i[2]),
        .I2(RegAddr_i[1]),
        .I3(RegAddr_i[3]),
        .I4(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_4_n_0 ),
        .O(RegWr_reg_0));
  LUT6 #(
    .INIT(64'h7777333000000000)) 
    \ECC_STATUS_REGISTERS.ECC_StatusReg[30]_i_1 
       (.I0(Q[1]),
        .I1(\ECC_STATUS_REGISTERS.ECC_StatusReg[30]_i_2_n_0 ),
        .I2(Rd_Sl_CE),
        .I3(Wr_Sl_CE),
        .I4(p_0_in1_in),
        .I5(s_axi_aresetn),
        .O(\RegWrData_reg[30]_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \ECC_STATUS_REGISTERS.ECC_StatusReg[30]_i_2 
       (.I0(RegWr_reg_0),
        .I1(\RegAddr_reg[6]_0 [0]),
        .I2(\RegAddr_reg[6]_0 [1]),
        .O(\ECC_STATUS_REGISTERS.ECC_StatusReg[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7777333000000000)) 
    \ECC_STATUS_REGISTERS.ECC_StatusReg[31]_i_1 
       (.I0(Q[0]),
        .I1(\ECC_STATUS_REGISTERS.ECC_StatusReg[30]_i_2_n_0 ),
        .I2(Wr_Sl_UE),
        .I3(Rd_Sl_UE),
        .I4(\ECC_STATUS_REGISTERS.ECC_StatusReg_reg[31] ),
        .I5(s_axi_aresetn),
        .O(\RegWrData_reg[31]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \GEN_ECC_ONOFF.ECC_OnOffReg[31]_i_1 
       (.I0(Q[0]),
        .I1(RegWr_reg_0),
        .I2(\RegAddr_reg[6]_0 [1]),
        .I3(\RegAddr_reg[6]_0 [0]),
        .I4(\GEN_ECC_ONOFF.ECC_OnOffReg_reg[31] ),
        .O(\RegWrData_reg[31]_1 ));
  LUT5 #(
    .INIT(32'h000F0008)) 
    \RegAddr[0]_i_1 
       (.I0(s_axi_ctrl_awvalid),
        .I1(s_axi_ctrl_wvalid),
        .I2(ongoing_write_reg_0),
        .I3(CE),
        .I4(s_axi_ctrl_arvalid),
        .O(\RegAddr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \RegAddr[0]_i_2 
       (.I0(s_axi_ctrl_awaddr[7]),
        .I1(s_axi_ctrl_wvalid),
        .I2(s_axi_ctrl_awvalid),
        .I3(s_axi_ctrl_araddr[7]),
        .O(\RegAddr[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \RegAddr[1]_i_1 
       (.I0(s_axi_ctrl_awaddr[6]),
        .I1(s_axi_ctrl_wvalid),
        .I2(s_axi_ctrl_awvalid),
        .I3(s_axi_ctrl_araddr[6]),
        .O(\RegAddr[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \RegAddr[2]_i_1 
       (.I0(s_axi_ctrl_awaddr[5]),
        .I1(s_axi_ctrl_wvalid),
        .I2(s_axi_ctrl_awvalid),
        .I3(s_axi_ctrl_araddr[5]),
        .O(\RegAddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \RegAddr[3]_i_1 
       (.I0(s_axi_ctrl_awaddr[4]),
        .I1(s_axi_ctrl_wvalid),
        .I2(s_axi_ctrl_awvalid),
        .I3(s_axi_ctrl_araddr[4]),
        .O(\RegAddr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \RegAddr[4]_i_1 
       (.I0(s_axi_ctrl_awaddr[3]),
        .I1(s_axi_ctrl_wvalid),
        .I2(s_axi_ctrl_awvalid),
        .I3(s_axi_ctrl_araddr[3]),
        .O(\RegAddr[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \RegAddr[5]_i_1 
       (.I0(s_axi_ctrl_awaddr[2]),
        .I1(s_axi_ctrl_wvalid),
        .I2(s_axi_ctrl_awvalid),
        .I3(s_axi_ctrl_araddr[2]),
        .O(\RegAddr[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \RegAddr[6]_i_1 
       (.I0(s_axi_ctrl_awaddr[1]),
        .I1(s_axi_ctrl_wvalid),
        .I2(s_axi_ctrl_awvalid),
        .I3(s_axi_ctrl_araddr[1]),
        .O(\RegAddr[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \RegAddr[7]_i_1 
       (.I0(s_axi_ctrl_awaddr[0]),
        .I1(s_axi_ctrl_wvalid),
        .I2(s_axi_ctrl_awvalid),
        .I3(s_axi_ctrl_araddr[0]),
        .O(\RegAddr[7]_i_1_n_0 ));
  FDRE \RegAddr_reg[0] 
       (.C(s_axi_aclk),
        .CE(\RegAddr[0]_i_1_n_0 ),
        .D(\RegAddr[0]_i_2_n_0 ),
        .Q(RegAddr_i[0]),
        .R(SR));
  FDRE \RegAddr_reg[1] 
       (.C(s_axi_aclk),
        .CE(\RegAddr[0]_i_1_n_0 ),
        .D(\RegAddr[1]_i_1_n_0 ),
        .Q(RegAddr_i[1]),
        .R(SR));
  FDRE \RegAddr_reg[2] 
       (.C(s_axi_aclk),
        .CE(\RegAddr[0]_i_1_n_0 ),
        .D(\RegAddr[2]_i_1_n_0 ),
        .Q(RegAddr_i[2]),
        .R(SR));
  FDRE \RegAddr_reg[3] 
       (.C(s_axi_aclk),
        .CE(\RegAddr[0]_i_1_n_0 ),
        .D(\RegAddr[3]_i_1_n_0 ),
        .Q(RegAddr_i[3]),
        .R(SR));
  FDRE \RegAddr_reg[4] 
       (.C(s_axi_aclk),
        .CE(\RegAddr[0]_i_1_n_0 ),
        .D(\RegAddr[4]_i_1_n_0 ),
        .Q(RegAddr_i[4]),
        .R(SR));
  FDRE \RegAddr_reg[5] 
       (.C(s_axi_aclk),
        .CE(\RegAddr[0]_i_1_n_0 ),
        .D(\RegAddr[5]_i_1_n_0 ),
        .Q(RegAddr_i[5]),
        .R(SR));
  FDRE \RegAddr_reg[6] 
       (.C(s_axi_aclk),
        .CE(\RegAddr[0]_i_1_n_0 ),
        .D(\RegAddr[6]_i_1_n_0 ),
        .Q(\RegAddr_reg[6]_0 [1]),
        .R(SR));
  FDRE \RegAddr_reg[7] 
       (.C(s_axi_aclk),
        .CE(\RegAddr[0]_i_1_n_0 ),
        .D(\RegAddr[7]_i_1_n_0 ),
        .Q(\RegAddr_reg[6]_0 [0]),
        .R(SR));
  FDRE \RegWrData_reg[24] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\RegWrData_reg_n_0_[24] ),
        .R(SR));
  FDRE \RegWrData_reg[25] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\RegWrData_reg_n_0_[25] ),
        .R(SR));
  FDRE \RegWrData_reg[26] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\RegWrData_reg_n_0_[26] ),
        .R(SR));
  FDRE \RegWrData_reg[27] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\RegWrData_reg_n_0_[27] ),
        .R(SR));
  FDRE \RegWrData_reg[28] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\RegWrData_reg_n_0_[28] ),
        .R(SR));
  FDRE \RegWrData_reg[29] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\RegWrData_reg_n_0_[29] ),
        .R(SR));
  FDRE \RegWrData_reg[30] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_ctrl_wdata[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \RegWrData_reg[31] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_ctrl_wdata[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE RegWr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(E),
        .Q(RegWr_i),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[0].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[31]),
        .Q(s_axi_ctrl_rdata[0]),
        .R(SR));
  LUT6 #(
    .INIT(64'hF000F0FF44004400)) 
    \S_AXI_RDATA_DFF[0].S_AXI_RDATA_FDRE_i_1 
       (.I0(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I1(\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0 [0]),
        .I2(\ECC_STATUS_REGISTERS.ECC_StatusReg_reg[31] ),
        .I3(\S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I4(\S_AXI_RDATA_DFF[0].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I5(\S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .O(RegRdData[31]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \S_AXI_RDATA_DFF[0].S_AXI_RDATA_FDRE_i_2 
       (.I0(p_2_in[0]),
        .I1(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I2(\GEN_ECC_ONOFF.ECC_OnOffReg_reg[31] ),
        .O(\S_AXI_RDATA_DFF[0].S_AXI_RDATA_FDRE_i_2_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[10].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[21]),
        .Q(s_axi_ctrl_rdata[10]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \S_AXI_RDATA_DFF[10].S_AXI_RDATA_FDRE_i_1 
       (.I0(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I1(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 [8]),
        .O(RegRdData[21]));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[11].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[20]),
        .Q(s_axi_ctrl_rdata[11]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \S_AXI_RDATA_DFF[11].S_AXI_RDATA_FDRE_i_1 
       (.I0(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I1(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 [9]),
        .O(RegRdData[20]));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[12].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[19]),
        .Q(s_axi_ctrl_rdata[12]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \S_AXI_RDATA_DFF[12].S_AXI_RDATA_FDRE_i_1 
       (.I0(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I1(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 [10]),
        .O(RegRdData[19]));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[13].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[18]),
        .Q(s_axi_ctrl_rdata[13]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \S_AXI_RDATA_DFF[13].S_AXI_RDATA_FDRE_i_1 
       (.I0(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I1(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 [11]),
        .O(RegRdData[18]));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[14].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[17]),
        .Q(s_axi_ctrl_rdata[14]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \S_AXI_RDATA_DFF[14].S_AXI_RDATA_FDRE_i_1 
       (.I0(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I1(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 [12]),
        .O(RegRdData[17]));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[15].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[16]),
        .Q(s_axi_ctrl_rdata[15]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \S_AXI_RDATA_DFF[15].S_AXI_RDATA_FDRE_i_1 
       (.I0(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I1(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 [13]),
        .O(RegRdData[16]));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[16].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[15]),
        .Q(s_axi_ctrl_rdata[16]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \S_AXI_RDATA_DFF[16].S_AXI_RDATA_FDRE_i_1 
       (.I0(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I1(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 [14]),
        .O(RegRdData[15]));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[17].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[14]),
        .Q(s_axi_ctrl_rdata[17]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \S_AXI_RDATA_DFF[17].S_AXI_RDATA_FDRE_i_1 
       (.I0(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I1(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 [15]),
        .O(RegRdData[14]));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[18].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[13]),
        .Q(s_axi_ctrl_rdata[18]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \S_AXI_RDATA_DFF[18].S_AXI_RDATA_FDRE_i_1 
       (.I0(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I1(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 [16]),
        .O(RegRdData[13]));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[19].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[12]),
        .Q(s_axi_ctrl_rdata[19]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \S_AXI_RDATA_DFF[19].S_AXI_RDATA_FDRE_i_1 
       (.I0(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I1(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 [17]),
        .O(RegRdData[12]));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[30]),
        .Q(s_axi_ctrl_rdata[1]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAA0F0C00AA000C00)) 
    \S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE_i_1 
       (.I0(p_0_in1_in),
        .I1(p_2_in[1]),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I3(\S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I4(\S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I5(\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0 [1]),
        .O(RegRdData[30]));
  LUT6 #(
    .INIT(64'h0000000100010001)) 
    \S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE_i_2 
       (.I0(RegAddr_i[2]),
        .I1(RegAddr_i[1]),
        .I2(RegAddr_i[3]),
        .I3(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_4_n_0 ),
        .I4(\RegAddr_reg[6]_0 [0]),
        .I5(\RegAddr_reg[6]_0 [1]),
        .O(\S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000081)) 
    \S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE_i_3 
       (.I0(RegAddr_i[2]),
        .I1(RegAddr_i[1]),
        .I2(RegAddr_i[3]),
        .I3(\RegAddr_reg[6]_0 [1]),
        .I4(\RegAddr_reg[6]_0 [0]),
        .I5(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_4_n_0 ),
        .O(\S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE_i_3_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[20].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[11]),
        .Q(s_axi_ctrl_rdata[20]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \S_AXI_RDATA_DFF[20].S_AXI_RDATA_FDRE_i_1 
       (.I0(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I1(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 [18]),
        .O(RegRdData[11]));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[21].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[10]),
        .Q(s_axi_ctrl_rdata[21]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \S_AXI_RDATA_DFF[21].S_AXI_RDATA_FDRE_i_1 
       (.I0(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I1(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 [19]),
        .O(RegRdData[10]));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[22].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[9]),
        .Q(s_axi_ctrl_rdata[22]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \S_AXI_RDATA_DFF[22].S_AXI_RDATA_FDRE_i_1 
       (.I0(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I1(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 [20]),
        .O(RegRdData[9]));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[23].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[8]),
        .Q(s_axi_ctrl_rdata[23]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \S_AXI_RDATA_DFF[23].S_AXI_RDATA_FDRE_i_1 
       (.I0(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I1(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 [21]),
        .O(RegRdData[8]));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[24].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[7]),
        .Q(s_axi_ctrl_rdata[24]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \S_AXI_RDATA_DFF[24].S_AXI_RDATA_FDRE_i_1 
       (.I0(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I1(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 [22]),
        .O(RegRdData[7]));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[25].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[6]),
        .Q(s_axi_ctrl_rdata[25]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \S_AXI_RDATA_DFF[25].S_AXI_RDATA_FDRE_i_1 
       (.I0(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I1(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 [23]),
        .O(RegRdData[6]));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[26].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[5]),
        .Q(s_axi_ctrl_rdata[26]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \S_AXI_RDATA_DFF[26].S_AXI_RDATA_FDRE_i_1 
       (.I0(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I1(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 [24]),
        .O(RegRdData[5]));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[27].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[4]),
        .Q(s_axi_ctrl_rdata[27]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \S_AXI_RDATA_DFF[27].S_AXI_RDATA_FDRE_i_1 
       (.I0(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I1(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 [25]),
        .O(RegRdData[4]));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[28].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[3]),
        .Q(s_axi_ctrl_rdata[28]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \S_AXI_RDATA_DFF[28].S_AXI_RDATA_FDRE_i_1 
       (.I0(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I1(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 [26]),
        .O(RegRdData[3]));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[29].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[2]),
        .Q(s_axi_ctrl_rdata[29]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \S_AXI_RDATA_DFF[29].S_AXI_RDATA_FDRE_i_1 
       (.I0(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I1(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 [27]),
        .O(RegRdData[2]));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[2].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[29]),
        .Q(s_axi_ctrl_rdata[2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    \S_AXI_RDATA_DFF[2].S_AXI_RDATA_FDRE_i_1 
       (.I0(\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0 [2]),
        .I1(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I3(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 [0]),
        .O(RegRdData[29]));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[30].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[1]),
        .Q(s_axi_ctrl_rdata[30]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \S_AXI_RDATA_DFF[30].S_AXI_RDATA_FDRE_i_1 
       (.I0(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I1(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 [28]),
        .O(RegRdData[1]));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[0]),
        .Q(s_axi_ctrl_rdata[31]),
        .R(SR));
  LUT3 #(
    .INIT(8'h80)) 
    \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_1 
       (.I0(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I1(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 [29]),
        .O(RegRdData[0]));
  LUT6 #(
    .INIT(64'h0100000000000008)) 
    \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2 
       (.I0(\RegAddr_reg[6]_0 [1]),
        .I1(\RegAddr_reg[6]_0 [0]),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_4_n_0 ),
        .I3(RegAddr_i[3]),
        .I4(RegAddr_i[1]),
        .I5(RegAddr_i[2]),
        .O(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000181)) 
    \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3 
       (.I0(RegAddr_i[2]),
        .I1(RegAddr_i[1]),
        .I2(RegAddr_i[3]),
        .I3(\RegAddr_reg[6]_0 [1]),
        .I4(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_4_n_0 ),
        .I5(\RegAddr_reg[6]_0 [0]),
        .O(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_4 
       (.I0(RegAddr_i[4]),
        .I1(RegAddr_i[0]),
        .I2(RegAddr_i[5]),
        .O(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_4_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[3].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[28]),
        .Q(s_axi_ctrl_rdata[3]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    \S_AXI_RDATA_DFF[3].S_AXI_RDATA_FDRE_i_1 
       (.I0(\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0 [3]),
        .I1(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I3(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 [1]),
        .O(RegRdData[28]));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[4].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[27]),
        .Q(s_axi_ctrl_rdata[4]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    \S_AXI_RDATA_DFF[4].S_AXI_RDATA_FDRE_i_1 
       (.I0(\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0 [4]),
        .I1(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I3(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 [2]),
        .O(RegRdData[27]));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[5].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[26]),
        .Q(s_axi_ctrl_rdata[5]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    \S_AXI_RDATA_DFF[5].S_AXI_RDATA_FDRE_i_1 
       (.I0(\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0 [5]),
        .I1(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I3(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 [3]),
        .O(RegRdData[26]));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[6].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[25]),
        .Q(s_axi_ctrl_rdata[6]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    \S_AXI_RDATA_DFF[6].S_AXI_RDATA_FDRE_i_1 
       (.I0(\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0 [6]),
        .I1(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I3(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 [4]),
        .O(RegRdData[25]));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[24]),
        .Q(s_axi_ctrl_rdata[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_i_1 
       (.I0(\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0 [7]),
        .I1(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I3(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 [5]),
        .O(RegRdData[24]));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[23]),
        .Q(s_axi_ctrl_rdata[8]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE_i_1 
       (.I0(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I1(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 [6]),
        .O(RegRdData[23]));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[9].S_AXI_RDATA_FDRE 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(RegRdData[22]),
        .Q(s_axi_ctrl_rdata[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \S_AXI_RDATA_DFF[9].S_AXI_RDATA_FDRE_i_1 
       (.I0(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_2_n_0 ),
        .I1(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_i_3_n_0 ),
        .I2(\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 [7]),
        .O(RegRdData[22]));
  LUT5 #(
    .INIT(32'h000028A8)) 
    S_AXI_RVALID_i_i_1
       (.I0(s_axi_aresetn),
        .I1(s_axi_ctrl_rvalid),
        .I2(CE),
        .I3(s_axi_ctrl_rready),
        .I4(s_axi_ctrl_arready),
        .O(S_AXI_RVALID_i_i_1_n_0));
  FDRE S_AXI_RVALID_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(S_AXI_RVALID_i_i_1_n_0),
        .Q(s_axi_ctrl_rvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7777000077770F00)) 
    ongoing_read_i_1
       (.I0(s_axi_ctrl_rvalid),
        .I1(s_axi_ctrl_rready),
        .I2(E),
        .I3(s_axi_ctrl_arvalid),
        .I4(CE),
        .I5(ongoing_write_reg_0),
        .O(ongoing_read_i_1_n_0));
  FDRE ongoing_read_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ongoing_read_i_1_n_0),
        .Q(CE),
        .R(SR));
  LUT5 #(
    .INIT(32'h550055C0)) 
    ongoing_write_i_1
       (.I0(s_axi_ctrl_bready),
        .I1(s_axi_ctrl_awvalid),
        .I2(s_axi_ctrl_wvalid),
        .I3(ongoing_write_reg_0),
        .I4(CE),
        .O(ongoing_write_i_1_n_0));
  FDRE ongoing_write_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ongoing_write_i_1_n_0),
        .Q(ongoing_write_reg_0),
        .R(SR));
  LUT5 #(
    .INIT(32'h0000002A)) 
    s_axi_ctrl_arready_INST_0
       (.I0(s_axi_ctrl_arvalid),
        .I1(s_axi_ctrl_awvalid),
        .I2(s_axi_ctrl_wvalid),
        .I3(ongoing_write_reg_0),
        .I4(CE),
        .O(s_axi_ctrl_arready));
  LUT4 #(
    .INIT(16'h1000)) 
    s_axi_ctrl_wready_INST_0
       (.I0(CE),
        .I1(ongoing_write_reg_0),
        .I2(s_axi_ctrl_wvalid),
        .I3(s_axi_ctrl_awvalid),
        .O(E));
endmodule

(* CHECK_LICENSE_TYPE = "bd_bram_ecc_axi_bram_ctrl_2_0,axi_bram_ctrl,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_bram_ctrl,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module bd_bram_ecc_axi_bram_ctrl_1_0
   (s_axi_aclk,
    s_axi_aresetn,
    ecc_interrupt,
    ecc_ue,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wdata,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLKIF, ASSOCIATED_BUSIF S_AXI:S_AXI_CTRL, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_bram_ecc_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 INTERRUPTIF INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME INTERRUPTIF, SENSITIVITY LEVEL_HIGH, PORTWIDTH 1" *) output ecc_interrupt;
  output ecc_ue;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 13, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_bram_ecc_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [12:0]s_axi_awid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input s_axi_awlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BID" *) output [12:0]s_axi_bid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARID" *) input [12:0]s_axi_arid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input s_axi_arlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RID" *) output [12:0]s_axi_rid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_CTRL, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_bram_ecc_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_ctrl_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWREADY" *) output s_axi_ctrl_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWADDR" *) input [31:0]s_axi_ctrl_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WDATA" *) input [31:0]s_axi_ctrl_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WVALID" *) input s_axi_ctrl_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WREADY" *) output s_axi_ctrl_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BRESP" *) output [1:0]s_axi_ctrl_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BVALID" *) output s_axi_ctrl_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BREADY" *) input s_axi_ctrl_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARADDR" *) input [31:0]s_axi_ctrl_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARVALID" *) input s_axi_ctrl_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARREADY" *) output s_axi_ctrl_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RDATA" *) output [31:0]s_axi_ctrl_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RRESP" *) output [1:0]s_axi_ctrl_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RVALID" *) output s_axi_ctrl_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RREADY" *) input s_axi_ctrl_rready;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MASTER_TYPE BRAM_CTRL, MEM_SIZE 16384, MEM_WIDTH 40, MEM_ECC ECCH32-7, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) output bram_rst_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) output bram_clk_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) output bram_en_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) output [4:0]bram_we_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) output [31:0]bram_addr_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) output [39:0]bram_wrdata_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) input [39:0]bram_rddata_a;

  wire \<const0> ;
  wire [31:2]\^bram_addr_a ;
  wire bram_clk_a;
  wire bram_en_a;
  wire [39:0]bram_rddata_a;
  wire bram_rst_a;
  wire [4:0]bram_we_a;
  wire [39:0]\^bram_wrdata_a ;
  wire ecc_interrupt;
  wire ecc_ue;
  wire s_axi_aclk;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [12:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [12:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire [12:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [31:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_arready;
  wire s_axi_ctrl_arvalid;
  wire [31:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awready;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire s_axi_ctrl_bvalid;
  wire [31:0]s_axi_ctrl_rdata;
  wire s_axi_ctrl_rready;
  wire s_axi_ctrl_rvalid;
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wready;
  wire s_axi_ctrl_wvalid;
  wire [31:0]s_axi_rdata;
  wire [12:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_U0_bram_clk_b_UNCONNECTED;
  wire NLW_U0_bram_en_b_UNCONNECTED;
  wire NLW_U0_bram_rst_b_UNCONNECTED;
  wire [1:0]NLW_U0_bram_addr_a_UNCONNECTED;
  wire [31:0]NLW_U0_bram_addr_b_UNCONNECTED;
  wire [4:0]NLW_U0_bram_we_b_UNCONNECTED;
  wire [7:7]NLW_U0_bram_wrdata_a_UNCONNECTED;
  wire [39:0]NLW_U0_bram_wrdata_b_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_bresp_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  assign bram_addr_a[31:2] = \^bram_addr_a [31:2];
  assign bram_addr_a[1] = \<const0> ;
  assign bram_addr_a[0] = \<const0> ;
  assign bram_wrdata_a[39:8] = \^bram_wrdata_a [39:8];
  assign bram_wrdata_a[7] = \<const0> ;
  assign bram_wrdata_a[6:0] = \^bram_wrdata_a [6:0];
  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_ctrl_bresp[1] = \<const0> ;
  assign s_axi_ctrl_bresp[0] = \<const0> ;
  assign s_axi_ctrl_rresp[1] = \<const0> ;
  assign s_axi_ctrl_rresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_BRAM_ADDR_WIDTH = "12" *) 
  (* C_BRAM_INST_MODE = "EXTERNAL" *) 
  (* C_ECC = "1" *) 
  (* C_ECC_ONOFF_RESET_VALUE = "1" *) 
  (* C_ECC_TYPE = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FAULT_INJECT = "0" *) 
  (* C_MEMORY_DEPTH = "4096" *) 
  (* C_RD_CMD_OPTIMIZATION = "0" *) 
  (* C_READ_LATENCY = "1" *) 
  (* C_SINGLE_PORT_BRAM = "1" *) 
  (* C_S_AXI_ADDR_WIDTH = "32" *) 
  (* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) 
  (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_ID_WIDTH = "13" *) 
  (* C_S_AXI_PROTOCOL = "AXI4" *) 
  (* C_S_AXI_SUPPORTS_NARROW_BURST = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  bd_bram_ecc_axi_bram_ctrl_1_0_axi_bram_ctrl U0
       (.bram_addr_a({\^bram_addr_a ,NLW_U0_bram_addr_a_UNCONNECTED[1:0]}),
        .bram_addr_b(NLW_U0_bram_addr_b_UNCONNECTED[31:0]),
        .bram_clk_a(bram_clk_a),
        .bram_clk_b(NLW_U0_bram_clk_b_UNCONNECTED),
        .bram_en_a(bram_en_a),
        .bram_en_b(NLW_U0_bram_en_b_UNCONNECTED),
        .bram_rddata_a({bram_rddata_a[39:8],1'b0,bram_rddata_a[6:0]}),
        .bram_rddata_b({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bram_rst_a(bram_rst_a),
        .bram_rst_b(NLW_U0_bram_rst_b_UNCONNECTED),
        .bram_we_a(bram_we_a),
        .bram_we_b(NLW_U0_bram_we_b_UNCONNECTED[4:0]),
        .bram_wrdata_a(\^bram_wrdata_a ),
        .bram_wrdata_b(NLW_U0_bram_wrdata_b_UNCONNECTED[39:0]),
        .ecc_interrupt(ecc_interrupt),
        .ecc_ue(ecc_ue),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({s_axi_araddr[31:2],1'b0,1'b0}),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({s_axi_awaddr[31:2],1'b0,1'b0}),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,s_axi_awlen[3:0]}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp({\^s_axi_bresp ,NLW_U0_s_axi_bresp_UNCONNECTED[0]}),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_ctrl_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_ctrl_araddr[9:2],1'b0,1'b0}),
        .s_axi_ctrl_arready(s_axi_ctrl_arready),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_ctrl_awaddr[9:2],1'b0,1'b0}),
        .s_axi_ctrl_awready(s_axi_ctrl_awready),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_bresp(NLW_U0_s_axi_ctrl_bresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_bvalid(s_axi_ctrl_bvalid),
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_rready(s_axi_ctrl_rready),
        .s_axi_ctrl_rresp(NLW_U0_s_axi_ctrl_rresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_rvalid(s_axi_ctrl_rvalid),
        .s_axi_ctrl_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_ctrl_wdata[7:0]}),
        .s_axi_ctrl_wready(s_axi_ctrl_wready),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp({\^s_axi_rresp ,NLW_U0_s_axi_rresp_UNCONNECTED[0]}),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module bd_bram_ecc_axi_bram_ctrl_1_0_checkbit_handler
   (bram_wrdata_a,
    Q);
  output [6:0]bram_wrdata_a;
  input [31:0]Q;

  wire [31:0]Q;
  wire [6:0]bram_wrdata_a;

  bd_bram_ecc_axi_bram_ctrl_1_0_Parity_0 \Encode_Bits.Parity_chk5_1 
       (.Q(Q[5:0]),
        .bram_wrdata_a(bram_wrdata_a[1]));
  bd_bram_ecc_axi_bram_ctrl_1_0_XOR18 \Encode_Bits.XOR18_I0 
       (.Q({Q[31:30],Q[28:27],Q[25],Q[23],Q[21:20],Q[18],Q[16],Q[14],Q[12],Q[10],Q[8],Q[6:5],Q[3],Q[1]}),
        .bram_wrdata_a(bram_wrdata_a[6]));
  bd_bram_ecc_axi_bram_ctrl_1_0_XOR18_1 \Encode_Bits.XOR18_I1 
       (.Q({Q[31],Q[29:28],Q[26:25],Q[22:21],Q[19:18],Q[15:14],Q[11:10],Q[7:6],Q[4:3],Q[0]}),
        .bram_wrdata_a(bram_wrdata_a[5]));
  bd_bram_ecc_axi_bram_ctrl_1_0_XOR18_2 \Encode_Bits.XOR18_I2 
       (.Q({Q[30:28],Q[24:21],Q[17:14],Q[9:6],Q[2:0]}),
        .bram_wrdata_a(bram_wrdata_a[4]));
  bd_bram_ecc_axi_bram_ctrl_1_0_XOR18_3 \Encode_Bits.XOR18_I3 
       (.Q({Q[27:21],Q[13:6]}),
        .bram_wrdata_a(bram_wrdata_a[3]));
  bd_bram_ecc_axi_bram_ctrl_1_0_XOR18_4 \Encode_Bits.XOR18_I4 
       (.Q(Q[20:6]),
        .bram_wrdata_a(bram_wrdata_a[2]));
  bd_bram_ecc_axi_bram_ctrl_1_0_XOR18_5 \Encode_Bits.XOR18_I6 
       (.Q({Q[31:29],Q[27:26],Q[24],Q[21:19],Q[17],Q[14:13],Q[10],Q[8:7],Q[5:4],Q[2]}),
        .bram_wrdata_a(bram_wrdata_a[0]));
endmodule

(* ORIG_REF_NAME = "checkbit_handler" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_checkbit_handler__parameterized0
   (D,
    \Using_LUT6.Single_LUT6.XOR6_LUT ,
    UE_Q,
    \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_reg_reg[3] ,
    \Using_LUT6.Use_MUXF8.MUXF8_LUT ,
    bram_rddata_a,
    \GEN_ECC.syndrome_reg_i ,
    I0,
    I1,
    Q);
  output [4:0]D;
  output [5:0]\Using_LUT6.Single_LUT6.XOR6_LUT ;
  output UE_Q;
  output \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_reg_reg[3] ;
  output [1:0]\Using_LUT6.Use_MUXF8.MUXF8_LUT ;
  input [38:0]bram_rddata_a;
  input [2:0]\GEN_ECC.syndrome_reg_i ;
  input I0;
  input I1;
  input [0:0]Q;

  wire [4:0]D;
  wire \Decode_Bits.Parity_chk0_2_n_0 ;
  wire \Decode_Bits.Parity_chk0_3_n_0 ;
  wire [0:2]\Decode_Bits.chk1_1 ;
  wire [0:2]\Decode_Bits.chk2_1 ;
  wire [0:1]\Decode_Bits.chk3_1 ;
  wire \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_reg_reg[3] ;
  wire \GEN_ECC.Sl_UE_i ;
  wire [2:0]\GEN_ECC.syndrome_reg_i ;
  wire I0;
  wire I1;
  wire [0:0]Q;
  wire Res;
  wire UE_Q;
  wire [5:0]\Using_LUT6.Single_LUT6.XOR6_LUT ;
  wire [1:0]\Using_LUT6.Use_MUXF8.MUXF8_LUT ;
  wire [38:0]bram_rddata_a;

  bd_bram_ecc_axi_bram_ctrl_1_0_Parity_6 \Decode_Bits.Parity_chk0_1 
       (.Res(Res),
        .bram_rddata_a({bram_rddata_a[38:37],bram_rddata_a[35:34],bram_rddata_a[32],bram_rddata_a[30]}));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity_7 \Decode_Bits.Parity_chk0_2 
       (.\Using_LUT6.Single_LUT6.XOR6_LUT_0 (\Decode_Bits.Parity_chk0_2_n_0 ),
        .bram_rddata_a({bram_rddata_a[28:27],bram_rddata_a[25],bram_rddata_a[23],bram_rddata_a[21],bram_rddata_a[19]}));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity_8 \Decode_Bits.Parity_chk0_3 
       (.\Using_LUT6.Single_LUT6.XOR6_LUT_0 (\Decode_Bits.Parity_chk0_3_n_0 ),
        .bram_rddata_a({bram_rddata_a[17],bram_rddata_a[15],bram_rddata_a[13:12],bram_rddata_a[10],bram_rddata_a[8]}));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized2 \Decode_Bits.Parity_chk0_4 
       (.D(D[4]),
        .Res(Res),
        .\Using_LUT6.Single_LUT6.XOR6_LUT_0 (\Decode_Bits.Parity_chk0_3_n_0 ),
        .\Using_LUT6.Single_LUT6.XOR6_LUT_1 (\Decode_Bits.Parity_chk0_2_n_0 ),
        .bram_rddata_a(bram_rddata_a[6]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity_9 \Decode_Bits.Parity_chk1_1 
       (.\Decode_Bits.chk1_1 (\Decode_Bits.chk1_1 [0]),
        .bram_rddata_a({bram_rddata_a[38],bram_rddata_a[36:35],bram_rddata_a[33:32],bram_rddata_a[29]}));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity_10 \Decode_Bits.Parity_chk1_2 
       (.\Decode_Bits.chk1_1 (\Decode_Bits.chk1_1 [1]),
        .bram_rddata_a({bram_rddata_a[28],bram_rddata_a[26:25],bram_rddata_a[22:21],bram_rddata_a[18]}));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity_11 \Decode_Bits.Parity_chk1_3 
       (.\Decode_Bits.chk1_1 (\Decode_Bits.chk1_1 [2]),
        .bram_rddata_a({bram_rddata_a[17],bram_rddata_a[14:13],bram_rddata_a[11:10],bram_rddata_a[7]}));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_12 \Decode_Bits.Parity_chk1_4 
       (.D(D[3]),
        .\Decode_Bits.chk1_1 ({\Decode_Bits.chk1_1 [0],\Decode_Bits.chk1_1 [1],\Decode_Bits.chk1_1 [2]}),
        .bram_rddata_a(bram_rddata_a[5]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity_13 \Decode_Bits.Parity_chk2_1 
       (.\Decode_Bits.chk2_1 (\Decode_Bits.chk2_1 [0]),
        .bram_rddata_a({bram_rddata_a[37:35],bram_rddata_a[31:29]}));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity_14 \Decode_Bits.Parity_chk2_2 
       (.\Decode_Bits.chk2_1 (\Decode_Bits.chk2_1 [1]),
        .bram_rddata_a({bram_rddata_a[28],bram_rddata_a[24:21],bram_rddata_a[16]}));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity_15 \Decode_Bits.Parity_chk2_3 
       (.\Decode_Bits.chk2_1 (\Decode_Bits.chk2_1 [2]),
        .bram_rddata_a({bram_rddata_a[15:13],bram_rddata_a[9:7]}));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_16 \Decode_Bits.Parity_chk2_4 
       (.D(D[2]),
        .\Decode_Bits.chk2_1 ({\Decode_Bits.chk2_1 [0],\Decode_Bits.chk2_1 [1],\Decode_Bits.chk2_1 [2]}),
        .bram_rddata_a(bram_rddata_a[4]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized4 \Decode_Bits.Parity_chk3_1 
       (.Res(\Decode_Bits.chk3_1 [0]),
        .bram_rddata_a({bram_rddata_a[34:28],bram_rddata_a[20]}));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_17 \Decode_Bits.Parity_chk3_2 
       (.Res(\Decode_Bits.chk3_1 [1]),
        .bram_rddata_a({bram_rddata_a[19:13],bram_rddata_a[3]}));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized6_18 \Decode_Bits.Parity_chk3_3 
       (.D(D[1]),
        .\Decode_Bits.chk3_1 (\Decode_Bits.chk3_1 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_19 \Decode_Bits.Parity_chk4_1 
       (.\Using_LUT6.Use_MUXF8.MUXF8_LUT_0 (\Using_LUT6.Use_MUXF8.MUXF8_LUT [1]),
        .bram_rddata_a(bram_rddata_a[27:20]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_20 \Decode_Bits.Parity_chk4_2 
       (.\Using_LUT6.Use_MUXF8.MUXF8_LUT_0 (\Using_LUT6.Use_MUXF8.MUXF8_LUT [0]),
        .bram_rddata_a({bram_rddata_a[19:13],bram_rddata_a[2]}));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized8 \Decode_Bits.Parity_chk5_1 
       (.D(D[0]),
        .bram_rddata_a({bram_rddata_a[12:7],bram_rddata_a[1]}));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity_21 \Decode_Bits.Parity_chk6_1 
       (.\Using_LUT6.Single_LUT6.XOR6_LUT_0 (\Using_LUT6.Single_LUT6.XOR6_LUT [5]),
        .bram_rddata_a(bram_rddata_a[38:33]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity_22 \Decode_Bits.Parity_chk6_2 
       (.\Using_LUT6.Single_LUT6.XOR6_LUT_0 (\Using_LUT6.Single_LUT6.XOR6_LUT [4]),
        .bram_rddata_a(bram_rddata_a[32:27]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity_23 \Decode_Bits.Parity_chk6_3 
       (.\Using_LUT6.Single_LUT6.XOR6_LUT_0 (\Using_LUT6.Single_LUT6.XOR6_LUT [3]),
        .bram_rddata_a(bram_rddata_a[26:21]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_24 \Decode_Bits.Parity_chk6_4 
       (.\Using_LUT6.Use_MUXF7.MUXF7_LUT_0 (\Using_LUT6.Single_LUT6.XOR6_LUT [2]),
        .bram_rddata_a(bram_rddata_a[20:14]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_25 \Decode_Bits.Parity_chk6_5 
       (.\Using_LUT6.Use_MUXF7.MUXF7_LUT_0 (\Using_LUT6.Single_LUT6.XOR6_LUT [1]),
        .bram_rddata_a(bram_rddata_a[13:7]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_26 \Decode_Bits.Parity_chk6_6 
       (.\Using_LUT6.Use_MUXF7.MUXF7_LUT_0 (\Using_LUT6.Single_LUT6.XOR6_LUT [0]),
        .bram_rddata_a(bram_rddata_a[6:0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 \Decode_Bits.Use_LUT6.UE_MUXF7 
       (.I0(I0),
        .I1(I1),
        .O(\GEN_ECC.Sl_UE_i ),
        .S(\GEN_ECC.syndrome_reg_i [0]));
  LUT2 #(
    .INIT(4'hE)) 
    \Decode_Bits.Use_LUT6.UE_MUXF7_i_3__0 
       (.I0(\GEN_ECC.syndrome_reg_i [1]),
        .I1(\GEN_ECC.syndrome_reg_i [2]),
        .O(\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_reg_reg[3] ));
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_ECC.UE_Q_i_1 
       (.I0(Q),
        .I1(\GEN_ECC.Sl_UE_i ),
        .O(UE_Q));
endmodule

(* ORIG_REF_NAME = "checkbit_handler" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_checkbit_handler__parameterized0_27
   (D,
    \Using_LUT6.Single_LUT6.XOR6_LUT ,
    \Decode_Bits.Use_LUT6.UE_MUXF7_0 ,
    UE_Q,
    \Using_LUT6.Use_MUXF8.MUXF8_LUT ,
    bram_rddata_a,
    syndrome_reg_i,
    I0,
    I1,
    Enable_ECC,
    \GEN_NO_RD_CMD_OPT.GEN_ECC.UE_Q_reg ,
    s_axi_rready);
  output [4:0]D;
  output [5:0]\Using_LUT6.Single_LUT6.XOR6_LUT ;
  output \Decode_Bits.Use_LUT6.UE_MUXF7_0 ;
  output UE_Q;
  output [1:0]\Using_LUT6.Use_MUXF8.MUXF8_LUT ;
  input [38:0]bram_rddata_a;
  input [0:0]syndrome_reg_i;
  input I0;
  input I1;
  input Enable_ECC;
  input \GEN_NO_RD_CMD_OPT.GEN_ECC.UE_Q_reg ;
  input s_axi_rready;

  wire [4:0]D;
  wire \Decode_Bits.Parity_chk0_2_n_0 ;
  wire \Decode_Bits.Parity_chk0_3_n_0 ;
  wire \Decode_Bits.Use_LUT6.UE_MUXF7_0 ;
  wire [0:2]\Decode_Bits.chk1_1 ;
  wire [0:2]\Decode_Bits.chk2_1 ;
  wire [0:1]\Decode_Bits.chk3_1 ;
  wire Enable_ECC;
  wire \GEN_NO_RD_CMD_OPT.GEN_ECC.UE_Q_reg ;
  wire I0;
  wire I1;
  wire Res;
  wire UE_Q;
  wire [5:0]\Using_LUT6.Single_LUT6.XOR6_LUT ;
  wire [1:0]\Using_LUT6.Use_MUXF8.MUXF8_LUT ;
  wire [38:0]bram_rddata_a;
  wire s_axi_rready;
  wire [0:0]syndrome_reg_i;

  bd_bram_ecc_axi_bram_ctrl_1_0_Parity_63 \Decode_Bits.Parity_chk0_1 
       (.Res(Res),
        .bram_rddata_a({bram_rddata_a[38:37],bram_rddata_a[35:34],bram_rddata_a[32],bram_rddata_a[30]}));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity_64 \Decode_Bits.Parity_chk0_2 
       (.\Using_LUT6.Single_LUT6.XOR6_LUT_0 (\Decode_Bits.Parity_chk0_2_n_0 ),
        .bram_rddata_a({bram_rddata_a[28:27],bram_rddata_a[25],bram_rddata_a[23],bram_rddata_a[21],bram_rddata_a[19]}));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity_65 \Decode_Bits.Parity_chk0_3 
       (.\Using_LUT6.Single_LUT6.XOR6_LUT_0 (\Decode_Bits.Parity_chk0_3_n_0 ),
        .bram_rddata_a({bram_rddata_a[17],bram_rddata_a[15],bram_rddata_a[13:12],bram_rddata_a[10],bram_rddata_a[8]}));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_66 \Decode_Bits.Parity_chk0_4 
       (.D(D[4]),
        .Res(Res),
        .\Using_LUT6.Single_LUT6.XOR6_LUT_0 (\Decode_Bits.Parity_chk0_3_n_0 ),
        .\Using_LUT6.Single_LUT6.XOR6_LUT_1 (\Decode_Bits.Parity_chk0_2_n_0 ),
        .bram_rddata_a(bram_rddata_a[6]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity_67 \Decode_Bits.Parity_chk1_1 
       (.\Decode_Bits.chk1_1 (\Decode_Bits.chk1_1 [0]),
        .bram_rddata_a({bram_rddata_a[38],bram_rddata_a[36:35],bram_rddata_a[33:32],bram_rddata_a[29]}));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity_68 \Decode_Bits.Parity_chk1_2 
       (.\Decode_Bits.chk1_1 (\Decode_Bits.chk1_1 [1]),
        .bram_rddata_a({bram_rddata_a[28],bram_rddata_a[26:25],bram_rddata_a[22:21],bram_rddata_a[18]}));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity_69 \Decode_Bits.Parity_chk1_3 
       (.\Decode_Bits.chk1_1 (\Decode_Bits.chk1_1 [2]),
        .bram_rddata_a({bram_rddata_a[17],bram_rddata_a[14:13],bram_rddata_a[11:10],bram_rddata_a[7]}));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_70 \Decode_Bits.Parity_chk1_4 
       (.D(D[3]),
        .\Decode_Bits.chk1_1 ({\Decode_Bits.chk1_1 [0],\Decode_Bits.chk1_1 [1],\Decode_Bits.chk1_1 [2]}),
        .bram_rddata_a(bram_rddata_a[5]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity_71 \Decode_Bits.Parity_chk2_1 
       (.\Decode_Bits.chk2_1 (\Decode_Bits.chk2_1 [0]),
        .bram_rddata_a({bram_rddata_a[37:35],bram_rddata_a[31:29]}));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity_72 \Decode_Bits.Parity_chk2_2 
       (.\Decode_Bits.chk2_1 (\Decode_Bits.chk2_1 [1]),
        .bram_rddata_a({bram_rddata_a[28],bram_rddata_a[24:21],bram_rddata_a[16]}));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity_73 \Decode_Bits.Parity_chk2_3 
       (.\Decode_Bits.chk2_1 (\Decode_Bits.chk2_1 [2]),
        .bram_rddata_a({bram_rddata_a[15:13],bram_rddata_a[9:7]}));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized2_74 \Decode_Bits.Parity_chk2_4 
       (.D(D[2]),
        .\Decode_Bits.chk2_1 ({\Decode_Bits.chk2_1 [0],\Decode_Bits.chk2_1 [1],\Decode_Bits.chk2_1 [2]}),
        .bram_rddata_a(bram_rddata_a[4]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_75 \Decode_Bits.Parity_chk3_1 
       (.Res(\Decode_Bits.chk3_1 [0]),
        .bram_rddata_a({bram_rddata_a[34:28],bram_rddata_a[20]}));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_76 \Decode_Bits.Parity_chk3_2 
       (.Res(\Decode_Bits.chk3_1 [1]),
        .bram_rddata_a({bram_rddata_a[19:13],bram_rddata_a[3]}));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized6_77 \Decode_Bits.Parity_chk3_3 
       (.D(D[1]),
        .\Decode_Bits.chk3_1 (\Decode_Bits.chk3_1 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_78 \Decode_Bits.Parity_chk4_1 
       (.\Using_LUT6.Use_MUXF8.MUXF8_LUT_0 (\Using_LUT6.Use_MUXF8.MUXF8_LUT [1]),
        .bram_rddata_a(bram_rddata_a[27:20]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized4_79 \Decode_Bits.Parity_chk4_2 
       (.\Using_LUT6.Use_MUXF8.MUXF8_LUT_0 (\Using_LUT6.Use_MUXF8.MUXF8_LUT [0]),
        .bram_rddata_a({bram_rddata_a[19:13],bram_rddata_a[2]}));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_80 \Decode_Bits.Parity_chk5_1 
       (.D(D[0]),
        .bram_rddata_a({bram_rddata_a[12:7],bram_rddata_a[1]}));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity_81 \Decode_Bits.Parity_chk6_1 
       (.\Using_LUT6.Single_LUT6.XOR6_LUT_0 (\Using_LUT6.Single_LUT6.XOR6_LUT [5]),
        .bram_rddata_a(bram_rddata_a[38:33]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity_82 \Decode_Bits.Parity_chk6_2 
       (.\Using_LUT6.Single_LUT6.XOR6_LUT_0 (\Using_LUT6.Single_LUT6.XOR6_LUT [4]),
        .bram_rddata_a(bram_rddata_a[32:27]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity_83 \Decode_Bits.Parity_chk6_3 
       (.\Using_LUT6.Single_LUT6.XOR6_LUT_0 (\Using_LUT6.Single_LUT6.XOR6_LUT [3]),
        .bram_rddata_a(bram_rddata_a[26:21]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_84 \Decode_Bits.Parity_chk6_4 
       (.\Using_LUT6.Use_MUXF7.MUXF7_LUT_0 (\Using_LUT6.Single_LUT6.XOR6_LUT [2]),
        .bram_rddata_a(bram_rddata_a[20:14]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_85 \Decode_Bits.Parity_chk6_5 
       (.\Using_LUT6.Use_MUXF7.MUXF7_LUT_0 (\Using_LUT6.Single_LUT6.XOR6_LUT [1]),
        .bram_rddata_a(bram_rddata_a[13:7]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized8_86 \Decode_Bits.Parity_chk6_6 
       (.\Using_LUT6.Use_MUXF7.MUXF7_LUT_0 (\Using_LUT6.Single_LUT6.XOR6_LUT [0]),
        .bram_rddata_a(bram_rddata_a[6:0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 \Decode_Bits.Use_LUT6.UE_MUXF7 
       (.I0(I0),
        .I1(I1),
        .O(\Decode_Bits.Use_LUT6.UE_MUXF7_0 ),
        .S(syndrome_reg_i));
  LUT4 #(
    .INIT(16'h8000)) 
    \GEN_NO_RD_CMD_OPT.GEN_ECC.UE_Q_i_1 
       (.I0(\Decode_Bits.Use_LUT6.UE_MUXF7_0 ),
        .I1(Enable_ECC),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_ECC.UE_Q_reg ),
        .I3(s_axi_rready),
        .O(UE_Q));
endmodule

module bd_bram_ecc_axi_bram_ctrl_1_0_full_axi
   (\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ,
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ,
    BRAM_Addr_A,
    s_axi_ctrl_rdata,
    SR,
    Q,
    bram_wrdata_a,
    \Decode_Bits.Use_LUT6.UE_MUXF7 ,
    s_axi_ctrl_rvalid,
    E,
    ongoing_write_reg,
    s_axi_awready,
    s_axi_arready,
    axi_bvalid_int_reg,
    s_axi_bid,
    s_axi_bresp,
    s_axi_rid,
    ecc_ue,
    s_axi_ctrl_arready,
    bram_en_a,
    bram_we_a,
    ecc_interrupt,
    s_axi_rdata,
    s_axi_wready,
    s_axi_arlen,
    s_axi_rready,
    s_axi_aresetn,
    s_axi_awburst,
    s_axi_arburst,
    s_axi_aclk,
    s_axi_arvalid,
    s_axi_awvalid,
    s_axi_awid,
    bram_rddata_a,
    s_axi_ctrl_rready,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_wdata,
    s_axi_bready,
    s_axi_wstrb,
    s_axi_wdata,
    s_axi_arid,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_wvalid,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_wvalid,
    s_axi_awlen,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_araddr,
    s_axi_ctrl_bready,
    s_axi_wlast);
  output \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ;
  output \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ;
  output [29:0]BRAM_Addr_A;
  output [31:0]s_axi_ctrl_rdata;
  output [0:0]SR;
  output [31:0]Q;
  output [6:0]bram_wrdata_a;
  output \Decode_Bits.Use_LUT6.UE_MUXF7 ;
  output s_axi_ctrl_rvalid;
  output [0:0]E;
  output ongoing_write_reg;
  output s_axi_awready;
  output s_axi_arready;
  output axi_bvalid_int_reg;
  output [12:0]s_axi_bid;
  output [0:0]s_axi_bresp;
  output [12:0]s_axi_rid;
  output ecc_ue;
  output s_axi_ctrl_arready;
  output bram_en_a;
  output [0:0]bram_we_a;
  output ecc_interrupt;
  output [31:0]s_axi_rdata;
  output s_axi_wready;
  input [7:0]s_axi_arlen;
  input s_axi_rready;
  input s_axi_aresetn;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_arburst;
  input s_axi_aclk;
  input s_axi_arvalid;
  input s_axi_awvalid;
  input [12:0]s_axi_awid;
  input [38:0]bram_rddata_a;
  input s_axi_ctrl_rready;
  input s_axi_ctrl_arvalid;
  input [7:0]s_axi_ctrl_wdata;
  input s_axi_bready;
  input [3:0]s_axi_wstrb;
  input [31:0]s_axi_wdata;
  input [12:0]s_axi_arid;
  input s_axi_ctrl_awvalid;
  input s_axi_ctrl_wvalid;
  input [29:0]s_axi_araddr;
  input [29:0]s_axi_awaddr;
  input s_axi_wvalid;
  input [3:0]s_axi_awlen;
  input [7:0]s_axi_ctrl_awaddr;
  input [7:0]s_axi_ctrl_araddr;
  input s_axi_ctrl_bready;
  input s_axi_wlast;

  wire \ADDR_SNG_PORT.bram_addr_int[10]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_5_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[4]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[5]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[8]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[9]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.sng_bram_addr_ld_en ;
  wire AW2Arb_Active_Clr;
  wire Active_Wr;
  wire Arb2AR_Active;
  wire Arb2AW_Active;
  wire [29:0]BRAM_Addr_A;
  wire BRAM_Addr_En;
  wire BRAM_En_A_i;
  wire [3:3]BRAM_WE_A_i;
  wire \Decode_Bits.Use_LUT6.UE_MUXF7 ;
  wire [0:0]E;
  wire Enable_ECC;
  wire \GEN_ARB.I_SNG_PORT_n_11 ;
  wire \GEN_ARB.I_SNG_PORT_n_4 ;
  wire \GEN_ARB.I_SNG_PORT_n_8 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ;
  wire I_RD_CHNL_n_10;
  wire I_RD_CHNL_n_11;
  wire I_RD_CHNL_n_12;
  wire I_RD_CHNL_n_13;
  wire I_RD_CHNL_n_14;
  wire I_RD_CHNL_n_15;
  wire I_RD_CHNL_n_16;
  wire I_RD_CHNL_n_17;
  wire I_RD_CHNL_n_18;
  wire I_RD_CHNL_n_19;
  wire I_RD_CHNL_n_20;
  wire I_RD_CHNL_n_21;
  wire I_RD_CHNL_n_22;
  wire I_RD_CHNL_n_23;
  wire I_RD_CHNL_n_24;
  wire I_RD_CHNL_n_25;
  wire I_RD_CHNL_n_26;
  wire I_RD_CHNL_n_27;
  wire I_RD_CHNL_n_28;
  wire I_RD_CHNL_n_29;
  wire I_RD_CHNL_n_30;
  wire I_RD_CHNL_n_31;
  wire I_RD_CHNL_n_32;
  wire I_RD_CHNL_n_33;
  wire I_RD_CHNL_n_34;
  wire I_RD_CHNL_n_35;
  wire I_RD_CHNL_n_36;
  wire I_RD_CHNL_n_37;
  wire I_RD_CHNL_n_39;
  wire I_RD_CHNL_n_41;
  wire I_RD_CHNL_n_7;
  wire I_RD_CHNL_n_8;
  wire I_RD_CHNL_n_9;
  wire I_WR_CHNL_n_10;
  wire I_WR_CHNL_n_11;
  wire I_WR_CHNL_n_38;
  wire I_WR_CHNL_n_39;
  wire I_WR_CHNL_n_40;
  wire I_WR_CHNL_n_42;
  wire I_WR_CHNL_n_43;
  wire I_WR_CHNL_n_44;
  wire [31:0]Q;
  wire Rd_Sl_CE;
  wire Rd_Sl_UE;
  wire [0:0]SR;
  wire [29:4]WrChnl_BRAM_Addr_Ld;
  wire Wr_BRAM_Addr_En;
  wire Wr_Sl_CE;
  wire Wr_Sl_UE;
  wire ar_active_d1;
  wire ar_active_re;
  wire [1:0]arb_sm_cs;
  wire aw_active_d1;
  wire aw_active_re;
  wire axi_bvalid_int_reg;
  wire bram_en_a;
  wire [38:0]bram_rddata_a;
  wire [0:0]bram_we_a;
  wire [6:0]bram_wrdata_a;
  wire curr_fixed_burst_reg;
  wire ecc_interrupt;
  wire ecc_ue;
  wire ongoing_write_reg;
  wire s_axi_aclk;
  wire [29:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [12:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [29:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [12:0]s_axi_awid;
  wire [3:0]s_axi_awlen;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire [12:0]s_axi_bid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire [7:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_arready;
  wire s_axi_ctrl_arvalid;
  wire [7:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire [31:0]s_axi_ctrl_rdata;
  wire s_axi_ctrl_rready;
  wire s_axi_ctrl_rvalid;
  wire [7:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wvalid;
  wire [31:0]s_axi_rdata;
  wire [12:0]s_axi_rid;
  wire s_axi_rready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \ADDR_SNG_PORT.bram_addr_int[10]_i_2 
       (.I0(BRAM_Addr_A[7]),
        .I1(BRAM_Addr_A[4]),
        .I2(I_RD_CHNL_n_37),
        .I3(BRAM_Addr_A[5]),
        .I4(BRAM_Addr_A[6]),
        .O(\ADDR_SNG_PORT.bram_addr_int[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_5 
       (.I0(BRAM_Addr_A[8]),
        .I1(BRAM_Addr_A[6]),
        .I2(BRAM_Addr_A[5]),
        .I3(I_RD_CHNL_n_37),
        .I4(BRAM_Addr_A[4]),
        .I5(BRAM_Addr_A[7]),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ADDR_SNG_PORT.bram_addr_int[4]_i_2 
       (.I0(BRAM_Addr_A[0]),
        .I1(BRAM_Addr_A[1]),
        .O(\ADDR_SNG_PORT.bram_addr_int[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \ADDR_SNG_PORT.bram_addr_int[5]_i_2 
       (.I0(BRAM_Addr_A[2]),
        .I1(BRAM_Addr_A[1]),
        .I2(BRAM_Addr_A[0]),
        .O(\ADDR_SNG_PORT.bram_addr_int[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \ADDR_SNG_PORT.bram_addr_int[7]_i_2 
       (.I0(BRAM_Addr_A[3]),
        .I1(BRAM_Addr_A[2]),
        .I2(BRAM_Addr_A[1]),
        .I3(BRAM_Addr_A[0]),
        .I4(BRAM_Addr_A[4]),
        .O(\ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \ADDR_SNG_PORT.bram_addr_int[8]_i_2 
       (.I0(BRAM_Addr_A[4]),
        .I1(BRAM_Addr_A[0]),
        .I2(BRAM_Addr_A[1]),
        .I3(BRAM_Addr_A[2]),
        .I4(BRAM_Addr_A[3]),
        .I5(BRAM_Addr_A[5]),
        .O(\ADDR_SNG_PORT.bram_addr_int[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \ADDR_SNG_PORT.bram_addr_int[9]_i_2 
       (.I0(BRAM_Addr_A[6]),
        .I1(BRAM_Addr_A[5]),
        .I2(I_RD_CHNL_n_37),
        .I3(BRAM_Addr_A[4]),
        .O(\ADDR_SNG_PORT.bram_addr_int[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_39),
        .D(I_RD_CHNL_n_28),
        .Q(BRAM_Addr_A[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_39),
        .D(I_RD_CHNL_n_27),
        .Q(BRAM_Addr_A[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .D(I_RD_CHNL_n_26),
        .Q(BRAM_Addr_A[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .D(I_RD_CHNL_n_25),
        .Q(BRAM_Addr_A[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .D(I_RD_CHNL_n_24),
        .Q(BRAM_Addr_A[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .D(I_RD_CHNL_n_23),
        .Q(BRAM_Addr_A[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .D(I_RD_CHNL_n_22),
        .Q(BRAM_Addr_A[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .D(I_RD_CHNL_n_21),
        .Q(BRAM_Addr_A[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .D(I_RD_CHNL_n_20),
        .Q(BRAM_Addr_A[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .D(I_RD_CHNL_n_19),
        .Q(BRAM_Addr_A[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .D(I_RD_CHNL_n_18),
        .Q(BRAM_Addr_A[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .D(I_RD_CHNL_n_17),
        .Q(BRAM_Addr_A[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .D(I_RD_CHNL_n_16),
        .Q(BRAM_Addr_A[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .D(I_RD_CHNL_n_15),
        .Q(BRAM_Addr_A[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .D(I_RD_CHNL_n_14),
        .Q(BRAM_Addr_A[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .D(I_RD_CHNL_n_13),
        .Q(BRAM_Addr_A[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .D(I_RD_CHNL_n_12),
        .Q(BRAM_Addr_A[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .D(I_RD_CHNL_n_11),
        .Q(BRAM_Addr_A[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .D(I_RD_CHNL_n_10),
        .Q(BRAM_Addr_A[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .D(I_RD_CHNL_n_9),
        .Q(BRAM_Addr_A[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_39),
        .D(I_RD_CHNL_n_36),
        .Q(BRAM_Addr_A[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .D(I_RD_CHNL_n_8),
        .Q(BRAM_Addr_A[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .D(I_RD_CHNL_n_7),
        .Q(BRAM_Addr_A[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_39),
        .D(I_RD_CHNL_n_35),
        .Q(BRAM_Addr_A[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_39),
        .D(I_RD_CHNL_n_34),
        .Q(BRAM_Addr_A[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_39),
        .D(I_RD_CHNL_n_33),
        .Q(BRAM_Addr_A[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_39),
        .D(I_RD_CHNL_n_32),
        .Q(BRAM_Addr_A[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_39),
        .D(I_RD_CHNL_n_31),
        .Q(BRAM_Addr_A[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_39),
        .D(I_RD_CHNL_n_30),
        .Q(BRAM_Addr_A[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_39),
        .D(I_RD_CHNL_n_29),
        .Q(BRAM_Addr_A[7]),
        .R(SR));
  bd_bram_ecc_axi_bram_ctrl_1_0_sng_port_arb \GEN_ARB.I_SNG_PORT 
       (.AW2Arb_Active_Clr(AW2Arb_Active_Clr),
        .Arb2AR_Active(Arb2AR_Active),
        .Arb2AW_Active(Arb2AW_Active),
        .BRAM_WE_A_i(BRAM_WE_A_i),
        .\FSM_sequential_arb_sm_cs_reg[0]_0 (I_WR_CHNL_n_44),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg (\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ),
        .\GEN_NO_RD_CMD_OPT.brst_zero_reg (I_RD_CHNL_n_41),
        .SR(SR),
        .ar_active_d1(ar_active_d1),
        .ar_active_re(ar_active_re),
        .ar_active_reg_0(\GEN_ARB.I_SNG_PORT_n_11 ),
        .ar_active_reg_1(I_WR_CHNL_n_10),
        .arb_sm_cs(arb_sm_cs),
        .aw_active_d1(aw_active_d1),
        .aw_active_d1_reg(\GEN_ARB.I_SNG_PORT_n_8 ),
        .aw_active_re(aw_active_re),
        .bram_we_a(bram_we_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arlen(s_axi_arlen[3:0]),
        .s_axi_arlen_3_sp_1(\GEN_ARB.I_SNG_PORT_n_4 ),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_rready(s_axi_rready));
  bd_bram_ecc_axi_bram_ctrl_1_0_lite_ecc_reg \GEN_REGS.I_LITE_ECC_REG_NO_RL.I_LITE_ECC_REG 
       (.Active_Wr(Active_Wr),
        .BRAM_Addr_A(BRAM_Addr_A),
        .E(E),
        .Enable_ECC(Enable_ECC),
        .\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 (BRAM_Addr_En),
        .Rd_Sl_CE(Rd_Sl_CE),
        .Rd_Sl_UE(Rd_Sl_UE),
        .SR(SR),
        .Wr_Sl_CE(Wr_Sl_CE),
        .Wr_Sl_UE(Wr_Sl_UE),
        .ecc_interrupt(ecc_interrupt),
        .ecc_ue(ecc_ue),
        .ongoing_write_reg(ongoing_write_reg),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr),
        .s_axi_ctrl_arready(s_axi_ctrl_arready),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_rready(s_axi_ctrl_rready),
        .s_axi_ctrl_rvalid(s_axi_ctrl_rvalid),
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid));
  bd_bram_ecc_axi_bram_ctrl_1_0_rd_chnl I_RD_CHNL
       (.\ADDR_SNG_PORT.bram_addr_int_reg[10] (\ADDR_SNG_PORT.bram_addr_int[10]_i_2_n_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11] (\ADDR_SNG_PORT.bram_addr_int[11]_i_5_n_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11]_0 (I_WR_CHNL_n_42),
        .\ADDR_SNG_PORT.bram_addr_int_reg[2] (I_RD_CHNL_n_37),
        .\ADDR_SNG_PORT.bram_addr_int_reg[2]_0 (I_WR_CHNL_n_11),
        .\ADDR_SNG_PORT.bram_addr_int_reg[31] (WrChnl_BRAM_Addr_Ld),
        .\ADDR_SNG_PORT.bram_addr_int_reg[31]_0 (\GEN_ARB.I_SNG_PORT_n_8 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[31]_1 (I_WR_CHNL_n_43),
        .\ADDR_SNG_PORT.bram_addr_int_reg[3] (I_WR_CHNL_n_38),
        .\ADDR_SNG_PORT.bram_addr_int_reg[4] (\ADDR_SNG_PORT.bram_addr_int[4]_i_2_n_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[4]_0 (I_WR_CHNL_n_39),
        .\ADDR_SNG_PORT.bram_addr_int_reg[5] (\ADDR_SNG_PORT.bram_addr_int[5]_i_2_n_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[5]_0 (I_WR_CHNL_n_40),
        .\ADDR_SNG_PORT.bram_addr_int_reg[7] (\ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[8] (\ADDR_SNG_PORT.bram_addr_int[8]_i_2_n_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[9] (\ADDR_SNG_PORT.bram_addr_int[9]_i_2_n_0 ),
        .Arb2AR_Active(Arb2AR_Active),
        .BRAM_En_A_i(BRAM_En_A_i),
        .D({I_RD_CHNL_n_7,I_RD_CHNL_n_8,I_RD_CHNL_n_9,I_RD_CHNL_n_10,I_RD_CHNL_n_11,I_RD_CHNL_n_12,I_RD_CHNL_n_13,I_RD_CHNL_n_14,I_RD_CHNL_n_15,I_RD_CHNL_n_16,I_RD_CHNL_n_17,I_RD_CHNL_n_18,I_RD_CHNL_n_19,I_RD_CHNL_n_20,I_RD_CHNL_n_21,I_RD_CHNL_n_22,I_RD_CHNL_n_23,I_RD_CHNL_n_24,I_RD_CHNL_n_25,I_RD_CHNL_n_26,I_RD_CHNL_n_27,I_RD_CHNL_n_28,I_RD_CHNL_n_29,I_RD_CHNL_n_30,I_RD_CHNL_n_31,I_RD_CHNL_n_32,I_RD_CHNL_n_33,I_RD_CHNL_n_34,I_RD_CHNL_n_35,I_RD_CHNL_n_36}),
        .\Decode_Bits.Use_LUT6.UE_MUXF7 (\Decode_Bits.Use_LUT6.UE_MUXF7 ),
        .E({\ADDR_SNG_PORT.sng_bram_addr_ld_en ,I_RD_CHNL_n_39}),
        .Enable_ECC(Enable_ECC),
        .\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[1] (BRAM_Addr_En),
        .\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31] (Wr_BRAM_Addr_En),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 (\GEN_ARB.I_SNG_PORT_n_11 ),
        .\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 (\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ),
        .\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 (\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ),
        .\GEN_NO_RD_CMD_OPT.brst_zero_reg_0 (\GEN_ARB.I_SNG_PORT_n_4 ),
        .Q(BRAM_Addr_A[9:0]),
        .Rd_Sl_CE(Rd_Sl_CE),
        .Rd_Sl_UE(Rd_Sl_UE),
        .SR(SR),
        .ar_active_d1(ar_active_d1),
        .ar_active_re(ar_active_re),
        .bram_en_a(bram_en_a),
        .bram_rddata_a(bram_rddata_a),
        .curr_fixed_burst_reg(curr_fixed_burst_reg),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlen_7_sp_1(I_RD_CHNL_n_41),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rready(s_axi_rready));
  bd_bram_ecc_axi_bram_ctrl_1_0_wr_chnl I_WR_CHNL
       (.AW2Arb_Active_Clr(AW2Arb_Active_Clr),
        .Active_Wr(Active_Wr),
        .Arb2AW_Active(Arb2AW_Active),
        .BRAM_En_A_i(BRAM_En_A_i),
        .BRAM_WE_A_i(BRAM_WE_A_i),
        .D(WrChnl_BRAM_Addr_Ld),
        .Enable_ECC(Enable_ECC),
        .\GEN_ECC.WrData_reg[31]_0 (Q),
        .Q(Wr_BRAM_Addr_En),
        .SR(SR),
        .Wr_Sl_CE(Wr_Sl_CE),
        .Wr_Sl_UE(Wr_Sl_UE),
        .arb_sm_cs(arb_sm_cs),
        .aw_active_d1(aw_active_d1),
        .aw_active_re(aw_active_re),
        .axi_bvalid_int_reg_0(axi_bvalid_int_reg),
        .axi_wr_burst_reg_0(I_WR_CHNL_n_10),
        .axi_wr_burst_reg_1(I_WR_CHNL_n_42),
        .bram_rddata_a(bram_rddata_a),
        .bram_wrdata_a(bram_wrdata_a),
        .\bvalid_cnt_reg[2]_0 (I_WR_CHNL_n_44),
        .curr_fixed_burst_reg(curr_fixed_burst_reg),
        .curr_wrap_burst_reg_reg_0(I_WR_CHNL_n_43),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awaddr_2_sp_1(I_WR_CHNL_n_11),
        .s_axi_awaddr_3_sp_1(I_WR_CHNL_n_38),
        .s_axi_awaddr_4_sp_1(I_WR_CHNL_n_39),
        .s_axi_awaddr_5_sp_1(I_WR_CHNL_n_40),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .\save_init_bram_addr_ld[31]_i_3 (BRAM_Addr_A[2:0]),
        .\save_init_bram_addr_ld_reg[31] (I_RD_CHNL_n_37));
endmodule

module bd_bram_ecc_axi_bram_ctrl_1_0_lite_ecc_reg
   (s_axi_ctrl_rdata,
    E,
    ongoing_write_reg,
    s_axi_ctrl_rvalid,
    Enable_ECC,
    ecc_ue,
    s_axi_ctrl_arready,
    ecc_interrupt,
    SR,
    s_axi_aclk,
    Wr_Sl_CE,
    Rd_Sl_CE,
    Wr_Sl_UE,
    Rd_Sl_UE,
    s_axi_aresetn,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_rready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_araddr,
    s_axi_ctrl_bready,
    s_axi_ctrl_wdata,
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ,
    BRAM_Addr_A,
    Active_Wr);
  output [31:0]s_axi_ctrl_rdata;
  output [0:0]E;
  output ongoing_write_reg;
  output s_axi_ctrl_rvalid;
  output Enable_ECC;
  output ecc_ue;
  output s_axi_ctrl_arready;
  output ecc_interrupt;
  input [0:0]SR;
  input s_axi_aclk;
  input Wr_Sl_CE;
  input Rd_Sl_CE;
  input Wr_Sl_UE;
  input Rd_Sl_UE;
  input s_axi_aresetn;
  input s_axi_ctrl_awvalid;
  input s_axi_ctrl_wvalid;
  input s_axi_ctrl_arvalid;
  input s_axi_ctrl_rready;
  input [7:0]s_axi_ctrl_awaddr;
  input [7:0]s_axi_ctrl_araddr;
  input s_axi_ctrl_bready;
  input [7:0]s_axi_ctrl_wdata;
  input [0:0]\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ;
  input [29:0]BRAM_Addr_A;
  input Active_Wr;

  wire Active_Wr;
  wire [29:0]BRAM_Addr_A;
  wire [31:2]BRAM_Addr_A_d1;
  wire [31:2]BRAM_Addr_A_d2;
  wire \CE_COUNTER.CE_CounterReg[24]_i_3_n_0 ;
  wire \CE_COUNTER.CE_CounterReg[24]_i_5_n_0 ;
  wire \CE_COUNTER.CE_CounterReg[26]_i_2_n_0 ;
  wire \CE_COUNTER.CE_CounterReg[27]_i_2_n_0 ;
  wire [24:31]CE_CounterReg;
  wire \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ;
  wire \CE_FAILING_REGISTERS.CE_FailingAddress[10]_i_1_n_0 ;
  wire \CE_FAILING_REGISTERS.CE_FailingAddress[11]_i_1_n_0 ;
  wire \CE_FAILING_REGISTERS.CE_FailingAddress[12]_i_1_n_0 ;
  wire \CE_FAILING_REGISTERS.CE_FailingAddress[13]_i_1_n_0 ;
  wire \CE_FAILING_REGISTERS.CE_FailingAddress[14]_i_1_n_0 ;
  wire \CE_FAILING_REGISTERS.CE_FailingAddress[15]_i_1_n_0 ;
  wire \CE_FAILING_REGISTERS.CE_FailingAddress[16]_i_1_n_0 ;
  wire \CE_FAILING_REGISTERS.CE_FailingAddress[17]_i_1_n_0 ;
  wire \CE_FAILING_REGISTERS.CE_FailingAddress[18]_i_1_n_0 ;
  wire \CE_FAILING_REGISTERS.CE_FailingAddress[19]_i_1_n_0 ;
  wire \CE_FAILING_REGISTERS.CE_FailingAddress[1]_i_1_n_0 ;
  wire \CE_FAILING_REGISTERS.CE_FailingAddress[20]_i_1_n_0 ;
  wire \CE_FAILING_REGISTERS.CE_FailingAddress[21]_i_1_n_0 ;
  wire \CE_FAILING_REGISTERS.CE_FailingAddress[22]_i_1_n_0 ;
  wire \CE_FAILING_REGISTERS.CE_FailingAddress[23]_i_1_n_0 ;
  wire \CE_FAILING_REGISTERS.CE_FailingAddress[24]_i_1_n_0 ;
  wire \CE_FAILING_REGISTERS.CE_FailingAddress[25]_i_1_n_0 ;
  wire \CE_FAILING_REGISTERS.CE_FailingAddress[26]_i_1_n_0 ;
  wire \CE_FAILING_REGISTERS.CE_FailingAddress[27]_i_1_n_0 ;
  wire \CE_FAILING_REGISTERS.CE_FailingAddress[28]_i_1_n_0 ;
  wire \CE_FAILING_REGISTERS.CE_FailingAddress[29]_i_1_n_0 ;
  wire \CE_FAILING_REGISTERS.CE_FailingAddress[2]_i_1_n_0 ;
  wire \CE_FAILING_REGISTERS.CE_FailingAddress[3]_i_1_n_0 ;
  wire \CE_FAILING_REGISTERS.CE_FailingAddress[4]_i_1_n_0 ;
  wire \CE_FAILING_REGISTERS.CE_FailingAddress[5]_i_1_n_0 ;
  wire \CE_FAILING_REGISTERS.CE_FailingAddress[6]_i_1_n_0 ;
  wire \CE_FAILING_REGISTERS.CE_FailingAddress[7]_i_1_n_0 ;
  wire \CE_FAILING_REGISTERS.CE_FailingAddress[8]_i_1_n_0 ;
  wire \CE_FAILING_REGISTERS.CE_FailingAddress[9]_i_1_n_0 ;
  wire [0:29]CE_FailingAddress;
  wire [0:0]E;
  wire \ECC_STATUS_REGISTERS.ECC_EnableIRQReg[30]_i_1_n_0 ;
  wire \ECC_STATUS_REGISTERS.ECC_EnableIRQReg[31]_i_1_n_0 ;
  wire \ECC_STATUS_REGISTERS.ECC_StatusReg_reg_n_0_[31] ;
  wire \ECC_STATUS_REGISTERS.ECC_UE_i_i_1_n_0 ;
  wire Enable_ECC;
  wire [31:31]FailingAddr_Ld;
  wire [0:0]\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ;
  wire \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[10] ;
  wire \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[11] ;
  wire \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[12] ;
  wire \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[13] ;
  wire \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[14] ;
  wire \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[15] ;
  wire \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[16] ;
  wire \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[17] ;
  wire \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[18] ;
  wire \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[19] ;
  wire \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[20] ;
  wire \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[21] ;
  wire \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[22] ;
  wire \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[23] ;
  wire \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[24] ;
  wire \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[25] ;
  wire \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[26] ;
  wire \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[27] ;
  wire \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[28] ;
  wire \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[29] ;
  wire \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[2] ;
  wire \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[30] ;
  wire \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[3] ;
  wire \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[4] ;
  wire \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[5] ;
  wire \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[6] ;
  wire \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[7] ;
  wire \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[8] ;
  wire \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[9] ;
  wire I_AXI_LITE_IF_n_36;
  wire I_AXI_LITE_IF_n_41;
  wire I_AXI_LITE_IF_n_42;
  wire I_AXI_LITE_IF_n_43;
  wire I_AXI_LITE_IF_n_44;
  wire I_AXI_LITE_IF_n_45;
  wire I_AXI_LITE_IF_n_46;
  wire I_AXI_LITE_IF_n_47;
  wire I_AXI_LITE_IF_n_48;
  wire I_AXI_LITE_IF_n_49;
  wire I_AXI_LITE_IF_n_50;
  wire I_AXI_LITE_IF_n_51;
  wire I_AXI_LITE_IF_n_52;
  wire Rd_Sl_CE;
  wire Rd_Sl_UE;
  wire [6:7]RegAddr_i;
  wire [1:0]RegWrData_i;
  wire [0:0]SR;
  wire Wr_Sl_CE;
  wire Wr_Sl_UE;
  wire ecc_interrupt;
  wire ecc_ue;
  wire ongoing_write_reg;
  wire p_0_in1_in;
  wire p_1_in;
  wire [1:0]p_2_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [7:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_arready;
  wire s_axi_ctrl_arvalid;
  wire [7:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire [31:0]s_axi_ctrl_rdata;
  wire s_axi_ctrl_rready;
  wire s_axi_ctrl_rvalid;
  wire [7:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wvalid;

  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \CE_COUNTER.CE_CounterReg[24]_i_3 
       (.I0(CE_CounterReg[27]),
        .I1(CE_CounterReg[29]),
        .I2(CE_CounterReg[31]),
        .I3(CE_CounterReg[30]),
        .I4(CE_CounterReg[28]),
        .I5(CE_CounterReg[26]),
        .O(\CE_COUNTER.CE_CounterReg[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CE_COUNTER.CE_CounterReg[24]_i_5 
       (.I0(CE_CounterReg[25]),
        .I1(\CE_COUNTER.CE_CounterReg[24]_i_3_n_0 ),
        .O(\CE_COUNTER.CE_CounterReg[24]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \CE_COUNTER.CE_CounterReg[26]_i_2 
       (.I0(CE_CounterReg[28]),
        .I1(CE_CounterReg[30]),
        .I2(CE_CounterReg[31]),
        .I3(CE_CounterReg[29]),
        .I4(CE_CounterReg[27]),
        .O(\CE_COUNTER.CE_CounterReg[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \CE_COUNTER.CE_CounterReg[27]_i_2 
       (.I0(CE_CounterReg[29]),
        .I1(CE_CounterReg[31]),
        .I2(CE_CounterReg[30]),
        .I3(CE_CounterReg[28]),
        .O(\CE_COUNTER.CE_CounterReg[27]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CE_COUNTER.CE_CounterReg_reg[24] 
       (.C(s_axi_aclk),
        .CE(I_AXI_LITE_IF_n_49),
        .D(I_AXI_LITE_IF_n_41),
        .Q(CE_CounterReg[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_COUNTER.CE_CounterReg_reg[25] 
       (.C(s_axi_aclk),
        .CE(I_AXI_LITE_IF_n_49),
        .D(I_AXI_LITE_IF_n_42),
        .Q(CE_CounterReg[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_COUNTER.CE_CounterReg_reg[26] 
       (.C(s_axi_aclk),
        .CE(I_AXI_LITE_IF_n_49),
        .D(I_AXI_LITE_IF_n_43),
        .Q(CE_CounterReg[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_COUNTER.CE_CounterReg_reg[27] 
       (.C(s_axi_aclk),
        .CE(I_AXI_LITE_IF_n_49),
        .D(I_AXI_LITE_IF_n_44),
        .Q(CE_CounterReg[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_COUNTER.CE_CounterReg_reg[28] 
       (.C(s_axi_aclk),
        .CE(I_AXI_LITE_IF_n_49),
        .D(I_AXI_LITE_IF_n_45),
        .Q(CE_CounterReg[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_COUNTER.CE_CounterReg_reg[29] 
       (.C(s_axi_aclk),
        .CE(I_AXI_LITE_IF_n_49),
        .D(I_AXI_LITE_IF_n_46),
        .Q(CE_CounterReg[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_COUNTER.CE_CounterReg_reg[30] 
       (.C(s_axi_aclk),
        .CE(I_AXI_LITE_IF_n_49),
        .D(I_AXI_LITE_IF_n_47),
        .Q(CE_CounterReg[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_COUNTER.CE_CounterReg_reg[31] 
       (.C(s_axi_aclk),
        .CE(I_AXI_LITE_IF_n_49),
        .D(I_AXI_LITE_IF_n_48),
        .Q(CE_CounterReg[31]),
        .R(SR));
  LUT3 #(
    .INIT(8'h54)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1 
       (.I0(p_0_in1_in),
        .I1(Wr_Sl_CE),
        .I2(Rd_Sl_CE),
        .O(\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_2 
       (.I0(BRAM_Addr_A_d1[31]),
        .I1(Active_Wr),
        .I2(p_1_in),
        .O(FailingAddr_Ld));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress[10]_i_1 
       (.I0(BRAM_Addr_A_d1[21]),
        .I1(Active_Wr),
        .I2(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[21] ),
        .O(\CE_FAILING_REGISTERS.CE_FailingAddress[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress[11]_i_1 
       (.I0(BRAM_Addr_A_d1[20]),
        .I1(Active_Wr),
        .I2(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[20] ),
        .O(\CE_FAILING_REGISTERS.CE_FailingAddress[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress[12]_i_1 
       (.I0(BRAM_Addr_A_d1[19]),
        .I1(Active_Wr),
        .I2(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[19] ),
        .O(\CE_FAILING_REGISTERS.CE_FailingAddress[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress[13]_i_1 
       (.I0(BRAM_Addr_A_d1[18]),
        .I1(Active_Wr),
        .I2(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[18] ),
        .O(\CE_FAILING_REGISTERS.CE_FailingAddress[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress[14]_i_1 
       (.I0(BRAM_Addr_A_d1[17]),
        .I1(Active_Wr),
        .I2(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[17] ),
        .O(\CE_FAILING_REGISTERS.CE_FailingAddress[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress[15]_i_1 
       (.I0(BRAM_Addr_A_d1[16]),
        .I1(Active_Wr),
        .I2(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[16] ),
        .O(\CE_FAILING_REGISTERS.CE_FailingAddress[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress[16]_i_1 
       (.I0(BRAM_Addr_A_d1[15]),
        .I1(Active_Wr),
        .I2(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[15] ),
        .O(\CE_FAILING_REGISTERS.CE_FailingAddress[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress[17]_i_1 
       (.I0(BRAM_Addr_A_d1[14]),
        .I1(Active_Wr),
        .I2(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[14] ),
        .O(\CE_FAILING_REGISTERS.CE_FailingAddress[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress[18]_i_1 
       (.I0(BRAM_Addr_A_d1[13]),
        .I1(Active_Wr),
        .I2(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[13] ),
        .O(\CE_FAILING_REGISTERS.CE_FailingAddress[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress[19]_i_1 
       (.I0(BRAM_Addr_A_d1[12]),
        .I1(Active_Wr),
        .I2(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[12] ),
        .O(\CE_FAILING_REGISTERS.CE_FailingAddress[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress[1]_i_1 
       (.I0(BRAM_Addr_A_d1[30]),
        .I1(Active_Wr),
        .I2(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[30] ),
        .O(\CE_FAILING_REGISTERS.CE_FailingAddress[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress[20]_i_1 
       (.I0(BRAM_Addr_A_d1[11]),
        .I1(Active_Wr),
        .I2(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[11] ),
        .O(\CE_FAILING_REGISTERS.CE_FailingAddress[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress[21]_i_1 
       (.I0(BRAM_Addr_A_d1[10]),
        .I1(Active_Wr),
        .I2(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[10] ),
        .O(\CE_FAILING_REGISTERS.CE_FailingAddress[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress[22]_i_1 
       (.I0(BRAM_Addr_A_d1[9]),
        .I1(Active_Wr),
        .I2(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[9] ),
        .O(\CE_FAILING_REGISTERS.CE_FailingAddress[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress[23]_i_1 
       (.I0(BRAM_Addr_A_d1[8]),
        .I1(Active_Wr),
        .I2(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[8] ),
        .O(\CE_FAILING_REGISTERS.CE_FailingAddress[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress[24]_i_1 
       (.I0(BRAM_Addr_A_d1[7]),
        .I1(Active_Wr),
        .I2(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[7] ),
        .O(\CE_FAILING_REGISTERS.CE_FailingAddress[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress[25]_i_1 
       (.I0(BRAM_Addr_A_d1[6]),
        .I1(Active_Wr),
        .I2(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[6] ),
        .O(\CE_FAILING_REGISTERS.CE_FailingAddress[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress[26]_i_1 
       (.I0(BRAM_Addr_A_d1[5]),
        .I1(Active_Wr),
        .I2(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[5] ),
        .O(\CE_FAILING_REGISTERS.CE_FailingAddress[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress[27]_i_1 
       (.I0(BRAM_Addr_A_d1[4]),
        .I1(Active_Wr),
        .I2(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[4] ),
        .O(\CE_FAILING_REGISTERS.CE_FailingAddress[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress[28]_i_1 
       (.I0(BRAM_Addr_A_d1[3]),
        .I1(Active_Wr),
        .I2(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[3] ),
        .O(\CE_FAILING_REGISTERS.CE_FailingAddress[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress[29]_i_1 
       (.I0(BRAM_Addr_A_d1[2]),
        .I1(Active_Wr),
        .I2(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[2] ),
        .O(\CE_FAILING_REGISTERS.CE_FailingAddress[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress[2]_i_1 
       (.I0(BRAM_Addr_A_d1[29]),
        .I1(Active_Wr),
        .I2(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[29] ),
        .O(\CE_FAILING_REGISTERS.CE_FailingAddress[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress[3]_i_1 
       (.I0(BRAM_Addr_A_d1[28]),
        .I1(Active_Wr),
        .I2(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[28] ),
        .O(\CE_FAILING_REGISTERS.CE_FailingAddress[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress[4]_i_1 
       (.I0(BRAM_Addr_A_d1[27]),
        .I1(Active_Wr),
        .I2(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[27] ),
        .O(\CE_FAILING_REGISTERS.CE_FailingAddress[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress[5]_i_1 
       (.I0(BRAM_Addr_A_d1[26]),
        .I1(Active_Wr),
        .I2(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[26] ),
        .O(\CE_FAILING_REGISTERS.CE_FailingAddress[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress[6]_i_1 
       (.I0(BRAM_Addr_A_d1[25]),
        .I1(Active_Wr),
        .I2(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[25] ),
        .O(\CE_FAILING_REGISTERS.CE_FailingAddress[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress[7]_i_1 
       (.I0(BRAM_Addr_A_d1[24]),
        .I1(Active_Wr),
        .I2(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[24] ),
        .O(\CE_FAILING_REGISTERS.CE_FailingAddress[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress[8]_i_1 
       (.I0(BRAM_Addr_A_d1[23]),
        .I1(Active_Wr),
        .I2(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[23] ),
        .O(\CE_FAILING_REGISTERS.CE_FailingAddress[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress[9]_i_1 
       (.I0(BRAM_Addr_A_d1[22]),
        .I1(Active_Wr),
        .I2(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[22] ),
        .O(\CE_FAILING_REGISTERS.CE_FailingAddress[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress_reg[0] 
       (.C(s_axi_aclk),
        .CE(\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ),
        .D(FailingAddr_Ld),
        .Q(CE_FailingAddress[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress_reg[10] 
       (.C(s_axi_aclk),
        .CE(\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ),
        .D(\CE_FAILING_REGISTERS.CE_FailingAddress[10]_i_1_n_0 ),
        .Q(CE_FailingAddress[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress_reg[11] 
       (.C(s_axi_aclk),
        .CE(\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ),
        .D(\CE_FAILING_REGISTERS.CE_FailingAddress[11]_i_1_n_0 ),
        .Q(CE_FailingAddress[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress_reg[12] 
       (.C(s_axi_aclk),
        .CE(\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ),
        .D(\CE_FAILING_REGISTERS.CE_FailingAddress[12]_i_1_n_0 ),
        .Q(CE_FailingAddress[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress_reg[13] 
       (.C(s_axi_aclk),
        .CE(\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ),
        .D(\CE_FAILING_REGISTERS.CE_FailingAddress[13]_i_1_n_0 ),
        .Q(CE_FailingAddress[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress_reg[14] 
       (.C(s_axi_aclk),
        .CE(\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ),
        .D(\CE_FAILING_REGISTERS.CE_FailingAddress[14]_i_1_n_0 ),
        .Q(CE_FailingAddress[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress_reg[15] 
       (.C(s_axi_aclk),
        .CE(\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ),
        .D(\CE_FAILING_REGISTERS.CE_FailingAddress[15]_i_1_n_0 ),
        .Q(CE_FailingAddress[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress_reg[16] 
       (.C(s_axi_aclk),
        .CE(\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ),
        .D(\CE_FAILING_REGISTERS.CE_FailingAddress[16]_i_1_n_0 ),
        .Q(CE_FailingAddress[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress_reg[17] 
       (.C(s_axi_aclk),
        .CE(\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ),
        .D(\CE_FAILING_REGISTERS.CE_FailingAddress[17]_i_1_n_0 ),
        .Q(CE_FailingAddress[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress_reg[18] 
       (.C(s_axi_aclk),
        .CE(\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ),
        .D(\CE_FAILING_REGISTERS.CE_FailingAddress[18]_i_1_n_0 ),
        .Q(CE_FailingAddress[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress_reg[19] 
       (.C(s_axi_aclk),
        .CE(\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ),
        .D(\CE_FAILING_REGISTERS.CE_FailingAddress[19]_i_1_n_0 ),
        .Q(CE_FailingAddress[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress_reg[1] 
       (.C(s_axi_aclk),
        .CE(\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ),
        .D(\CE_FAILING_REGISTERS.CE_FailingAddress[1]_i_1_n_0 ),
        .Q(CE_FailingAddress[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress_reg[20] 
       (.C(s_axi_aclk),
        .CE(\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ),
        .D(\CE_FAILING_REGISTERS.CE_FailingAddress[20]_i_1_n_0 ),
        .Q(CE_FailingAddress[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress_reg[21] 
       (.C(s_axi_aclk),
        .CE(\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ),
        .D(\CE_FAILING_REGISTERS.CE_FailingAddress[21]_i_1_n_0 ),
        .Q(CE_FailingAddress[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress_reg[22] 
       (.C(s_axi_aclk),
        .CE(\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ),
        .D(\CE_FAILING_REGISTERS.CE_FailingAddress[22]_i_1_n_0 ),
        .Q(CE_FailingAddress[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress_reg[23] 
       (.C(s_axi_aclk),
        .CE(\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ),
        .D(\CE_FAILING_REGISTERS.CE_FailingAddress[23]_i_1_n_0 ),
        .Q(CE_FailingAddress[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress_reg[24] 
       (.C(s_axi_aclk),
        .CE(\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ),
        .D(\CE_FAILING_REGISTERS.CE_FailingAddress[24]_i_1_n_0 ),
        .Q(CE_FailingAddress[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress_reg[25] 
       (.C(s_axi_aclk),
        .CE(\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ),
        .D(\CE_FAILING_REGISTERS.CE_FailingAddress[25]_i_1_n_0 ),
        .Q(CE_FailingAddress[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress_reg[26] 
       (.C(s_axi_aclk),
        .CE(\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ),
        .D(\CE_FAILING_REGISTERS.CE_FailingAddress[26]_i_1_n_0 ),
        .Q(CE_FailingAddress[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress_reg[27] 
       (.C(s_axi_aclk),
        .CE(\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ),
        .D(\CE_FAILING_REGISTERS.CE_FailingAddress[27]_i_1_n_0 ),
        .Q(CE_FailingAddress[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress_reg[28] 
       (.C(s_axi_aclk),
        .CE(\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ),
        .D(\CE_FAILING_REGISTERS.CE_FailingAddress[28]_i_1_n_0 ),
        .Q(CE_FailingAddress[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress_reg[29] 
       (.C(s_axi_aclk),
        .CE(\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ),
        .D(\CE_FAILING_REGISTERS.CE_FailingAddress[29]_i_1_n_0 ),
        .Q(CE_FailingAddress[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress_reg[2] 
       (.C(s_axi_aclk),
        .CE(\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ),
        .D(\CE_FAILING_REGISTERS.CE_FailingAddress[2]_i_1_n_0 ),
        .Q(CE_FailingAddress[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress_reg[3] 
       (.C(s_axi_aclk),
        .CE(\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ),
        .D(\CE_FAILING_REGISTERS.CE_FailingAddress[3]_i_1_n_0 ),
        .Q(CE_FailingAddress[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress_reg[4] 
       (.C(s_axi_aclk),
        .CE(\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ),
        .D(\CE_FAILING_REGISTERS.CE_FailingAddress[4]_i_1_n_0 ),
        .Q(CE_FailingAddress[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress_reg[5] 
       (.C(s_axi_aclk),
        .CE(\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ),
        .D(\CE_FAILING_REGISTERS.CE_FailingAddress[5]_i_1_n_0 ),
        .Q(CE_FailingAddress[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress_reg[6] 
       (.C(s_axi_aclk),
        .CE(\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ),
        .D(\CE_FAILING_REGISTERS.CE_FailingAddress[6]_i_1_n_0 ),
        .Q(CE_FailingAddress[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress_reg[7] 
       (.C(s_axi_aclk),
        .CE(\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ),
        .D(\CE_FAILING_REGISTERS.CE_FailingAddress[7]_i_1_n_0 ),
        .Q(CE_FailingAddress[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress_reg[8] 
       (.C(s_axi_aclk),
        .CE(\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ),
        .D(\CE_FAILING_REGISTERS.CE_FailingAddress[8]_i_1_n_0 ),
        .Q(CE_FailingAddress[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \CE_FAILING_REGISTERS.CE_FailingAddress_reg[9] 
       (.C(s_axi_aclk),
        .CE(\CE_FAILING_REGISTERS.CE_FailingAddress[0]_i_1_n_0 ),
        .D(\CE_FAILING_REGISTERS.CE_FailingAddress[9]_i_1_n_0 ),
        .Q(CE_FailingAddress[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \ECC_STATUS_REGISTERS.ECC_EnableIRQReg[30]_i_1 
       (.I0(RegWrData_i[1]),
        .I1(I_AXI_LITE_IF_n_50),
        .I2(RegAddr_i[7]),
        .I3(RegAddr_i[6]),
        .I4(p_2_in[1]),
        .O(\ECC_STATUS_REGISTERS.ECC_EnableIRQReg[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \ECC_STATUS_REGISTERS.ECC_EnableIRQReg[31]_i_1 
       (.I0(RegWrData_i[0]),
        .I1(I_AXI_LITE_IF_n_50),
        .I2(RegAddr_i[7]),
        .I3(RegAddr_i[6]),
        .I4(p_2_in[0]),
        .O(\ECC_STATUS_REGISTERS.ECC_EnableIRQReg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ECC_STATUS_REGISTERS.ECC_EnableIRQReg_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ECC_STATUS_REGISTERS.ECC_EnableIRQReg[30]_i_1_n_0 ),
        .Q(p_2_in[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ECC_STATUS_REGISTERS.ECC_EnableIRQReg_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ECC_STATUS_REGISTERS.ECC_EnableIRQReg[31]_i_1_n_0 ),
        .Q(p_2_in[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ECC_STATUS_REGISTERS.ECC_StatusReg_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_AXI_LITE_IF_n_51),
        .Q(p_0_in1_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ECC_STATUS_REGISTERS.ECC_StatusReg_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_AXI_LITE_IF_n_36),
        .Q(\ECC_STATUS_REGISTERS.ECC_StatusReg_reg_n_0_[31] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFF8000000000000)) 
    \ECC_STATUS_REGISTERS.ECC_UE_i_i_1 
       (.I0(ecc_ue),
        .I1(\ECC_STATUS_REGISTERS.ECC_StatusReg_reg_n_0_[31] ),
        .I2(Wr_Sl_UE),
        .I3(Rd_Sl_UE),
        .I4(s_axi_aresetn),
        .I5(Enable_ECC),
        .O(\ECC_STATUS_REGISTERS.ECC_UE_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ECC_STATUS_REGISTERS.ECC_UE_i_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ECC_STATUS_REGISTERS.ECC_UE_i_i_1_n_0 ),
        .Q(ecc_ue),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[10] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A[8]),
        .Q(BRAM_Addr_A_d1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[11] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A[9]),
        .Q(BRAM_Addr_A_d1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[12] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A[10]),
        .Q(BRAM_Addr_A_d1[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[13] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A[11]),
        .Q(BRAM_Addr_A_d1[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[14] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A[12]),
        .Q(BRAM_Addr_A_d1[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[15] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A[13]),
        .Q(BRAM_Addr_A_d1[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[16] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A[14]),
        .Q(BRAM_Addr_A_d1[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[17] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A[15]),
        .Q(BRAM_Addr_A_d1[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[18] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A[16]),
        .Q(BRAM_Addr_A_d1[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[19] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A[17]),
        .Q(BRAM_Addr_A_d1[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[20] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A[18]),
        .Q(BRAM_Addr_A_d1[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[21] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A[19]),
        .Q(BRAM_Addr_A_d1[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[22] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A[20]),
        .Q(BRAM_Addr_A_d1[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[23] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A[21]),
        .Q(BRAM_Addr_A_d1[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[24] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A[22]),
        .Q(BRAM_Addr_A_d1[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[25] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A[23]),
        .Q(BRAM_Addr_A_d1[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[26] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A[24]),
        .Q(BRAM_Addr_A_d1[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[27] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A[25]),
        .Q(BRAM_Addr_A_d1[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[28] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A[26]),
        .Q(BRAM_Addr_A_d1[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[29] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A[27]),
        .Q(BRAM_Addr_A_d1[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A[0]),
        .Q(BRAM_Addr_A_d1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[30] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A[28]),
        .Q(BRAM_Addr_A_d1[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A[29]),
        .Q(BRAM_Addr_A_d1[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A[1]),
        .Q(BRAM_Addr_A_d1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A[2]),
        .Q(BRAM_Addr_A_d1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A[3]),
        .Q(BRAM_Addr_A_d1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A[4]),
        .Q(BRAM_Addr_A_d1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A[5]),
        .Q(BRAM_Addr_A_d1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A[6]),
        .Q(BRAM_Addr_A_d1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A[7]),
        .Q(BRAM_Addr_A_d1[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[10] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d1[10]),
        .Q(BRAM_Addr_A_d2[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[11] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d1[11]),
        .Q(BRAM_Addr_A_d2[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[12] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d1[12]),
        .Q(BRAM_Addr_A_d2[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[13] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d1[13]),
        .Q(BRAM_Addr_A_d2[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[14] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d1[14]),
        .Q(BRAM_Addr_A_d2[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[15] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d1[15]),
        .Q(BRAM_Addr_A_d2[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[16] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d1[16]),
        .Q(BRAM_Addr_A_d2[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[17] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d1[17]),
        .Q(BRAM_Addr_A_d2[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[18] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d1[18]),
        .Q(BRAM_Addr_A_d2[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[19] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d1[19]),
        .Q(BRAM_Addr_A_d2[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[20] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d1[20]),
        .Q(BRAM_Addr_A_d2[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[21] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d1[21]),
        .Q(BRAM_Addr_A_d2[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[22] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d1[22]),
        .Q(BRAM_Addr_A_d2[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[23] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d1[23]),
        .Q(BRAM_Addr_A_d2[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[24] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d1[24]),
        .Q(BRAM_Addr_A_d2[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[25] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d1[25]),
        .Q(BRAM_Addr_A_d2[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[26] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d1[26]),
        .Q(BRAM_Addr_A_d2[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[27] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d1[27]),
        .Q(BRAM_Addr_A_d2[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[28] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d1[28]),
        .Q(BRAM_Addr_A_d2[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[29] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d1[29]),
        .Q(BRAM_Addr_A_d2[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d1[2]),
        .Q(BRAM_Addr_A_d2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[30] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d1[30]),
        .Q(BRAM_Addr_A_d2[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[31] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d1[31]),
        .Q(BRAM_Addr_A_d2[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d1[3]),
        .Q(BRAM_Addr_A_d2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d1[4]),
        .Q(BRAM_Addr_A_d2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d1[5]),
        .Q(BRAM_Addr_A_d2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d1[6]),
        .Q(BRAM_Addr_A_d2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d1[7]),
        .Q(BRAM_Addr_A_d2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d1[8]),
        .Q(BRAM_Addr_A_d2[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d2_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d1[9]),
        .Q(BRAM_Addr_A_d2[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[10] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d2[10]),
        .Q(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[11] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d2[11]),
        .Q(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[12] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d2[12]),
        .Q(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[13] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d2[13]),
        .Q(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[14] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d2[14]),
        .Q(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[15] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d2[15]),
        .Q(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[16] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d2[16]),
        .Q(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[17] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d2[17]),
        .Q(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[18] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d2[18]),
        .Q(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[19] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d2[19]),
        .Q(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[20] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d2[20]),
        .Q(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[21] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d2[21]),
        .Q(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[22] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d2[22]),
        .Q(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[23] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d2[23]),
        .Q(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[24] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d2[24]),
        .Q(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[25] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d2[25]),
        .Q(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[26] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d2[26]),
        .Q(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[27] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d2[27]),
        .Q(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[28] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d2[28]),
        .Q(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[29] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d2[29]),
        .Q(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d2[2]),
        .Q(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[30] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d2[30]),
        .Q(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[31] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d2[31]),
        .Q(p_1_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d2[3]),
        .Q(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d2[4]),
        .Q(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d2[5]),
        .Q(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d2[6]),
        .Q(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d2[7]),
        .Q(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d2[8]),
        .Q(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31]_0 ),
        .D(BRAM_Addr_A_d2[9]),
        .Q(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d3_reg_n_0_[9] ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \GEN_ECC_ONOFF.ECC_OnOffReg_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_AXI_LITE_IF_n_52),
        .Q(Enable_ECC),
        .S(SR));
  bd_bram_ecc_axi_bram_ctrl_1_0_axi_lite_if I_AXI_LITE_IF
       (.\CE_COUNTER.CE_CounterReg_reg[24] (\CE_COUNTER.CE_CounterReg[24]_i_5_n_0 ),
        .\CE_COUNTER.CE_CounterReg_reg[26] (\CE_COUNTER.CE_CounterReg[26]_i_2_n_0 ),
        .\CE_COUNTER.CE_CounterReg_reg[27] (\CE_COUNTER.CE_CounterReg[27]_i_2_n_0 ),
        .\CE_COUNTER.CE_CounterReg_reg[31] (\CE_COUNTER.CE_CounterReg[24]_i_3_n_0 ),
        .D({I_AXI_LITE_IF_n_41,I_AXI_LITE_IF_n_42,I_AXI_LITE_IF_n_43,I_AXI_LITE_IF_n_44,I_AXI_LITE_IF_n_45,I_AXI_LITE_IF_n_46,I_AXI_LITE_IF_n_47,I_AXI_LITE_IF_n_48}),
        .E(E),
        .\ECC_STATUS_REGISTERS.ECC_StatusReg_reg[31] (\ECC_STATUS_REGISTERS.ECC_StatusReg_reg_n_0_[31] ),
        .\GEN_ECC_ONOFF.ECC_OnOffReg_reg[31] (Enable_ECC),
        .\GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q_reg (I_AXI_LITE_IF_n_49),
        .Q(RegWrData_i),
        .Rd_Sl_CE(Rd_Sl_CE),
        .Rd_Sl_UE(Rd_Sl_UE),
        .\RegAddr_reg[6]_0 ({RegAddr_i[6],RegAddr_i[7]}),
        .\RegWrData_reg[30]_0 (I_AXI_LITE_IF_n_51),
        .\RegWrData_reg[31]_0 (I_AXI_LITE_IF_n_36),
        .\RegWrData_reg[31]_1 (I_AXI_LITE_IF_n_52),
        .RegWr_reg_0(I_AXI_LITE_IF_n_50),
        .SR(SR),
        .\S_AXI_RDATA_DFF[31].S_AXI_RDATA_FDRE_0 ({CE_FailingAddress[0],CE_FailingAddress[1],CE_FailingAddress[2],CE_FailingAddress[3],CE_FailingAddress[4],CE_FailingAddress[5],CE_FailingAddress[6],CE_FailingAddress[7],CE_FailingAddress[8],CE_FailingAddress[9],CE_FailingAddress[10],CE_FailingAddress[11],CE_FailingAddress[12],CE_FailingAddress[13],CE_FailingAddress[14],CE_FailingAddress[15],CE_FailingAddress[16],CE_FailingAddress[17],CE_FailingAddress[18],CE_FailingAddress[19],CE_FailingAddress[20],CE_FailingAddress[21],CE_FailingAddress[22],CE_FailingAddress[23],CE_FailingAddress[24],CE_FailingAddress[25],CE_FailingAddress[26],CE_FailingAddress[27],CE_FailingAddress[28],CE_FailingAddress[29]}),
        .\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE_0 ({CE_CounterReg[24],CE_CounterReg[25],CE_CounterReg[26],CE_CounterReg[27],CE_CounterReg[28],CE_CounterReg[29],CE_CounterReg[30],CE_CounterReg[31]}),
        .Wr_Sl_CE(Wr_Sl_CE),
        .Wr_Sl_UE(Wr_Sl_UE),
        .ongoing_write_reg_0(ongoing_write_reg),
        .p_0_in1_in(p_0_in1_in),
        .p_2_in(p_2_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr),
        .s_axi_ctrl_arready(s_axi_ctrl_arready),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_rready(s_axi_ctrl_rready),
        .s_axi_ctrl_rvalid(s_axi_ctrl_rvalid),
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid));
  LUT4 #(
    .INIT(16'hF888)) 
    ecc_interrupt_INST_0
       (.I0(p_2_in[0]),
        .I1(\ECC_STATUS_REGISTERS.ECC_StatusReg_reg_n_0_[31] ),
        .I2(p_2_in[1]),
        .I3(p_0_in1_in),
        .O(ecc_interrupt));
endmodule

module bd_bram_ecc_axi_bram_ctrl_1_0_rd_chnl
   (\Decode_Bits.Use_LUT6.UE_MUXF7 ,
    SR,
    Rd_Sl_CE,
    Rd_Sl_UE,
    ar_active_d1,
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ,
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ,
    D,
    \ADDR_SNG_PORT.bram_addr_int_reg[2] ,
    E,
    \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[1] ,
    s_axi_arlen_7_sp_1,
    bram_en_a,
    s_axi_rdata,
    s_axi_rid,
    bram_rddata_a,
    s_axi_aclk,
    ar_active_re,
    \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 ,
    s_axi_rready,
    s_axi_aresetn,
    s_axi_arburst,
    s_axi_araddr,
    Arb2AR_Active,
    \ADDR_SNG_PORT.bram_addr_int_reg[2]_0 ,
    Q,
    \ADDR_SNG_PORT.bram_addr_int_reg[3] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[4] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[5] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[31] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[7] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[8] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[9] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[10] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[11] ,
    curr_fixed_burst_reg,
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[31]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[31]_1 ,
    Enable_ECC,
    \GEN_NO_RD_CMD_OPT.brst_zero_reg_0 ,
    s_axi_arlen,
    s_axi_arid,
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31] ,
    BRAM_En_A_i);
  output \Decode_Bits.Use_LUT6.UE_MUXF7 ;
  output [0:0]SR;
  output Rd_Sl_CE;
  output Rd_Sl_UE;
  output ar_active_d1;
  output \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ;
  output \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ;
  output [29:0]D;
  output \ADDR_SNG_PORT.bram_addr_int_reg[2] ;
  output [1:0]E;
  output [0:0]\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[1] ;
  output s_axi_arlen_7_sp_1;
  output bram_en_a;
  output [31:0]s_axi_rdata;
  output [12:0]s_axi_rid;
  input [38:0]bram_rddata_a;
  input s_axi_aclk;
  input ar_active_re;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 ;
  input s_axi_rready;
  input s_axi_aresetn;
  input [1:0]s_axi_arburst;
  input [29:0]s_axi_araddr;
  input Arb2AR_Active;
  input \ADDR_SNG_PORT.bram_addr_int_reg[2]_0 ;
  input [9:0]Q;
  input \ADDR_SNG_PORT.bram_addr_int_reg[3] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[5] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ;
  input [25:0]\ADDR_SNG_PORT.bram_addr_int_reg[31] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[7] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[8] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[9] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[10] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  input curr_fixed_burst_reg;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[31]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[31]_1 ;
  input Enable_ECC;
  input \GEN_NO_RD_CMD_OPT.brst_zero_reg_0 ;
  input [7:0]s_axi_arlen;
  input [12:0]s_axi_arid;
  input [0:0]\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31] ;
  input BRAM_En_A_i;

  wire \ADDR_SNG_PORT.bram_addr_int_reg[10] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[2] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[2]_0 ;
  wire [25:0]\ADDR_SNG_PORT.bram_addr_int_reg[31] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[31]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[31]_1 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[3] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[5] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[7] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[8] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[9] ;
  wire Arb2AR_Active;
  wire BRAM_En_A_i;
  wire BRAM_En_B_i;
  wire [29:0]D;
  wire \Decode_Bits.Use_LUT6.UE_MUXF7 ;
  wire [1:0]E;
  wire Enable_ECC;
  wire [0:0]\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[1] ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_1_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_5_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_1_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_2_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_4_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_6_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_7_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_2_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1_n_0 ;
  wire \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1[31]_i_2_n_0 ;
  wire [0:0]\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_WO_NARROW.brst_cnt_max_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q ;
  wire \GEN_NO_RD_CMD_OPT.GEN_ECC.bram_en_int_d1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_ECC.bram_en_int_d2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.PARITY_CHK6_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.PARITY_CHK6_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.PARITY_CHK6_n_3 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_4_reg_reg_n_0_[0] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_4_reg_reg_n_0_[1] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[0] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[1] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[2] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[3] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[4] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[5] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[0]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[10]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[11]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[12]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[13]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[14]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[15]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[16]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[17]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[18]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[19]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[1]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[20]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[21]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[22]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[23]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[24]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[25]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[26]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[27]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[28]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[29]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[2]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[30]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[31]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[3]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[4]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[5]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[6]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[7]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[8]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[9]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[0] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[10] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[11] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[12] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[13] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[14] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[15] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[16] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[17] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[18] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[19] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[1] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[20] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[21] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[22] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[23] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[24] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[25] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[26] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[27] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[28] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[29] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[2] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[30] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[31] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[3] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[4] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[5] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[6] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[7] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[8] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[9] ;
  wire [31:0]\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[0]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[10]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[11]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[1]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[2]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[4]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[5]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[6]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[7]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[8]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[9]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_33 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_10_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_6_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_7_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_8_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_9_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0 ;
  wire [7:0]\GEN_NO_RD_CMD_OPT.brst_cnt_reg ;
  wire \GEN_NO_RD_CMD_OPT.brst_one_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_one_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_zero_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_zero_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.end_brst_rd_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_3_n_0 ;
  wire I0;
  wire I1;
  wire [9:0]Q;
  wire Rd_Sl_CE;
  wire Rd_Sl_UE;
  wire S;
  wire [0:0]SR;
  wire S_0;
  wire S_1;
  wire S_10;
  wire S_11;
  wire S_12;
  wire S_13;
  wire S_14;
  wire S_15;
  wire S_16;
  wire S_17;
  wire S_18;
  wire S_19;
  wire S_2;
  wire S_20;
  wire S_21;
  wire S_22;
  wire S_23;
  wire S_24;
  wire S_25;
  wire S_26;
  wire S_27;
  wire S_3;
  wire S_4;
  wire S_5;
  wire S_6;
  wire S_7;
  wire S_8;
  wire S_9;
  wire [0:5]Syndrome;
  wire [0:1]Syndrome_4;
  wire [0:5]Syndrome_6;
  wire UE_Q;
  wire act_rd_burst;
  wire act_rd_burst_set;
  wire act_rd_burst_two;
  wire ar_active_d1;
  wire ar_active_re;
  wire axi_rd_burst;
  wire axi_rd_burst_two;
  wire axi_rdata_en;
  wire [12:0]axi_rid_temp;
  wire axi_rvalid_clr_ok;
  wire axi_rvalid_set;
  wire axi_rvalid_set_cmb;
  wire bram_en_a;
  wire [38:0]bram_rddata_a;
  wire brst_cnt_max;
  wire brst_cnt_max_d1;
  wire brst_one;
  wire brst_zero;
  wire curr_fixed_burst;
  wire curr_fixed_burst_reg;
  wire curr_fixed_burst_reg_0;
  wire curr_wrap_burst_reg;
  wire disable_b2b_brst;
  wire disable_b2b_brst_cmb;
  wire end_brst_rd;
  wire end_brst_rd_clr;
  wire last_bram_addr;
  wire last_bram_addr0;
  wire [7:0]p_0_in;
  wire pend_rd_op;
  wire [3:0]rd_data_sm_cs;
  wire [3:0]rd_data_sm_ns;
  wire rd_skid_buf_ld;
  wire rd_skid_buf_ld_cmb;
  wire rd_skid_buf_ld_reg;
  wire rddata_mux_sel;
  wire [2:0]rlast_sm_cs;
  wire s_axi_aclk;
  wire [29:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [12:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arlen_7_sn_1;
  wire [31:0]s_axi_rdata;
  wire [12:0]s_axi_rid;
  wire s_axi_rready;
  wire [6:1]syndrome_reg;
  wire [4:6]syndrome_reg_i;

  assign s_axi_arlen_7_sp_1 = s_axi_arlen_7_sn_1;
  LUT6 #(
    .INIT(64'h0A2A0A2A0B2B0B2A)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_1 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0 ),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[3]),
        .I3(rd_data_sm_cs[2]),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0 ),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0 ),
        .O(rd_data_sm_ns[0]));
  LUT6 #(
    .INIT(64'h4440FFFF4444FFFF)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0 ),
        .I1(rd_data_sm_cs[1]),
        .I2(pend_rd_op),
        .I3(ar_active_re),
        .I4(rd_data_sm_cs[0]),
        .I5(rd_data_sm_cs[2]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF700F700F7000000)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I1(s_axi_rready),
        .I2(ar_active_re),
        .I3(rd_data_sm_cs[2]),
        .I4(act_rd_burst),
        .I5(act_rd_burst_two),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4454455544444444)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_1 
       (.I0(rd_data_sm_cs[3]),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ),
        .I2(rd_data_sm_cs[2]),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0 ),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0 ),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_5_n_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4044404440445054)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2 
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[2]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I4(brst_zero),
        .I5(end_brst_rd),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4000400040000000)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_3 
       (.I0(ar_active_d1),
        .I1(Arb2AR_Active),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I3(s_axi_rready),
        .I4(act_rd_burst),
        .I5(act_rd_burst_two),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4 
       (.I0(axi_rd_burst),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_5 
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[1]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5444544444445544)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_1 
       (.I0(rd_data_sm_cs[3]),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_2_n_0 ),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3_n_0 ),
        .I3(rd_data_sm_cs[0]),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_4_n_0 ),
        .I5(rd_data_sm_cs[2]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00008888FFFC8888)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I1(rd_data_sm_cs[1]),
        .I2(brst_zero),
        .I3(end_brst_rd),
        .I4(rd_data_sm_cs[2]),
        .I5(rd_data_sm_cs[0]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0155555555555555)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3 
       (.I0(rd_data_sm_cs[1]),
        .I1(act_rd_burst_two),
        .I2(act_rd_burst),
        .I3(s_axi_rready),
        .I4(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I5(ar_active_re),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_4 
       (.I0(rd_data_sm_cs[1]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I2(axi_rd_burst),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0075007500750375)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3_n_0 ),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0 ),
        .I2(rd_data_sm_cs[2]),
        .I3(rd_data_sm_cs[3]),
        .I4(rd_data_sm_cs[1]),
        .I5(rd_data_sm_cs[0]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2200220000000020)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_2 
       (.I0(rd_data_sm_cs[0]),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0 ),
        .I2(ar_active_re),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0 ),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_6_n_0 ),
        .I5(rd_data_sm_cs[1]),
        .O(rd_data_sm_ns[3]));
  LUT6 #(
    .INIT(64'h0F11FF000000FF0F)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_7_n_0 ),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0 ),
        .I2(ar_active_re),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[0]),
        .I5(rd_data_sm_cs[1]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I1(s_axi_rready),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5 
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[2]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_6 
       (.I0(act_rd_burst),
        .I1(act_rd_burst_two),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_7 
       (.I0(end_brst_rd),
        .I1(brst_zero),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ),
        .D(rd_data_sm_ns[0]),
        .Q(rd_data_sm_cs[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ),
        .D(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_1_n_0 ),
        .Q(rd_data_sm_cs[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ),
        .D(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_1_n_0 ),
        .Q(rd_data_sm_cs[2]),
        .R(SR));
  (* FSM_ENCODED_STATES = "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ),
        .D(rd_data_sm_ns[3]),
        .Q(rd_data_sm_cs[3]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFF00CC15FF00CC10)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_2_n_0 ),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0 ),
        .I2(rlast_sm_cs[1]),
        .I3(rlast_sm_cs[0]),
        .I4(rlast_sm_cs[2]),
        .I5(last_bram_addr),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000001500005555)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_2 
       (.I0(rlast_sm_cs[1]),
        .I1(s_axi_rready),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I3(act_rd_burst_two),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I5(axi_rd_burst),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0C0D5F0F0C0D0)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2_n_0 ),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0 ),
        .I2(rlast_sm_cs[1]),
        .I3(rlast_sm_cs[0]),
        .I4(rlast_sm_cs[2]),
        .I5(last_bram_addr),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1515150015155555)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2 
       (.I0(rlast_sm_cs[1]),
        .I1(s_axi_rready),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I3(act_rd_burst_two),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I5(axi_rd_burst),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFC300AFFFC3000)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0 ),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0 ),
        .I2(rlast_sm_cs[1]),
        .I3(rlast_sm_cs[0]),
        .I4(rlast_sm_cs[2]),
        .I5(last_bram_addr),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,w8_last_data:100,w8_2nd_last_data:011,w8_throttle:010,w8_throttle_b2:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1_n_0 ),
        .Q(rlast_sm_cs[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "idle:000,w8_last_data:100,w8_2nd_last_data:011,w8_throttle:010,w8_throttle_b2:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1_n_0 ),
        .Q(rlast_sm_cs[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "idle:000,w8_last_data:100,w8_2nd_last_data:011,w8_throttle:010,w8_throttle_b2:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1_n_0 ),
        .Q(rlast_sm_cs[2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1[31]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_33 ),
        .I1(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1_reg[31] ),
        .I2(s_axi_rready),
        .I3(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I4(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1[31]_i_2_n_0 ),
        .O(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h11111110)) 
    \GEN_ADDR_REG_SNG.BRAM_Addr_A_d1[31]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I1(axi_rd_burst),
        .I2(BRAM_En_B_i),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_ECC.bram_en_int_d1 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_ECC.bram_en_int_d2 ),
        .O(\GEN_ADDR_REG_SNG.BRAM_Addr_A_d1[31]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 ),
        .Q(ar_active_d1),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF2000000F000F000)) 
    \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_WO_NARROW.brst_cnt_max_i_1 
       (.I0(brst_zero),
        .I1(pend_rd_op),
        .I2(brst_cnt_max),
        .I3(s_axi_aresetn),
        .I4(ar_active_d1),
        .I5(Arb2AR_Active),
        .O(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_WO_NARROW.brst_cnt_max_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_WO_NARROW.brst_cnt_max_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_WO_NARROW.brst_cnt_max_i_1_n_0 ),
        .Q(brst_cnt_max),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q ),
        .Q(Rd_Sl_CE),
        .R(1'b0));
  bd_bram_ecc_axi_bram_ctrl_1_0_checkbit_handler__parameterized0_27 \GEN_NO_RD_CMD_OPT.GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.CHK_HANDLER_32 
       (.D({Syndrome[0],Syndrome[1],Syndrome[2],Syndrome[3],Syndrome[5]}),
        .\Decode_Bits.Use_LUT6.UE_MUXF7_0 (\Decode_Bits.Use_LUT6.UE_MUXF7 ),
        .Enable_ECC(Enable_ECC),
        .\GEN_NO_RD_CMD_OPT.GEN_ECC.UE_Q_reg (\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I0(I0),
        .I1(I1),
        .UE_Q(UE_Q),
        .\Using_LUT6.Single_LUT6.XOR6_LUT ({Syndrome_6[0],Syndrome_6[1],Syndrome_6[2],Syndrome_6[3],Syndrome_6[4],Syndrome_6[5]}),
        .\Using_LUT6.Use_MUXF8.MUXF8_LUT ({Syndrome_4[0],Syndrome_4[1]}),
        .bram_rddata_a(bram_rddata_a),
        .s_axi_rready(s_axi_rready),
        .syndrome_reg_i(syndrome_reg_i[6]));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_ECC.UE_Q_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(UE_Q),
        .Q(Rd_Sl_UE),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_ECC.bram_en_int_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(BRAM_En_B_i),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_ECC.bram_en_int_d1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_ECC.bram_en_int_d2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_ECC.bram_en_int_d1 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_ECC.bram_en_int_d2 ),
        .R(1'b0));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit_28 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[0].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[31] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[6]),
        .S(S_12),
        .s_axi_rdata(s_axi_rdata[31]),
        .\s_axi_rdata[31] (\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized9_29 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[10].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[21] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[6]),
        .S(S_22),
        .s_axi_rdata(s_axi_rdata[21]),
        .\s_axi_rdata[21] (\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized10_30 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[11].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[20] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[6]),
        .S(S_13),
        .s_axi_rdata(s_axi_rdata[20]),
        .\s_axi_rdata[20] (\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized11_31 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[12].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[19] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[5]),
        .S(S_14),
        .s_axi_rdata(s_axi_rdata[19]),
        .\s_axi_rdata[19] (\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized12_32 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[13].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[18] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[6]),
        .S(S),
        .s_axi_rdata(s_axi_rdata[18]),
        .\s_axi_rdata[18] (\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized13_33 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[14].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[17] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[4]),
        .S(S_8),
        .s_axi_rdata(s_axi_rdata[17]),
        .\s_axi_rdata[17] (\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized14_34 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[15].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[16] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[6]),
        .S(S_0),
        .s_axi_rdata(s_axi_rdata[16]),
        .\s_axi_rdata[16] (\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized15_35 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[16].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[15] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[5]),
        .S(S_19),
        .s_axi_rdata(s_axi_rdata[15]),
        .\s_axi_rdata[15] (\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized16_36 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[17].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[14] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[6]),
        .S(S_4),
        .s_axi_rdata(s_axi_rdata[14]),
        .\s_axi_rdata[14] (\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized17_37 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[18].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[13] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[3]),
        .S(S_9),
        .s_axi_rdata(s_axi_rdata[13]),
        .\s_axi_rdata[13] (\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized18_38 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[19].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[12] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[6]),
        .S(S_10),
        .s_axi_rdata(s_axi_rdata[12]),
        .\s_axi_rdata[12] (\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized0_39 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[1].CORR_ONE_BIT_32 
       (.Corr_MUXCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.PARITY_CHK6_n_1 ),
        .Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[30] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[6]),
        .s_axi_rdata(s_axi_rdata[30]),
        .\s_axi_rdata[30] (\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized19_40 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[20].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[11] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[5]),
        .S(S_6),
        .s_axi_rdata(s_axi_rdata[11]),
        .\s_axi_rdata[11] (\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized20_41 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[21].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[10] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[6]),
        .S(S_3),
        .s_axi_rdata(s_axi_rdata[10]),
        .\s_axi_rdata[10] (\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized21_42 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[22].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[9] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[4]),
        .S(S_7),
        .s_axi_rdata(s_axi_rdata[9]),
        .\s_axi_rdata[9] (\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized22_43 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[23].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[8] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[6]),
        .S(S_26),
        .s_axi_rdata(s_axi_rdata[8]),
        .\s_axi_rdata[8] (\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized23_44 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[24].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[7] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[5]),
        .S(S_25),
        .s_axi_rdata(s_axi_rdata[7]),
        .\s_axi_rdata[7] (\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized24_45 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[25].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[6] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[6]),
        .S(S_23),
        .s_axi_rdata(s_axi_rdata[6]),
        .\s_axi_rdata[6] (\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized25_46 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[26].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[5] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[6]),
        .S(S_20),
        .s_axi_rdata(s_axi_rdata[5]),
        .\s_axi_rdata[5] (\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized26_47 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[27].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[4] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[5]),
        .S(S_15),
        .s_axi_rdata(s_axi_rdata[4]),
        .\s_axi_rdata[4] (\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized27_48 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[28].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[3] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[6]),
        .S(S_16),
        .s_axi_rdata(s_axi_rdata[3]),
        .\s_axi_rdata[3] (\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized28_49 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[29].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[2] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[4]),
        .S(S_17),
        .s_axi_rdata(s_axi_rdata[2]),
        .\s_axi_rdata[2] (\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized1_50 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[2].CORR_ONE_BIT_32 
       (.Corr_MUXCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.PARITY_CHK6_n_2 ),
        .Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[29] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[5]),
        .s_axi_rdata(s_axi_rdata[29]),
        .\s_axi_rdata[29] (\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized29_51 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[30].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[1] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[6]),
        .S(S_1),
        .s_axi_rdata(s_axi_rdata[1]),
        .\s_axi_rdata[1] (\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized30_52 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[31].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[0] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[5]),
        .S(S_18),
        .s_axi_rdata(s_axi_rdata[0]),
        .s_axi_rdata_0_sp_1(\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized2_53 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[3].CORR_ONE_BIT_32 
       (.Corr_MUXCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.PARITY_CHK6_n_3 ),
        .Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[28] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[6]),
        .s_axi_rdata(s_axi_rdata[28]),
        .\s_axi_rdata[28] (\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized3_54 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[4].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[27] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[6]),
        .S(S_21),
        .s_axi_rdata(s_axi_rdata[27]),
        .\s_axi_rdata[27] (\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized4_55 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[5].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[26] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[5]),
        .S(S_2),
        .s_axi_rdata(s_axi_rdata[26]),
        .\s_axi_rdata[26] (\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized5_56 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[6].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[25] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[6]),
        .S(S_27),
        .s_axi_rdata(s_axi_rdata[25]),
        .\s_axi_rdata[25] (\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized6_57 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[7].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[24] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[4]),
        .S(S_5),
        .s_axi_rdata(s_axi_rdata[24]),
        .\s_axi_rdata[24] (\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized7_58 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[8].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[23] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[6]),
        .S(S_11),
        .s_axi_rdata(s_axi_rdata[23]),
        .\s_axi_rdata[23] (\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized8_59 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_CORR_32[9].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[22] ),
        .Enable_ECC(Enable_ECC),
        .Q(syndrome_reg[5]),
        .S(S_24),
        .s_axi_rdata(s_axi_rdata[22]),
        .\s_axi_rdata[22] (\Decode_Bits.Use_LUT6.UE_MUXF7 ));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized6_60 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.PARITY_CHK4 
       (.Corr_MUXCY(syndrome_reg_i[6]),
        .\Decode_Bits.Use_LUT6.UE_MUXF7 ({syndrome_reg[6:3],syndrome_reg[1]}),
        .Enable_ECC(Enable_ECC),
        .\GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q (\GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q ),
        .\GEN_NO_RD_CMD_OPT.GEN_ECC.CE_Q_reg (\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0 ),
        .I0(I0),
        .I1(I1),
        .Q({\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_4_reg_reg_n_0_[0] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_4_reg_reg_n_0_[1] }),
        .S(S_16),
        .S_0(S_15),
        .S_1(S_14),
        .S_10(S_5),
        .S_11(S_4),
        .S_12(S_3),
        .S_13(S_2),
        .S_14(S_1),
        .S_15(S_0),
        .S_16(S),
        .S_2(S_13),
        .S_3(S_12),
        .S_4(S_11),
        .S_5(S_10),
        .S_6(S_9),
        .S_7(S_8),
        .S_8(S_7),
        .S_9(S_6),
        .syndrome_reg_i(syndrome_reg_i[4]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity_61 \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.PARITY_CHK6 
       (.Corr_MUXCY({syndrome_reg[6:3],syndrome_reg[1]}),
        .\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[2] (\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.PARITY_CHK6_n_3 ),
        .\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[5] (\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.PARITY_CHK6_n_1 ),
        .\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[5]_0 (\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.PARITY_CHK6_n_2 ),
        .Q({\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[0] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[5] }),
        .S(S_27),
        .S_0(S_26),
        .S_1(S_25),
        .S_2(S_24),
        .S_3(S_23),
        .S_4(S_22),
        .S_5(S_21),
        .S_6(S_20),
        .S_7(S_19),
        .S_8(S_18),
        .S_9(S_17),
        .\Using_LUT6.Single_LUT6.XOR6_LUT_0 (syndrome_reg_i[6]),
        .syndrome_reg_i(syndrome_reg_i[4]));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_4_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(Syndrome_4[0]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_4_reg_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_4_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(Syndrome_4[1]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_4_reg_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(Syndrome_6[0]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(Syndrome_6[1]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(Syndrome_6[2]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(Syndrome_6[3]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(Syndrome_6[4]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(Syndrome_6[5]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_6_reg_reg_n_0_[5] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h0011202211330022)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg[0]_i_1 
       (.I0(rd_data_sm_cs[2]),
        .I1(rd_data_sm_cs[3]),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_6_n_0 ),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0 ),
        .I4(rd_data_sm_cs[1]),
        .I5(rd_data_sm_cs[0]),
        .O(axi_rdata_en));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(Syndrome[0]),
        .Q(syndrome_reg[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(Syndrome[1]),
        .Q(syndrome_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(Syndrome[2]),
        .Q(syndrome_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(Syndrome[3]),
        .Q(syndrome_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_HAMMING_ECC_CORR.CHK_ECC_32.GEN_SYN_HAM_32_NO_RL.syndrome_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(Syndrome[5]),
        .Q(syndrome_reg[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[0]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [0]),
        .I1(bram_rddata_a[7]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[10]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [10]),
        .I1(bram_rddata_a[17]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[11]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [11]),
        .I1(bram_rddata_a[18]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[12]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [12]),
        .I1(bram_rddata_a[19]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[13]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [13]),
        .I1(bram_rddata_a[20]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[14]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [14]),
        .I1(bram_rddata_a[21]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[15]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [15]),
        .I1(bram_rddata_a[22]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[16]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [16]),
        .I1(bram_rddata_a[23]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[17]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [17]),
        .I1(bram_rddata_a[24]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[18]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [18]),
        .I1(bram_rddata_a[25]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[19]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [19]),
        .I1(bram_rddata_a[26]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[1]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [1]),
        .I1(bram_rddata_a[8]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[20]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [20]),
        .I1(bram_rddata_a[27]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[21]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [21]),
        .I1(bram_rddata_a[28]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[22]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [22]),
        .I1(bram_rddata_a[29]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[23]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [23]),
        .I1(bram_rddata_a[30]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[24]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [24]),
        .I1(bram_rddata_a[31]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[25]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [25]),
        .I1(bram_rddata_a[32]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[26]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [26]),
        .I1(bram_rddata_a[33]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[27]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [27]),
        .I1(bram_rddata_a[34]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[28]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [28]),
        .I1(bram_rddata_a[35]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[29]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [29]),
        .I1(bram_rddata_a[36]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[2]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [2]),
        .I1(bram_rddata_a[9]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[30]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [30]),
        .I1(bram_rddata_a[37]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[31]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [31]),
        .I1(bram_rddata_a[38]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[3]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [3]),
        .I1(bram_rddata_a[10]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[4]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [4]),
        .I1(bram_rddata_a[11]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[5]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [5]),
        .I1(bram_rddata_a[12]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[6]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [6]),
        .I1(bram_rddata_a[13]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[7]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [7]),
        .I1(bram_rddata_a[14]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[8]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [8]),
        .I1(bram_rddata_a[15]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[9]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [9]),
        .I1(bram_rddata_a[16]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[0]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[0] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[10]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[10] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[11]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[11] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[12]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[12] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[13]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[13] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[14]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[14] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[15]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[15] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[16]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[16] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[17]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[17] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[18]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[18] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[19]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[19] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[1]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[1] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[20]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[20] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[21]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[21] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[22]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[22] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[23]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[23] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[24]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[24] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[25]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[25] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[26]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[26] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[27]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[27] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[28]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[28] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[29]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[29] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[2]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[2] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[30]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[30] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[31]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[31] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[3]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[3] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[4]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[4] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[5]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[5] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[6]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[6] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[7]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[7] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[8]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[8] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int[9]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.axi_rdata_int_reg_n_0_[9] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAABAAAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i[31]_i_1 
       (.I0(rd_skid_buf_ld_reg),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0 ),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[0]),
        .I4(rd_data_sm_cs[2]),
        .I5(rd_data_sm_cs[3]),
        .O(rd_skid_buf_ld));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[7]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[17]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[18]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[19]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[20]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[21]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[22]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[23]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[24]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[25]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[26]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[8]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[27]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[28]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[29]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[30]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[31]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[32]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[33]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[34]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[35]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[36]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[9]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[37]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[38]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[10]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[11]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[12]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[13]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[14]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[15]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[16]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_ECC.GEN_RDATA_NO_RL_ECC.rd_skid_buf_i_reg [9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h030003000000AA00)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1 
       (.I0(axi_rd_burst),
        .I1(axi_rd_burst_two),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_3_n_0 ),
        .I3(s_axi_aresetn),
        .I4(brst_zero),
        .I5(ar_active_re),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_2 
       (.I0(s_axi_arlen[3]),
        .I1(s_axi_arlen[0]),
        .I2(s_axi_arlen_7_sn_1),
        .I3(s_axi_arlen[1]),
        .I4(s_axi_arlen[2]),
        .O(axi_rd_burst_two));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_3 
       (.I0(s_axi_arlen_7_sn_1),
        .I1(s_axi_arlen[0]),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arlen[2]),
        .I4(s_axi_arlen[3]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1_n_0 ),
        .Q(axi_rd_burst),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00A0C0C000A000A0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I1(axi_rd_burst_two),
        .I2(s_axi_aresetn),
        .I3(brst_zero),
        .I4(ar_active_d1),
        .I5(Arb2AR_Active),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[0]_i_1 
       (.I0(s_axi_arid[0]),
        .I1(Arb2AR_Active),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[0]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[10]_i_1 
       (.I0(s_axi_arid[10]),
        .I1(Arb2AR_Active),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[10]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[11]_i_1 
       (.I0(s_axi_arid[11]),
        .I1(Arb2AR_Active),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[11]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I1(s_axi_rready),
        .I2(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2 
       (.I0(axi_rvalid_set),
        .I1(ar_active_d1),
        .I2(Arb2AR_Active),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_3 
       (.I0(s_axi_arid[12]),
        .I1(Arb2AR_Active),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[12]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[1]_i_1 
       (.I0(s_axi_arid[1]),
        .I1(Arb2AR_Active),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[2]_i_1 
       (.I0(s_axi_arid[2]),
        .I1(Arb2AR_Active),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[2]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1 
       (.I0(s_axi_arid[3]),
        .I1(Arb2AR_Active),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[3]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[4]_i_1 
       (.I0(s_axi_arid[4]),
        .I1(Arb2AR_Active),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[4]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[5]_i_1 
       (.I0(s_axi_arid[5]),
        .I1(Arb2AR_Active),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[5]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[6]_i_1 
       (.I0(s_axi_arid[6]),
        .I1(Arb2AR_Active),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[6]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[7]_i_1 
       (.I0(s_axi_arid[7]),
        .I1(Arb2AR_Active),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[7]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[8]_i_1 
       (.I0(s_axi_arid[8]),
        .I1(Arb2AR_Active),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[8]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[9]_i_1 
       (.I0(s_axi_arid[9]),
        .I1(Arb2AR_Active),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[9]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[0]_i_1_n_0 ),
        .Q(s_axi_rid[0]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[10]_i_1_n_0 ),
        .Q(s_axi_rid[10]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[11]_i_1_n_0 ),
        .Q(s_axi_rid[11]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_3_n_0 ),
        .Q(s_axi_rid[12]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[1]_i_1_n_0 ),
        .Q(s_axi_rid[1]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[2]_i_1_n_0 ),
        .Q(s_axi_rid[2]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0 ),
        .Q(s_axi_rid[3]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[4]_i_1_n_0 ),
        .Q(s_axi_rid[4]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[5]_i_1_n_0 ),
        .Q(s_axi_rid[5]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[6]_i_1_n_0 ),
        .Q(s_axi_rid[6]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[7]_i_1_n_0 ),
        .Q(s_axi_rid[7]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[8]_i_1_n_0 ),
        .Q(s_axi_rid[8]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_2_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[9]_i_1_n_0 ),
        .Q(s_axi_rid[9]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[0] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[0]),
        .Q(axi_rid_temp[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[10] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[10]),
        .Q(axi_rid_temp[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[11] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[11]),
        .Q(axi_rid_temp[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[12] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[12]),
        .Q(axi_rid_temp[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[1] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[1]),
        .Q(axi_rid_temp[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[2] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[2]),
        .Q(axi_rid_temp[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[3] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[3]),
        .Q(axi_rid_temp[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[4] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[4]),
        .Q(axi_rid_temp[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[5] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[5]),
        .Q(axi_rid_temp[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[6] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[6]),
        .Q(axi_rid_temp[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[7] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[7]),
        .Q(axi_rid_temp[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[8] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[8]),
        .Q(axi_rid_temp[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[9] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[9]),
        .Q(axi_rid_temp[9]),
        .R(SR));
  bd_bram_ecc_axi_bram_ctrl_1_0_wrap_brst_62 \GEN_NO_RD_CMD_OPT.I_WRAP_BRST 
       (.\ADDR_SNG_PORT.bram_addr_int[11]_i_4_0 (\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .\ADDR_SNG_PORT.bram_addr_int[11]_i_4_1 (\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[10] (\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11] (Q),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11]_0 (\ADDR_SNG_PORT.bram_addr_int_reg[11] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11]_1 (\ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[2] (\ADDR_SNG_PORT.bram_addr_int_reg[2] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[2]_0 (\ADDR_SNG_PORT.bram_addr_int_reg[2]_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[31] (\ADDR_SNG_PORT.bram_addr_int_reg[31] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[31]_0 (\ADDR_SNG_PORT.bram_addr_int_reg[31]_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[31]_1 (\ADDR_SNG_PORT.bram_addr_int_reg[31]_1 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[3] (\ADDR_SNG_PORT.bram_addr_int_reg[3] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[4] (\ADDR_SNG_PORT.bram_addr_int_reg[4] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[4]_0 (\ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[5] (\ADDR_SNG_PORT.bram_addr_int_reg[5] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[5]_0 (\ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[7] (\ADDR_SNG_PORT.bram_addr_int_reg[7] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[8] (\ADDR_SNG_PORT.bram_addr_int_reg[8] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[9] (\ADDR_SNG_PORT.bram_addr_int_reg[9] ),
        .Arb2AR_Active(Arb2AR_Active),
        .D(D),
        .E(E),
        .\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_33 ),
        .Q(rd_data_sm_cs),
        .SR(SR),
        .ar_active_re(ar_active_re),
        .axi_rd_burst(axi_rd_burst),
        .brst_zero(brst_zero),
        .curr_fixed_burst_reg(curr_fixed_burst_reg),
        .curr_fixed_burst_reg_0(curr_fixed_burst_reg_0),
        .curr_wrap_burst_reg(curr_wrap_burst_reg),
        .end_brst_rd(end_brst_rd),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arlen(s_axi_arlen[3:0]),
        .s_axi_rready(s_axi_rready));
  LUT6 #(
    .INIT(64'h0000000022E2EEE2)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_i_1 
       (.I0(act_rd_burst),
        .I1(act_rd_burst_set),
        .I2(axi_rd_burst),
        .I3(ar_active_re),
        .I4(axi_rd_burst_two),
        .I5(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_3_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000101010001)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_i_2 
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[2]),
        .I3(\GEN_NO_RD_CMD_OPT.brst_zero_reg_0 ),
        .I4(rd_data_sm_cs[0]),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0 ),
        .O(act_rd_burst_set));
  LUT6 #(
    .INIT(64'h04000010FFFFFFFF)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_4_n_0 ),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[3]),
        .I3(rd_data_sm_cs[0]),
        .I4(rd_data_sm_cs[1]),
        .I5(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h1FFF)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_i_4 
       (.I0(act_rd_burst_two),
        .I1(act_rd_burst),
        .I2(s_axi_rready),
        .I3(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_1_n_0 ),
        .Q(act_rd_burst),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1 
       (.I0(act_rd_burst_two),
        .I1(act_rd_burst_set),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I3(ar_active_re),
        .I4(axi_rd_burst_two),
        .I5(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_3_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1_n_0 ),
        .Q(act_rd_burst_two),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF55FFC000000000)) 
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1 
       (.I0(s_axi_rready),
        .I1(rlast_sm_cs[2]),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I5(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2 
       (.I0(rlast_sm_cs[0]),
        .I1(rlast_sm_cs[1]),
        .O(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3 
       (.I0(rlast_sm_cs[2]),
        .I1(rlast_sm_cs[0]),
        .I2(s_axi_rready),
        .I3(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFEAA)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0 ),
        .I2(disable_b2b_brst),
        .I3(last_bram_addr),
        .I4(axi_rvalid_clr_ok),
        .O(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h444444444F444444)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2 
       (.I0(ar_active_d1),
        .I1(Arb2AR_Active),
        .I2(rd_data_sm_cs[3]),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[0]),
        .I5(rd_data_sm_cs[1]),
        .O(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1_n_0 ),
        .Q(axi_rvalid_clr_ok),
        .R(SR));
  LUT6 #(
    .INIT(64'h7F7F7F0000000000)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1 
       (.I0(s_axi_rready),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I2(axi_rvalid_clr_ok),
        .I3(axi_rvalid_set),
        .I4(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I5(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0010)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_set_i_1 
       (.I0(rd_data_sm_cs[2]),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[3]),
        .O(axi_rvalid_set_cmb));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_set_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_set_cmb),
        .Q(axi_rvalid_set),
        .R(SR));
  LUT6 #(
    .INIT(64'hFBFFFBFB0B000B0B)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.bram_en_int_i_2_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.bram_en_int_i_3_n_0 ),
        .I2(rd_data_sm_cs[3]),
        .I3(\GEN_NO_RD_CMD_OPT.bram_en_int_i_4_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.bram_en_int_i_5_n_0 ),
        .I5(BRAM_En_B_i),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h02AAAAAAAAAAAAAA)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_10 
       (.I0(rd_data_sm_cs[2]),
        .I1(act_rd_burst_two),
        .I2(act_rd_burst),
        .I3(s_axi_rready),
        .I4(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I5(ar_active_re),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBFBBBB)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.bram_en_int_i_6_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.bram_en_int_i_7_n_0 ),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_7_n_0 ),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0 ),
        .I4(rd_data_sm_cs[2]),
        .I5(rd_data_sm_cs[0]),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEF2FFFFFFFF)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_3 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0 ),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[2]),
        .I3(brst_zero),
        .I4(end_brst_rd),
        .I5(rd_data_sm_cs[0]),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1515555555FF5555)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.bram_en_int_i_8_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.bram_en_int_i_9_n_0 ),
        .I2(brst_one),
        .I3(\GEN_NO_RD_CMD_OPT.bram_en_int_i_10_n_0 ),
        .I4(rd_data_sm_cs[0]),
        .I5(rd_data_sm_cs[1]),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3333ABAA3333BBBB)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_5 
       (.I0(rd_data_sm_cs[1]),
        .I1(\GEN_NO_RD_CMD_OPT.bram_en_int_i_6_n_0 ),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_7_n_0 ),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0 ),
        .I4(rd_data_sm_cs[0]),
        .I5(rd_data_sm_cs[2]),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880000000)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_6 
       (.I0(rd_data_sm_cs[2]),
        .I1(rd_data_sm_cs[1]),
        .I2(pend_rd_op),
        .I3(s_axi_rready),
        .I4(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I5(ar_active_re),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFEFF3CFFFF)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_7 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[2]),
        .I3(ar_active_d1),
        .I4(Arb2AR_Active),
        .I5(rd_data_sm_cs[1]),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hAAFB)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_8 
       (.I0(rd_data_sm_cs[2]),
        .I1(Arb2AR_Active),
        .I2(ar_active_d1),
        .I3(rd_data_sm_cs[1]),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0007)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_9 
       (.I0(s_axi_rready),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I2(brst_zero),
        .I3(end_brst_rd),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.bram_en_int_i_1_n_0 ),
        .Q(BRAM_En_B_i),
        .R(SR));
  LUT4 #(
    .INIT(16'h08FB)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[0]_i_1 
       (.I0(s_axi_arlen[0]),
        .I1(Arb2AR_Active),
        .I2(ar_active_d1),
        .I3(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [0]),
        .O(p_0_in[0]));
  LUT5 #(
    .INIT(32'hFB0808FB)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[1]_i_1 
       (.I0(s_axi_arlen[1]),
        .I1(Arb2AR_Active),
        .I2(ar_active_d1),
        .I3(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [1]),
        .I4(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [0]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hFBFBFB08080808FB)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[2]_i_1 
       (.I0(s_axi_arlen[2]),
        .I1(Arb2AR_Active),
        .I2(ar_active_d1),
        .I3(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [1]),
        .I4(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [0]),
        .I5(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hBBBBBBB88888888B)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[3]_i_1 
       (.I0(s_axi_arlen[3]),
        .I1(ar_active_re),
        .I2(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [2]),
        .I3(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [0]),
        .I4(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [1]),
        .I5(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [3]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'hFB0808FB)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[4]_i_1 
       (.I0(s_axi_arlen[4]),
        .I1(Arb2AR_Active),
        .I2(ar_active_d1),
        .I3(\GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hFB08FB08FB0808FB)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[5]_i_1 
       (.I0(s_axi_arlen[5]),
        .I1(Arb2AR_Active),
        .I2(ar_active_d1),
        .I3(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [5]),
        .I4(\GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [4]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B88B)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_1 
       (.I0(s_axi_arlen[6]),
        .I1(ar_active_re),
        .I2(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [6]),
        .I3(\GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [4]),
        .I5(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [5]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [3]),
        .I1(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [1]),
        .I2(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [0]),
        .I3(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [2]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1 
       (.I0(ar_active_d1),
        .I1(Arb2AR_Active),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_33 ),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FB08FB0808FB)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_2 
       (.I0(s_axi_arlen[7]),
        .I1(Arb2AR_Active),
        .I2(ar_active_d1),
        .I3(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [7]),
        .I4(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0 ),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [2]),
        .I1(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [0]),
        .I2(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [1]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [6]),
        .I1(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [3]),
        .I2(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [5]),
        .I3(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [4]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_max_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(brst_cnt_max),
        .Q(brst_cnt_max_d1),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [7]),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000AA0AA808)) 
    \GEN_NO_RD_CMD_OPT.brst_one_i_1 
       (.I0(s_axi_aresetn),
        .I1(brst_one),
        .I2(ar_active_re),
        .I3(axi_rd_burst_two),
        .I4(\GEN_NO_RD_CMD_OPT.brst_one_i_2_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.brst_one_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \GEN_NO_RD_CMD_OPT.brst_one_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [7]),
        .I2(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [2]),
        .I3(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_33 ),
        .I4(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [1]),
        .I5(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [0]),
        .O(\GEN_NO_RD_CMD_OPT.brst_one_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_one_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.brst_one_i_1_n_0 ),
        .Q(brst_one),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hA800)) 
    \GEN_NO_RD_CMD_OPT.brst_zero_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.brst_zero_reg_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0 ),
        .I2(brst_zero),
        .I3(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.brst_zero_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \GEN_NO_RD_CMD_OPT.brst_zero_i_3 
       (.I0(s_axi_arlen[7]),
        .I1(s_axi_arlen[4]),
        .I2(s_axi_arlen[6]),
        .I3(s_axi_arlen[5]),
        .O(s_axi_arlen_7_sn_1));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_zero_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.brst_zero_i_1_n_0 ),
        .Q(brst_zero),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_NO_RD_CMD_OPT.curr_fixed_burst_reg_i_1 
       (.I0(s_axi_arburst[0]),
        .I1(s_axi_arburst[1]),
        .O(curr_fixed_burst));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.curr_fixed_burst_reg_reg 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(curr_fixed_burst),
        .Q(curr_fixed_burst_reg_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_i_1 
       (.I0(s_axi_arburst[1]),
        .I1(s_axi_arburst[0]),
        .O(\GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(\GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_i_1_n_0 ),
        .Q(curr_wrap_burst_reg),
        .R(SR));
  LUT6 #(
    .INIT(64'hAABAAABABABAAABA)) 
    \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0 ),
        .I1(rd_data_sm_cs[3]),
        .I2(disable_b2b_brst),
        .I3(rd_data_sm_cs[0]),
        .I4(rd_data_sm_cs[2]),
        .I5(rd_data_sm_cs[1]),
        .O(disable_b2b_brst_cmb));
  LUT6 #(
    .INIT(64'h00000000FBFBFBBB)) 
    \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2 
       (.I0(disable_b2b_brst),
        .I1(rd_data_sm_cs[1]),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0 ),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_7_n_0 ),
        .I4(brst_one),
        .I5(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF10FFFFFFFF)) 
    \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I1(rd_data_sm_cs[1]),
        .I2(axi_rd_burst),
        .I3(rd_data_sm_cs[3]),
        .I4(rd_data_sm_cs[2]),
        .I5(rd_data_sm_cs[0]),
        .O(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.disable_b2b_brst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(disable_b2b_brst_cmb),
        .Q(disable_b2b_brst),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFCFFFD03000000)) 
    \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1 
       (.I0(ar_active_re),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[3]),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[0]),
        .I5(end_brst_rd_clr),
        .O(\GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1_n_0 ),
        .Q(end_brst_rd_clr),
        .R(SR));
  LUT5 #(
    .INIT(32'h55300000)) 
    \GEN_NO_RD_CMD_OPT.end_brst_rd_i_1 
       (.I0(end_brst_rd_clr),
        .I1(brst_cnt_max_d1),
        .I2(brst_cnt_max),
        .I3(end_brst_rd),
        .I4(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.end_brst_rd_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.end_brst_rd_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.end_brst_rd_i_1_n_0 ),
        .Q(end_brst_rd),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hBAAAAAAB)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0 ),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[2]),
        .O(last_bram_addr0));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [7]),
        .I2(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [2]),
        .I3(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_33 ),
        .I4(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [0]),
        .I5(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [1]),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7777777770777777)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_4_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.brst_zero_reg_0 ),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0 ),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0 ),
        .I4(rd_data_sm_cs[3]),
        .I5(rd_data_sm_cs[2]),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000CC00EC00CC)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_4 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0 ),
        .I1(ar_active_re),
        .I2(pend_rd_op),
        .I3(rd_data_sm_cs[3]),
        .I4(rd_data_sm_cs[2]),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(last_bram_addr0),
        .Q(last_bram_addr),
        .R(SR));
  LUT6 #(
    .INIT(64'h4444444444F040F0)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_2_n_0 ),
        .I1(ar_active_re),
        .I2(pend_rd_op),
        .I3(axi_rvalid_set_cmb),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_3_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hFFFFFF0E)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_2 
       (.I0(axi_rd_burst),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I2(rd_data_sm_cs[2]),
        .I3(rd_data_sm_cs[3]),
        .I4(rd_data_sm_cs[1]),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEAAAAAA)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_4_n_0 ),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[3]),
        .I3(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_5_n_0 ),
        .I4(pend_rd_op),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0101010001000100)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_4 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0 ),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[1]),
        .I3(ar_active_re),
        .I4(pend_rd_op),
        .I5(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_5 
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[2]),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_1_n_0 ),
        .Q(pend_rd_op),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000080F0F00)) 
    \GEN_NO_RD_CMD_OPT.rd_skid_buf_ld_reg_i_1 
       (.I0(s_axi_rready),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I2(rd_data_sm_cs[3]),
        .I3(rd_data_sm_cs[0]),
        .I4(rd_data_sm_cs[1]),
        .I5(rd_data_sm_cs[2]),
        .O(rd_skid_buf_ld_cmb));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.rd_skid_buf_ld_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rd_skid_buf_ld_cmb),
        .Q(rd_skid_buf_ld_reg),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hFD01)) 
    \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_2_n_0 ),
        .I1(rd_data_sm_cs[3]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_3_n_0 ),
        .I3(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1F1F1F1FF3F3F333)) 
    \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_2 
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[0]),
        .I3(act_rd_burst_two),
        .I4(act_rd_burst),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA015A0BFA0BFA0BF)) 
    \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_3 
       (.I0(rd_data_sm_cs[2]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[0]),
        .I4(s_axi_rready),
        .I5(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1_n_0 ),
        .Q(rddata_mux_sel),
        .R(SR));
  LUT2 #(
    .INIT(4'hE)) 
    bram_en_a_INST_0
       (.I0(BRAM_En_B_i),
        .I1(BRAM_En_A_i),
        .O(bram_en_a));
endmodule

module bd_bram_ecc_axi_bram_ctrl_1_0_sng_port_arb
   (s_axi_awready,
    s_axi_arready,
    Arb2AR_Active,
    Arb2AW_Active,
    s_axi_arlen_3_sp_1,
    ar_active_re,
    arb_sm_cs,
    aw_active_d1_reg,
    aw_active_re,
    bram_we_a,
    ar_active_reg_0,
    SR,
    s_axi_aclk,
    s_axi_arlen,
    \GEN_NO_RD_CMD_OPT.brst_zero_reg ,
    s_axi_arvalid,
    s_axi_awvalid,
    AW2Arb_Active_Clr,
    \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg ,
    s_axi_rready,
    aw_active_d1,
    ar_active_d1,
    \FSM_sequential_arb_sm_cs_reg[0]_0 ,
    BRAM_WE_A_i,
    ar_active_reg_1,
    s_axi_aresetn);
  output s_axi_awready;
  output s_axi_arready;
  output Arb2AR_Active;
  output Arb2AW_Active;
  output s_axi_arlen_3_sp_1;
  output ar_active_re;
  output [1:0]arb_sm_cs;
  output aw_active_d1_reg;
  output aw_active_re;
  output [0:0]bram_we_a;
  output ar_active_reg_0;
  input [0:0]SR;
  input s_axi_aclk;
  input [3:0]s_axi_arlen;
  input \GEN_NO_RD_CMD_OPT.brst_zero_reg ;
  input s_axi_arvalid;
  input s_axi_awvalid;
  input AW2Arb_Active_Clr;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg ;
  input s_axi_rready;
  input aw_active_d1;
  input ar_active_d1;
  input \FSM_sequential_arb_sm_cs_reg[0]_0 ;
  input [0:0]BRAM_WE_A_i;
  input ar_active_reg_1;
  input s_axi_aresetn;

  wire AW2Arb_Active_Clr;
  wire Arb2AR_Active;
  wire Arb2AW_Active;
  wire [0:0]BRAM_WE_A_i;
  wire \FSM_sequential_arb_sm_cs[0]_i_1_n_0 ;
  wire \FSM_sequential_arb_sm_cs[0]_i_2_n_0 ;
  wire \FSM_sequential_arb_sm_cs[1]_i_1_n_0 ;
  wire \FSM_sequential_arb_sm_cs[1]_i_2_n_0 ;
  wire \FSM_sequential_arb_sm_cs_reg[0]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg ;
  wire \GEN_NO_RD_CMD_OPT.brst_zero_reg ;
  wire [0:0]SR;
  wire ar_active_d1;
  wire ar_active_i_1_n_0;
  wire ar_active_i_4_n_0;
  wire ar_active_re;
  wire ar_active_reg_0;
  wire ar_active_reg_1;
  wire [1:0]arb_sm_cs;
  wire aw_active_d1;
  wire aw_active_d1_reg;
  wire aw_active_i_1_n_0;
  wire aw_active_re;
  wire axi_arready_cmb;
  wire axi_arready_int_i_2_n_0;
  wire axi_awready_cmb;
  wire axi_awready_int_i_3_n_0;
  wire [0:0]bram_we_a;
  wire last_arb_won;
  wire last_arb_won_cmb;
  wire last_arb_won_i_1_n_0;
  wire last_arb_won_i_2_n_0;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [3:0]s_axi_arlen;
  wire s_axi_arlen_3_sn_1;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_rready;

  assign s_axi_arlen_3_sp_1 = s_axi_arlen_3_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \ADDR_SNG_PORT.bram_addr_int[31]_i_5 
       (.I0(aw_active_d1),
        .I1(Arb2AW_Active),
        .I2(ar_active_d1),
        .I3(Arb2AR_Active),
        .O(aw_active_d1_reg));
  LUT6 #(
    .INIT(64'h0F0FC0C0000F5454)) 
    \FSM_sequential_arb_sm_cs[0]_i_1 
       (.I0(axi_awready_int_i_3_n_0),
        .I1(\FSM_sequential_arb_sm_cs_reg[0]_0 ),
        .I2(\FSM_sequential_arb_sm_cs[0]_i_2_n_0 ),
        .I3(AW2Arb_Active_Clr),
        .I4(arb_sm_cs[0]),
        .I5(arb_sm_cs[1]),
        .O(\FSM_sequential_arb_sm_cs[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \FSM_sequential_arb_sm_cs[0]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg ),
        .I1(s_axi_rready),
        .I2(arb_sm_cs[1]),
        .I3(arb_sm_cs[0]),
        .O(\FSM_sequential_arb_sm_cs[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0202FFFF8AAA0000)) 
    \FSM_sequential_arb_sm_cs[1]_i_1 
       (.I0(s_axi_arvalid),
        .I1(arb_sm_cs[0]),
        .I2(s_axi_awvalid),
        .I3(last_arb_won),
        .I4(\FSM_sequential_arb_sm_cs[1]_i_2_n_0 ),
        .I5(arb_sm_cs[1]),
        .O(\FSM_sequential_arb_sm_cs[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFEAAAAAAAEAAA)) 
    \FSM_sequential_arb_sm_cs[1]_i_2 
       (.I0(last_arb_won_i_2_n_0),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg ),
        .I2(s_axi_rready),
        .I3(arb_sm_cs[1]),
        .I4(arb_sm_cs[0]),
        .I5(AW2Arb_Active_Clr),
        .O(\FSM_sequential_arb_sm_cs[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "wr_data:01,idle:00,rd_data:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_arb_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_arb_sm_cs[0]_i_1_n_0 ),
        .Q(arb_sm_cs[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "wr_data:01,idle:00,rd_data:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_arb_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_arb_sm_cs[1]_i_1_n_0 ),
        .Q(arb_sm_cs[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_i_1 
       (.I0(Arb2AR_Active),
        .I1(s_axi_aresetn),
        .I2(s_axi_rready),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg ),
        .O(ar_active_reg_0));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    \GEN_NO_RD_CMD_OPT.brst_zero_i_2 
       (.I0(s_axi_arlen[3]),
        .I1(s_axi_arlen[2]),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arlen[0]),
        .I4(\GEN_NO_RD_CMD_OPT.brst_zero_reg ),
        .I5(ar_active_re),
        .O(s_axi_arlen_3_sn_1));
  LUT6 #(
    .INIT(64'hAAAAABBBAAAAA888)) 
    ar_active_i_1
       (.I0(last_arb_won_cmb),
        .I1(\FSM_sequential_arb_sm_cs[0]_i_2_n_0 ),
        .I2(s_axi_arvalid),
        .I3(ar_active_reg_1),
        .I4(ar_active_i_4_n_0),
        .I5(Arb2AR_Active),
        .O(ar_active_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h082A0A2A)) 
    ar_active_i_2
       (.I0(s_axi_arvalid),
        .I1(arb_sm_cs[0]),
        .I2(arb_sm_cs[1]),
        .I3(s_axi_awvalid),
        .I4(last_arb_won),
        .O(last_arb_won_cmb));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h01110000)) 
    ar_active_i_4
       (.I0(arb_sm_cs[1]),
        .I1(arb_sm_cs[0]),
        .I2(s_axi_awvalid),
        .I3(last_arb_won),
        .I4(s_axi_arvalid),
        .O(ar_active_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ar_active_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ar_active_i_1_n_0),
        .Q(Arb2AR_Active),
        .R(SR));
  LUT6 #(
    .INIT(64'h0A0ACFFF0A0A0000)) 
    aw_active_i_1
       (.I0(\FSM_sequential_arb_sm_cs_reg[0]_0 ),
        .I1(arb_sm_cs[1]),
        .I2(arb_sm_cs[0]),
        .I3(AW2Arb_Active_Clr),
        .I4(axi_awready_cmb),
        .I5(Arb2AW_Active),
        .O(aw_active_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    aw_active_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(aw_active_i_1_n_0),
        .Q(Arb2AW_Active),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000002A)) 
    axi_arready_int_i_1
       (.I0(s_axi_arvalid),
        .I1(last_arb_won),
        .I2(s_axi_awvalid),
        .I3(arb_sm_cs[0]),
        .I4(arb_sm_cs[1]),
        .I5(axi_arready_int_i_2_n_0),
        .O(axi_arready_cmb));
  LUT6 #(
    .INIT(64'h2222F22200000000)) 
    axi_arready_int_i_2
       (.I0(\FSM_sequential_arb_sm_cs[0]_i_2_n_0 ),
        .I1(s_axi_awvalid),
        .I2(AW2Arb_Active_Clr),
        .I3(arb_sm_cs[0]),
        .I4(arb_sm_cs[1]),
        .I5(s_axi_arvalid),
        .O(axi_arready_int_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_arready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_cmb),
        .Q(s_axi_arready),
        .R(SR));
  LUT6 #(
    .INIT(64'h080A000200020002)) 
    axi_awready_int_i_1
       (.I0(\FSM_sequential_arb_sm_cs_reg[0]_0 ),
        .I1(arb_sm_cs[1]),
        .I2(arb_sm_cs[0]),
        .I3(axi_awready_int_i_3_n_0),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg ),
        .I5(s_axi_rready),
        .O(axi_awready_cmb));
  LUT3 #(
    .INIT(8'h2A)) 
    axi_awready_int_i_3
       (.I0(s_axi_arvalid),
        .I1(last_arb_won),
        .I2(s_axi_awvalid),
        .O(axi_awready_int_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_awready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_cmb),
        .Q(s_axi_awready),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    \bram_we_a[0]_INST_0 
       (.I0(Arb2AW_Active),
        .I1(BRAM_WE_A_i),
        .O(bram_we_a));
  LUT6 #(
    .INIT(64'hAAABABABAAA8A8A8)) 
    last_arb_won_i_1
       (.I0(last_arb_won_cmb),
        .I1(last_arb_won_i_2_n_0),
        .I2(axi_arready_int_i_2_n_0),
        .I3(\FSM_sequential_arb_sm_cs_reg[0]_0 ),
        .I4(\FSM_sequential_arb_sm_cs[0]_i_2_n_0 ),
        .I5(last_arb_won),
        .O(last_arb_won_i_1_n_0));
  LUT6 #(
    .INIT(64'h1010111011101110)) 
    last_arb_won_i_2
       (.I0(arb_sm_cs[1]),
        .I1(arb_sm_cs[0]),
        .I2(\FSM_sequential_arb_sm_cs_reg[0]_0 ),
        .I3(s_axi_arvalid),
        .I4(last_arb_won),
        .I5(s_axi_awvalid),
        .O(last_arb_won_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    last_arb_won_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(last_arb_won_i_1_n_0),
        .Q(last_arb_won),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \save_init_bram_addr_ld[31]_i_1 
       (.I0(Arb2AW_Active),
        .I1(aw_active_d1),
        .O(aw_active_re));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \save_init_bram_addr_ld[31]_i_1__0 
       (.I0(Arb2AR_Active),
        .I1(ar_active_d1),
        .O(ar_active_re));
endmodule

module bd_bram_ecc_axi_bram_ctrl_1_0_wr_chnl
   (aw_active_d1,
    AW2Arb_Active_Clr,
    Wr_Sl_UE,
    Wr_Sl_CE,
    curr_fixed_burst_reg,
    BRAM_En_A_i,
    s_axi_wready,
    axi_bvalid_int_reg_0,
    Active_Wr,
    BRAM_WE_A_i,
    axi_wr_burst_reg_0,
    s_axi_awaddr_2_sp_1,
    D,
    s_axi_awaddr_3_sp_1,
    s_axi_awaddr_4_sp_1,
    s_axi_awaddr_5_sp_1,
    Q,
    axi_wr_burst_reg_1,
    curr_wrap_burst_reg_reg_0,
    \bvalid_cnt_reg[2]_0 ,
    s_axi_bid,
    s_axi_bresp,
    \GEN_ECC.WrData_reg[31]_0 ,
    bram_wrdata_a,
    SR,
    s_axi_aclk,
    s_axi_awid,
    bram_rddata_a,
    Arb2AW_Active,
    aw_active_re,
    s_axi_wdata,
    s_axi_awburst,
    s_axi_bready,
    s_axi_aresetn,
    arb_sm_cs,
    s_axi_awaddr,
    \save_init_bram_addr_ld_reg[31] ,
    Enable_ECC,
    s_axi_wvalid,
    \save_init_bram_addr_ld[31]_i_3 ,
    s_axi_awvalid,
    s_axi_awlen,
    s_axi_wlast,
    s_axi_wstrb);
  output aw_active_d1;
  output AW2Arb_Active_Clr;
  output Wr_Sl_UE;
  output Wr_Sl_CE;
  output curr_fixed_burst_reg;
  output BRAM_En_A_i;
  output s_axi_wready;
  output axi_bvalid_int_reg_0;
  output Active_Wr;
  output [0:0]BRAM_WE_A_i;
  output axi_wr_burst_reg_0;
  output s_axi_awaddr_2_sp_1;
  output [25:0]D;
  output s_axi_awaddr_3_sp_1;
  output s_axi_awaddr_4_sp_1;
  output s_axi_awaddr_5_sp_1;
  output [0:0]Q;
  output axi_wr_burst_reg_1;
  output curr_wrap_burst_reg_reg_0;
  output \bvalid_cnt_reg[2]_0 ;
  output [12:0]s_axi_bid;
  output [0:0]s_axi_bresp;
  output [31:0]\GEN_ECC.WrData_reg[31]_0 ;
  output [6:0]bram_wrdata_a;
  input [0:0]SR;
  input s_axi_aclk;
  input [12:0]s_axi_awid;
  input [38:0]bram_rddata_a;
  input Arb2AW_Active;
  input aw_active_re;
  input [31:0]s_axi_wdata;
  input [1:0]s_axi_awburst;
  input s_axi_bready;
  input s_axi_aresetn;
  input [1:0]arb_sm_cs;
  input [29:0]s_axi_awaddr;
  input \save_init_bram_addr_ld_reg[31] ;
  input Enable_ECC;
  input s_axi_wvalid;
  input [2:0]\save_init_bram_addr_ld[31]_i_3 ;
  input s_axi_awvalid;
  input [3:0]s_axi_awlen;
  input s_axi_wlast;
  input [3:0]s_axi_wstrb;

  wire AW2Arb_Active_Clr;
  wire [2:0]AW2Arb_BVALID_Cnt;
  wire AW2Arb_Busy;
  wire Active_Wr;
  wire Arb2AW_Active;
  wire BID_FIFO_n_0;
  wire BID_FIFO_n_10;
  wire BID_FIFO_n_11;
  wire BID_FIFO_n_12;
  wire BID_FIFO_n_13;
  wire BID_FIFO_n_14;
  wire BID_FIFO_n_2;
  wire BID_FIFO_n_3;
  wire BID_FIFO_n_4;
  wire BID_FIFO_n_5;
  wire BID_FIFO_n_6;
  wire BID_FIFO_n_7;
  wire BID_FIFO_n_8;
  wire BID_FIFO_n_9;
  wire BRAM_En_A_i;
  wire [0:0]BRAM_WE_A_i;
  wire [25:0]D;
  wire Enable_ECC;
  wire \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[1]_i_1_n_0 ;
  wire \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[2]_i_1_n_0 ;
  wire \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[4]_i_1_n_0 ;
  wire \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[0] ;
  wire \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[4] ;
  wire FaultInjectClr;
  wire \GEN_BRESP_ECC.UE_Q_reg ;
  wire \GEN_BRESP_ECC.UE_Q_reg_i_1_n_0 ;
  wire \GEN_BRESP_ECC.axi_bresp_int[1]_i_1_n_0 ;
  wire \GEN_ECC.AXI_WSTRB_Q_reg_n_0_[0] ;
  wire \GEN_ECC.CE_Q ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[0] ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[10] ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[11] ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[12] ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[13] ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[14] ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[15] ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[16] ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[17] ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[18] ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[19] ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[1] ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[20] ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[21] ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[22] ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[23] ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[24] ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[25] ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[26] ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[27] ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[28] ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[29] ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[2] ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[30] ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[31] ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[3] ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[4] ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[5] ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[6] ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[7] ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[8] ;
  wire \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[9] ;
  wire \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.CHK_HANDLER_RD_32_n_12 ;
  wire [0:1]\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_4_reg ;
  wire [0:5]\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg ;
  wire [0:5]\GEN_ECC.Syndrome ;
  wire [0:1]\GEN_ECC.Syndrome_4 ;
  wire [0:5]\GEN_ECC.Syndrome_6 ;
  wire [31:0]\GEN_ECC.WrData_reg[31]_0 ;
  wire [0:6]\GEN_ECC.syndrome_reg_i ;
  wire \GEN_WDATA_SM_ECC.active_wr_reg_i_1_n_0 ;
  wire \GEN_WDATA_SM_ECC.active_wr_reg_i_2_n_0 ;
  wire \GEN_WDATA_SM_ECC.axi_wdata_full_reg_i_2_n_0 ;
  wire \GEN_WDATA_SM_ECC.wr_busy_reg_i_1_n_0 ;
  wire \GEN_WR_ECC.bram_we_int[3]_i_1_n_0 ;
  wire I0;
  wire I1;
  wire [0:0]Q;
  wire RdModifyWr_Modify;
  wire S;
  wire [0:0]SR;
  wire S_0;
  wire S_1;
  wire S_10;
  wire S_11;
  wire S_12;
  wire S_13;
  wire S_14;
  wire S_15;
  wire S_16;
  wire S_17;
  wire S_18;
  wire S_19;
  wire S_2;
  wire S_20;
  wire S_21;
  wire S_22;
  wire S_23;
  wire S_24;
  wire S_25;
  wire S_26;
  wire S_27;
  wire S_28;
  wire S_29;
  wire S_3;
  wire S_30;
  wire S_4;
  wire S_5;
  wire S_6;
  wire S_7;
  wire S_8;
  wire S_9;
  wire UE_Q;
  wire [31:0]WrData_cmb;
  wire Wr_Sl_CE;
  wire Wr_Sl_UE;
  wire [1:0]arb_sm_cs;
  wire aw_active_d1;
  wire aw_active_re;
  wire axi_bvalid_int_i_1_n_0;
  wire axi_bvalid_int_i_2_n_0;
  wire axi_bvalid_int_reg_0;
  wire axi_wdata_full_cmb;
  wire axi_wdata_full_reg;
  wire axi_wr_burst;
  wire axi_wr_burst_i_1_n_0;
  wire axi_wr_burst_i_2_n_0;
  wire axi_wr_burst_reg_0;
  wire axi_wr_burst_reg_1;
  wire axi_wready_int_mod_i_1_n_0;
  wire bid_gets_fifo_load;
  wire bid_gets_fifo_load_d1;
  wire bid_gets_fifo_load_d1_i_3_n_0;
  wire bram_en_cmb;
  wire [38:0]bram_rddata_a;
  wire [6:0]bram_wrdata_a;
  wire \bvalid_cnt[0]_i_1_n_0 ;
  wire \bvalid_cnt[1]_i_1_n_0 ;
  wire \bvalid_cnt[2]_i_1_n_0 ;
  wire \bvalid_cnt_reg[2]_0 ;
  wire curr_fixed_burst;
  wire curr_fixed_burst_reg;
  wire curr_wrap_burst_reg;
  wire curr_wrap_burst_reg_i_1_n_0;
  wire curr_wrap_burst_reg_reg_0;
  wire p_0_in11_in;
  wire p_10_in;
  wire p_1_in;
  wire [31:0]p_4_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [29:0]s_axi_awaddr;
  wire s_axi_awaddr_2_sn_1;
  wire s_axi_awaddr_3_sn_1;
  wire s_axi_awaddr_4_sn_1;
  wire s_axi_awaddr_5_sn_1;
  wire [1:0]s_axi_awburst;
  wire [12:0]s_axi_awid;
  wire [3:0]s_axi_awlen;
  wire s_axi_awvalid;
  wire [12:0]s_axi_bid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [2:0]\save_init_bram_addr_ld[31]_i_3 ;
  wire \save_init_bram_addr_ld_reg[31] ;
  wire set_bram_we;
  wire set_bram_we_cmb;
  wire wrdata_reg_ld;

  assign s_axi_awaddr_2_sp_1 = s_axi_awaddr_2_sn_1;
  assign s_axi_awaddr_3_sp_1 = s_axi_awaddr_3_sn_1;
  assign s_axi_awaddr_4_sp_1 = s_axi_awaddr_4_sn_1;
  assign s_axi_awaddr_5_sp_1 = s_axi_awaddr_5_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_3 
       (.I0(axi_wr_burst),
        .I1(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[4] ),
        .O(axi_wr_burst_reg_1));
  bd_bram_ecc_axi_bram_ctrl_1_0_SRL_FIFO BID_FIFO
       (.AW2Arb_BVALID_Cnt(AW2Arb_BVALID_Cnt),
        .Arb2AW_Active(Arb2AW_Active),
        .D({BID_FIFO_n_2,BID_FIFO_n_3,BID_FIFO_n_4,BID_FIFO_n_5,BID_FIFO_n_6,BID_FIFO_n_7,BID_FIFO_n_8,BID_FIFO_n_9,BID_FIFO_n_10,BID_FIFO_n_11,BID_FIFO_n_12,BID_FIFO_n_13,BID_FIFO_n_14}),
        .Data_Exists_DFF_0(axi_bvalid_int_reg_0),
        .E(BID_FIFO_n_0),
        .\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[4] (AW2Arb_Active_Clr),
        .Q(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[4] ),
        .SR(SR),
        .aw_active_d1(aw_active_d1),
        .aw_active_re(aw_active_re),
        .axi_wr_burst(axi_wr_burst),
        .bid_gets_fifo_load(bid_gets_fifo_load),
        .bid_gets_fifo_load_d1(bid_gets_fifo_load_d1),
        .bid_gets_fifo_load_d1_reg(bid_gets_fifo_load_d1_i_3_n_0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_awid(s_axi_awid),
        .s_axi_bready(s_axi_bready));
  LUT6 #(
    .INIT(64'hF8F8F8FFF8F8F8F8)) 
    \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[1]_i_1 
       (.I0(axi_wr_burst),
        .I1(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[0] ),
        .I3(axi_wdata_full_reg),
        .I4(s_axi_wvalid),
        .I5(Q),
        .O(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[2]_i_1 
       (.I0(Q),
        .I1(s_axi_wvalid),
        .I2(axi_wdata_full_reg),
        .O(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[4]_i_1 
       (.I0(RdModifyWr_Modify),
        .I1(set_bram_we_cmb),
        .I2(Q),
        .I3(Arb2AW_Active),
        .I4(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[0] ),
        .I5(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[4] ),
        .O(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "rmw_mod_data:01000,rmw_wr_data:10000,rmw_chk_data:00100,rmw_rd_data:00010,idle:00001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[4]_i_1_n_0 ),
        .D(AW2Arb_Active_Clr),
        .Q(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "rmw_mod_data:01000,rmw_wr_data:10000,rmw_chk_data:00100,rmw_rd_data:00010,idle:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[4]_i_1_n_0 ),
        .D(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[1]_i_1_n_0 ),
        .Q(Q),
        .R(SR));
  (* FSM_ENCODED_STATES = "rmw_mod_data:01000,rmw_wr_data:10000,rmw_chk_data:00100,rmw_rd_data:00010,idle:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[4]_i_1_n_0 ),
        .D(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[2]_i_1_n_0 ),
        .Q(set_bram_we_cmb),
        .R(SR));
  (* FSM_ENCODED_STATES = "rmw_mod_data:01000,rmw_wr_data:10000,rmw_chk_data:00100,rmw_rd_data:00010,idle:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[3] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[4]_i_1_n_0 ),
        .D(set_bram_we_cmb),
        .Q(RdModifyWr_Modify),
        .R(SR));
  (* FSM_ENCODED_STATES = "rmw_mod_data:01000,rmw_wr_data:10000,rmw_chk_data:00100,rmw_rd_data:00010,idle:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg[4] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs[4]_i_1_n_0 ),
        .D(RdModifyWr_Modify),
        .Q(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[4] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000A8A8A8)) 
    \GEN_BRESP_ECC.UE_Q_reg_i_1 
       (.I0(s_axi_aresetn),
        .I1(\GEN_BRESP_ECC.UE_Q_reg ),
        .I2(Wr_Sl_UE),
        .I3(s_axi_bready),
        .I4(axi_bvalid_int_reg_0),
        .I5(aw_active_re),
        .O(\GEN_BRESP_ECC.UE_Q_reg_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_BRESP_ECC.UE_Q_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BRESP_ECC.UE_Q_reg_i_1_n_0 ),
        .Q(\GEN_BRESP_ECC.UE_Q_reg ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \GEN_BRESP_ECC.axi_bresp_int[1]_i_1 
       (.I0(\GEN_BRESP_ECC.UE_Q_reg ),
        .I1(Wr_Sl_UE),
        .I2(FaultInjectClr),
        .I3(s_axi_bresp),
        .O(\GEN_BRESP_ECC.axi_bresp_int[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_BRESP_ECC.axi_bresp_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BRESP_ECC.axi_bresp_int[1]_i_1_n_0 ),
        .Q(s_axi_bresp),
        .R(SR));
  LUT6 #(
    .INIT(64'h88880000FFF80000)) 
    \GEN_ECC.AXI_WSTRB_Q[3]_i_1 
       (.I0(axi_wr_burst),
        .I1(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[4] ),
        .I2(Q),
        .I3(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[0] ),
        .I4(s_axi_wvalid),
        .I5(axi_wdata_full_reg),
        .O(wrdata_reg_ld));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.AXI_WSTRB_Q_reg[0] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[0]),
        .Q(\GEN_ECC.AXI_WSTRB_Q_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.AXI_WSTRB_Q_reg[1] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[1]),
        .Q(p_1_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.AXI_WSTRB_Q_reg[2] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[2]),
        .Q(p_0_in11_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.AXI_WSTRB_Q_reg[3] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[3]),
        .Q(p_10_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.CE_Q_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_ECC.CE_Q ),
        .Q(Wr_Sl_CE),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[38]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[28]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[27]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[26]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[25]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[24]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[23]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[22]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[21]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[20]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[19]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[37]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[18]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[17]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[16]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[15]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[14]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[13]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[12]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[11]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[10]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[9]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[36]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[8]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[7]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[35]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[34]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[33]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[32]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[31]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[30]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_rddata_a[29]),
        .Q(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[9] ),
        .R(1'b0));
  bd_bram_ecc_axi_bram_ctrl_1_0_checkbit_handler__parameterized0 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.CHK_HANDLER_RD_32 
       (.D({\GEN_ECC.Syndrome [0],\GEN_ECC.Syndrome [1],\GEN_ECC.Syndrome [2],\GEN_ECC.Syndrome [3],\GEN_ECC.Syndrome [5]}),
        .\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_reg_reg[3] (\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.CHK_HANDLER_RD_32_n_12 ),
        .\GEN_ECC.syndrome_reg_i ({\GEN_ECC.syndrome_reg_i [0],\GEN_ECC.syndrome_reg_i [3],\GEN_ECC.syndrome_reg_i [6]}),
        .I0(I0),
        .I1(I1),
        .Q(RdModifyWr_Modify),
        .UE_Q(UE_Q),
        .\Using_LUT6.Single_LUT6.XOR6_LUT ({\GEN_ECC.Syndrome_6 [0],\GEN_ECC.Syndrome_6 [1],\GEN_ECC.Syndrome_6 [2],\GEN_ECC.Syndrome_6 [3],\GEN_ECC.Syndrome_6 [4],\GEN_ECC.Syndrome_6 [5]}),
        .\Using_LUT6.Use_MUXF8.MUXF8_LUT ({\GEN_ECC.Syndrome_4 [0],\GEN_ECC.Syndrome_4 [1]}),
        .bram_rddata_a(bram_rddata_a));
  bd_bram_ecc_axi_bram_ctrl_1_0_checkbit_handler \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.CHK_HANDLER_WR_32 
       (.Q(\GEN_ECC.WrData_reg[31]_0 ),
        .bram_wrdata_a(bram_wrdata_a));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[0].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[0] ),
        .D(WrData_cmb[31]),
        .\GEN_ECC.WrData_reg[31] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[31]_0 (p_10_in),
        .Q(\GEN_ECC.syndrome_reg_i [0]),
        .S(S_29),
        .p_4_in(p_4_in[31]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized9 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[10].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[10] ),
        .D(WrData_cmb[21]),
        .\GEN_ECC.WrData_reg[21] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[21]_0 (p_0_in11_in),
        .Q(\GEN_ECC.syndrome_reg_i [0]),
        .S(S_19),
        .p_4_in(p_4_in[21]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized10 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[11].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[11] ),
        .D(WrData_cmb[20]),
        .\GEN_ECC.WrData_reg[20] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[20]_0 (p_0_in11_in),
        .Q(\GEN_ECC.syndrome_reg_i [0]),
        .S(S_4),
        .p_4_in(p_4_in[20]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized11 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[12].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[12] ),
        .D(WrData_cmb[19]),
        .\GEN_ECC.WrData_reg[19] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[19]_0 (p_0_in11_in),
        .Q(\GEN_ECC.syndrome_reg_i [1]),
        .S(S_6),
        .p_4_in(p_4_in[19]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized12 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[13].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[13] ),
        .D(WrData_cmb[18]),
        .\GEN_ECC.WrData_reg[18] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[18]_0 (p_0_in11_in),
        .Q(\GEN_ECC.syndrome_reg_i [0]),
        .S(S_9),
        .p_4_in(p_4_in[18]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized13 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[14].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[14] ),
        .D(WrData_cmb[17]),
        .\GEN_ECC.WrData_reg[17] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[17]_0 (p_0_in11_in),
        .Q(\GEN_ECC.syndrome_reg_i [2]),
        .S(S_11),
        .p_4_in(p_4_in[17]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized14 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[15].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[15] ),
        .D(WrData_cmb[16]),
        .\GEN_ECC.WrData_reg[16] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[16]_0 (p_0_in11_in),
        .Q(\GEN_ECC.syndrome_reg_i [0]),
        .S(S_2),
        .p_4_in(p_4_in[16]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized15 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[16].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[16] ),
        .D(WrData_cmb[15]),
        .\GEN_ECC.WrData_reg[15] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[15]_0 (p_1_in),
        .Q(\GEN_ECC.syndrome_reg_i [1]),
        .S(S_27),
        .p_4_in(p_4_in[15]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized16 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[17].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[17] ),
        .D(WrData_cmb[14]),
        .\GEN_ECC.WrData_reg[14] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[14]_0 (p_1_in),
        .Q(\GEN_ECC.syndrome_reg_i [0]),
        .S(S_20),
        .p_4_in(p_4_in[14]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized17 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[18].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[18] ),
        .D(WrData_cmb[13]),
        .\GEN_ECC.WrData_reg[13] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[13]_0 (p_1_in),
        .Q(\GEN_ECC.syndrome_reg_i [3]),
        .S(S_7),
        .p_4_in(p_4_in[13]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized18 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[19].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[19] ),
        .D(WrData_cmb[12]),
        .\GEN_ECC.WrData_reg[12] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[12]_0 (p_1_in),
        .Q(\GEN_ECC.syndrome_reg_i [0]),
        .S(S_5),
        .p_4_in(p_4_in[12]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized0 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[1].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[1] ),
        .D(WrData_cmb[30]),
        .\GEN_ECC.WrData_reg[30] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[30]_0 (p_10_in),
        .Q(\GEN_ECC.syndrome_reg_i [0]),
        .S(S_23),
        .p_4_in(p_4_in[30]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized19 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[20].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[20] ),
        .D(WrData_cmb[11]),
        .\GEN_ECC.WrData_reg[11] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[11]_0 (p_1_in),
        .Q(\GEN_ECC.syndrome_reg_i [1]),
        .S(S_8),
        .p_4_in(p_4_in[11]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized20 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[21].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[21] ),
        .D(WrData_cmb[10]),
        .\GEN_ECC.WrData_reg[10] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[10]_0 (p_1_in),
        .Q(\GEN_ECC.syndrome_reg_i [0]),
        .S(S_25),
        .p_4_in(p_4_in[10]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized21 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[22].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[22] ),
        .D(WrData_cmb[9]),
        .\GEN_ECC.WrData_reg[9] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[9]_0 (p_1_in),
        .Q(\GEN_ECC.syndrome_reg_i [2]),
        .S(S_24),
        .p_4_in(p_4_in[9]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized22 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[23].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[23] ),
        .D(WrData_cmb[8]),
        .\GEN_ECC.WrData_reg[8] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[8]_0 (p_1_in),
        .Q(\GEN_ECC.syndrome_reg_i [0]),
        .S(S_10),
        .p_4_in(p_4_in[8]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized23 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[24].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[24] ),
        .D(WrData_cmb[7]),
        .\GEN_ECC.WrData_reg[7] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[7]_0 (\GEN_ECC.AXI_WSTRB_Q_reg_n_0_[0] ),
        .Q(\GEN_ECC.syndrome_reg_i [1]),
        .S(S_22),
        .p_4_in(p_4_in[7]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized24 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[25].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[25] ),
        .D(WrData_cmb[6]),
        .\GEN_ECC.WrData_reg[6] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[6]_0 (\GEN_ECC.AXI_WSTRB_Q_reg_n_0_[0] ),
        .Q(\GEN_ECC.syndrome_reg_i [0]),
        .S(S_21),
        .p_4_in(p_4_in[6]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized25 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[26].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[26] ),
        .D(WrData_cmb[5]),
        .\GEN_ECC.WrData_reg[5] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[5]_0 (\GEN_ECC.AXI_WSTRB_Q_reg_n_0_[0] ),
        .Q(\GEN_ECC.syndrome_reg_i [0]),
        .S(S_16),
        .p_4_in(p_4_in[5]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized26 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[27].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[27] ),
        .D(WrData_cmb[4]),
        .\GEN_ECC.WrData_reg[4] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[4]_0 (\GEN_ECC.AXI_WSTRB_Q_reg_n_0_[0] ),
        .Q(\GEN_ECC.syndrome_reg_i [1]),
        .S(S_14),
        .p_4_in(p_4_in[4]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized27 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[28].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[28] ),
        .D(WrData_cmb[3]),
        .\GEN_ECC.WrData_reg[3] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[3]_0 (\GEN_ECC.AXI_WSTRB_Q_reg_n_0_[0] ),
        .Q(\GEN_ECC.syndrome_reg_i [0]),
        .S(S_15),
        .p_4_in(p_4_in[3]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized28 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[29].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[29] ),
        .D(WrData_cmb[2]),
        .\GEN_ECC.WrData_reg[2] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[2]_0 (\GEN_ECC.AXI_WSTRB_Q_reg_n_0_[0] ),
        .Q(\GEN_ECC.syndrome_reg_i [2]),
        .S(S_12),
        .p_4_in(p_4_in[2]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized1 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[2].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[2] ),
        .D(WrData_cmb[29]),
        .\GEN_ECC.WrData_reg[29] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[29]_0 (p_10_in),
        .Q(\GEN_ECC.syndrome_reg_i [1]),
        .S(S_26),
        .p_4_in(p_4_in[29]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized29 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[30].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[30] ),
        .D(WrData_cmb[1]),
        .\GEN_ECC.WrData_reg[1] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[1]_0 (\GEN_ECC.AXI_WSTRB_Q_reg_n_0_[0] ),
        .Q(\GEN_ECC.syndrome_reg_i [0]),
        .S(S_17),
        .p_4_in(p_4_in[1]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized30 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[31].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[31] ),
        .D(WrData_cmb[0]),
        .\GEN_ECC.WrData_reg[0] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[0]_0 (\GEN_ECC.AXI_WSTRB_Q_reg_n_0_[0] ),
        .Q(\GEN_ECC.syndrome_reg_i [1]),
        .S(S_13),
        .p_4_in(p_4_in[0]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized2 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[3].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[3] ),
        .D(WrData_cmb[28]),
        .\GEN_ECC.WrData_reg[28] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[28]_0 (p_10_in),
        .Q(\GEN_ECC.syndrome_reg_i [0]),
        .S(S_30),
        .p_4_in(p_4_in[28]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized3 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[4].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[4] ),
        .D(WrData_cmb[27]),
        .\GEN_ECC.WrData_reg[27] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[27]_0 (p_10_in),
        .Q(\GEN_ECC.syndrome_reg_i [0]),
        .S(S_28),
        .p_4_in(p_4_in[27]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized4 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[5].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[5] ),
        .D(WrData_cmb[26]),
        .\GEN_ECC.WrData_reg[26] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[26]_0 (p_10_in),
        .Q(\GEN_ECC.syndrome_reg_i [1]),
        .S(S),
        .p_4_in(p_4_in[26]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized5 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[6].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[6] ),
        .D(WrData_cmb[25]),
        .\GEN_ECC.WrData_reg[25] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[25]_0 (p_10_in),
        .Q(\GEN_ECC.syndrome_reg_i [0]),
        .S(S_18),
        .p_4_in(p_4_in[25]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized6 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[7].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[7] ),
        .D(WrData_cmb[24]),
        .\GEN_ECC.WrData_reg[24] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[24]_0 (p_10_in),
        .Q(\GEN_ECC.syndrome_reg_i [2]),
        .S(S_0),
        .p_4_in(p_4_in[24]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized7 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[8].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[8] ),
        .D(WrData_cmb[23]),
        .\GEN_ECC.WrData_reg[23] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[23]_0 (p_0_in11_in),
        .Q(\GEN_ECC.syndrome_reg_i [0]),
        .S(S_3),
        .p_4_in(p_4_in[23]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Correct_One_Bit__parameterized8 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.GEN_CORR_32[9].CORR_ONE_BIT_32 
       (.Corr_XORCY_0(\GEN_ECC.GEN_ECC_32.UnCorrectedRdData_reg_n_0_[9] ),
        .D(WrData_cmb[22]),
        .\GEN_ECC.WrData_reg[22] (RdModifyWr_Modify),
        .\GEN_ECC.WrData_reg[22]_0 (p_0_in11_in),
        .Q(\GEN_ECC.syndrome_reg_i [1]),
        .S(S_1),
        .p_4_in(p_4_in[22]));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity__parameterized6 \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.PARITY_CHK4 
       (.Corr_MUXCY({\GEN_ECC.syndrome_reg_i [0],\GEN_ECC.syndrome_reg_i [1],\GEN_ECC.syndrome_reg_i [2],\GEN_ECC.syndrome_reg_i [3],\GEN_ECC.syndrome_reg_i [5],\GEN_ECC.syndrome_reg_i [6]}),
        .\Decode_Bits.Use_LUT6.UE_MUXF7 (\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.CHK_HANDLER_RD_32_n_12 ),
        .Enable_ECC(Enable_ECC),
        .\GEN_ECC.CE_Q (\GEN_ECC.CE_Q ),
        .\GEN_ECC.CE_Q_reg (RdModifyWr_Modify),
        .\GEN_ECC.syndrome_reg_i (\GEN_ECC.syndrome_reg_i [4]),
        .I0(I0),
        .I1(I1),
        .Q({\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_4_reg [0],\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_4_reg [1]}),
        .S(S_17),
        .S_0(S_16),
        .S_1(S_15),
        .S_10(S_6),
        .S_11(S_5),
        .S_12(S_4),
        .S_13(S_3),
        .S_14(S_2),
        .S_15(S_1),
        .S_16(S_0),
        .S_17(S),
        .S_2(S_14),
        .S_3(S_13),
        .S_4(S_12),
        .S_5(S_11),
        .S_6(S_10),
        .S_7(S_9),
        .S_8(S_8),
        .S_9(S_7));
  bd_bram_ecc_axi_bram_ctrl_1_0_Parity \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.PARITY_CHK6 
       (.\GEN_ECC.syndrome_reg_i ({\GEN_ECC.syndrome_reg_i [0],\GEN_ECC.syndrome_reg_i [1],\GEN_ECC.syndrome_reg_i [2],\GEN_ECC.syndrome_reg_i [3],\GEN_ECC.syndrome_reg_i [4],\GEN_ECC.syndrome_reg_i [5]}),
        .Q({\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg [0],\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg [1],\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg [2],\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg [3],\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg [4],\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg [5]}),
        .S(S_30),
        .S_0(S_29),
        .S_1(S_28),
        .S_10(S_19),
        .S_11(S_18),
        .S_2(S_27),
        .S_3(S_26),
        .S_4(S_25),
        .S_5(S_24),
        .S_6(S_23),
        .S_7(S_22),
        .S_8(S_21),
        .S_9(S_20),
        .\Using_LUT6.Single_LUT6.XOR6_LUT_0 (\GEN_ECC.syndrome_reg_i [6]));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_4_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_ECC.Syndrome_4 [0]),
        .Q(\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_4_reg [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_4_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_ECC.Syndrome_4 [1]),
        .Q(\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_4_reg [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_ECC.Syndrome_6 [0]),
        .Q(\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_ECC.Syndrome_6 [1]),
        .Q(\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_ECC.Syndrome_6 [2]),
        .Q(\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_ECC.Syndrome_6 [3]),
        .Q(\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_ECC.Syndrome_6 [4]),
        .Q(\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_ECC.Syndrome_6 [5]),
        .Q(\GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_6_reg [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_ECC.Syndrome [0]),
        .Q(\GEN_ECC.syndrome_reg_i [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_ECC.Syndrome [1]),
        .Q(\GEN_ECC.syndrome_reg_i [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_ECC.Syndrome [2]),
        .Q(\GEN_ECC.syndrome_reg_i [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_ECC.Syndrome [3]),
        .Q(\GEN_ECC.syndrome_reg_i [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.GEN_HAMMING_ECC.GEN_ECC_32.syndrome_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_ECC.Syndrome [5]),
        .Q(\GEN_ECC.syndrome_reg_i [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.UE_Q_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(UE_Q),
        .Q(Wr_Sl_UE),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[0]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[10]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[11]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[12]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[13]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[14]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[15]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[16]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[17]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[18]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[19]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[1]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[20]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[21]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[22]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[23]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[24]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[25]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[26]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[27]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[28]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[29]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[2]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[30]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[31]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[3]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[4]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[5]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[6]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[7]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[8]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.WrData_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(WrData_cmb[9]),
        .Q(\GEN_ECC.WrData_reg[31]_0 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ECC.bvalid_cnt_inc_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AW2Arb_Active_Clr),
        .Q(FaultInjectClr),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFEFEFEFFF202020)) 
    \GEN_WDATA_SM_ECC.active_wr_reg_i_1 
       (.I0(\GEN_WDATA_SM_ECC.active_wr_reg_i_2_n_0 ),
        .I1(axi_wr_burst),
        .I2(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[4] ),
        .I3(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[0] ),
        .I4(Arb2AW_Active),
        .I5(Active_Wr),
        .O(\GEN_WDATA_SM_ECC.active_wr_reg_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \GEN_WDATA_SM_ECC.active_wr_reg_i_2 
       (.I0(Q),
        .I1(set_bram_we_cmb),
        .I2(RdModifyWr_Modify),
        .O(\GEN_WDATA_SM_ECC.active_wr_reg_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_ECC.active_wr_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_WDATA_SM_ECC.active_wr_reg_i_1_n_0 ),
        .Q(Active_Wr),
        .R(SR));
  LUT6 #(
    .INIT(64'hF4F454F4F4F45454)) 
    \GEN_WDATA_SM_ECC.axi_wdata_full_reg_i_1 
       (.I0(\GEN_WDATA_SM_ECC.axi_wdata_full_reg_i_2_n_0 ),
        .I1(s_axi_wvalid),
        .I2(axi_wdata_full_reg),
        .I3(axi_wr_burst),
        .I4(set_bram_we_cmb),
        .I5(RdModifyWr_Modify),
        .O(axi_wdata_full_cmb));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h0111)) 
    \GEN_WDATA_SM_ECC.axi_wdata_full_reg_i_2 
       (.I0(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[0] ),
        .I1(Q),
        .I2(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[4] ),
        .I3(axi_wr_burst),
        .O(\GEN_WDATA_SM_ECC.axi_wdata_full_reg_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_ECC.axi_wdata_full_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wdata_full_cmb),
        .Q(axi_wdata_full_reg),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \GEN_WDATA_SM_ECC.bram_en_int_i_1 
       (.I0(RdModifyWr_Modify),
        .I1(Arb2AW_Active),
        .I2(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[0] ),
        .I3(axi_wr_burst),
        .I4(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[4] ),
        .O(bram_en_cmb));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_ECC.bram_en_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_en_cmb),
        .Q(BRAM_En_A_i),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_ECC.set_bram_we_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(set_bram_we_cmb),
        .Q(set_bram_we),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \GEN_WDATA_SM_ECC.wr_busy_reg_i_1 
       (.I0(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[4] ),
        .I1(axi_wr_burst),
        .I2(AW2Arb_Busy),
        .O(\GEN_WDATA_SM_ECC.wr_busy_reg_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_ECC.wr_busy_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_WDATA_SM_ECC.wr_busy_reg_i_1_n_0 ),
        .Q(AW2Arb_Busy),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[0].bram_wrdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[0]),
        .Q(p_4_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[10].bram_wrdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[10]),
        .Q(p_4_in[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[11].bram_wrdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[11]),
        .Q(p_4_in[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[12].bram_wrdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[12]),
        .Q(p_4_in[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[13].bram_wrdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[13]),
        .Q(p_4_in[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[14].bram_wrdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[14]),
        .Q(p_4_in[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[15].bram_wrdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[15]),
        .Q(p_4_in[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[16].bram_wrdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[16]),
        .Q(p_4_in[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[17].bram_wrdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[17]),
        .Q(p_4_in[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[18].bram_wrdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[18]),
        .Q(p_4_in[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[19].bram_wrdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[19]),
        .Q(p_4_in[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[1].bram_wrdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[1]),
        .Q(p_4_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[20].bram_wrdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[20]),
        .Q(p_4_in[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[21].bram_wrdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[21]),
        .Q(p_4_in[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[22].bram_wrdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[22]),
        .Q(p_4_in[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[23].bram_wrdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[23]),
        .Q(p_4_in[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[24].bram_wrdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[24]),
        .Q(p_4_in[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[25].bram_wrdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[25]),
        .Q(p_4_in[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[26].bram_wrdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[26]),
        .Q(p_4_in[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[27].bram_wrdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[27]),
        .Q(p_4_in[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[28].bram_wrdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[28]),
        .Q(p_4_in[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[29].bram_wrdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[29]),
        .Q(p_4_in[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[2].bram_wrdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[2]),
        .Q(p_4_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[30].bram_wrdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[30]),
        .Q(p_4_in[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[31].bram_wrdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[31]),
        .Q(p_4_in[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[3].bram_wrdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[3]),
        .Q(p_4_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[4].bram_wrdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[4]),
        .Q(p_4_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[5].bram_wrdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[5]),
        .Q(p_4_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[6].bram_wrdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[6]),
        .Q(p_4_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[7].bram_wrdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[7]),
        .Q(p_4_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[8].bram_wrdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[8]),
        .Q(p_4_in[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[9].bram_wrdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[9]),
        .Q(p_4_in[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0707070000000000)) 
    \GEN_WR_ECC.bram_we_int[3]_i_1 
       (.I0(Arb2AW_Active),
        .I1(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[0] ),
        .I2(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[4] ),
        .I3(set_bram_we),
        .I4(BRAM_WE_A_i),
        .I5(s_axi_aresetn),
        .O(\GEN_WR_ECC.bram_we_int[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_ECC.bram_we_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_WR_ECC.bram_we_int[3]_i_1_n_0 ),
        .Q(BRAM_WE_A_i),
        .R(1'b0));
  bd_bram_ecc_axi_bram_ctrl_1_0_wrap_brst I_WRAP_BRST
       (.Arb2AW_Active(Arb2AW_Active),
        .D(D),
        .SR(SR),
        .aw_active_d1(aw_active_d1),
        .aw_active_re(aw_active_re),
        .curr_wrap_burst_reg(curr_wrap_burst_reg),
        .curr_wrap_burst_reg_reg(curr_wrap_burst_reg_reg_0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awaddr_2_sp_1(s_axi_awaddr_2_sn_1),
        .s_axi_awaddr_3_sp_1(s_axi_awaddr_3_sn_1),
        .s_axi_awaddr_4_sp_1(s_axi_awaddr_4_sn_1),
        .s_axi_awaddr_5_sp_1(s_axi_awaddr_5_sn_1),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awvalid(s_axi_awvalid),
        .\save_init_bram_addr_ld[31]_i_3_0 (\save_init_bram_addr_ld[31]_i_3 ),
        .\save_init_bram_addr_ld_reg[31]_0 (\save_init_bram_addr_ld_reg[31] ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    ar_active_i_3
       (.I0(axi_wr_burst),
        .I1(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[4] ),
        .I2(arb_sm_cs[0]),
        .I3(arb_sm_cs[1]),
        .O(axi_wr_burst_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    aw_active_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Arb2AW_Active),
        .Q(aw_active_d1),
        .R(SR));
  LUT5 #(
    .INIT(32'h00007F00)) 
    axi_awready_int_i_2
       (.I0(AW2Arb_BVALID_Cnt[2]),
        .I1(AW2Arb_BVALID_Cnt[1]),
        .I2(AW2Arb_BVALID_Cnt[0]),
        .I3(s_axi_awvalid),
        .I4(AW2Arb_Busy),
        .O(\bvalid_cnt_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_0),
        .D(BID_FIFO_n_14),
        .Q(s_axi_bid[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_0),
        .D(BID_FIFO_n_4),
        .Q(s_axi_bid[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_0),
        .D(BID_FIFO_n_3),
        .Q(s_axi_bid[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_0),
        .D(BID_FIFO_n_2),
        .Q(s_axi_bid[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_0),
        .D(BID_FIFO_n_13),
        .Q(s_axi_bid[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_0),
        .D(BID_FIFO_n_12),
        .Q(s_axi_bid[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_0),
        .D(BID_FIFO_n_11),
        .Q(s_axi_bid[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_0),
        .D(BID_FIFO_n_10),
        .Q(s_axi_bid[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_0),
        .D(BID_FIFO_n_9),
        .Q(s_axi_bid[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_0),
        .D(BID_FIFO_n_8),
        .Q(s_axi_bid[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_0),
        .D(BID_FIFO_n_7),
        .Q(s_axi_bid[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_0),
        .D(BID_FIFO_n_6),
        .Q(s_axi_bid[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_0),
        .D(BID_FIFO_n_5),
        .Q(s_axi_bid[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA08)) 
    axi_bvalid_int_i_1
       (.I0(s_axi_aresetn),
        .I1(AW2Arb_BVALID_Cnt[0]),
        .I2(axi_bvalid_int_i_2_n_0),
        .I3(AW2Arb_BVALID_Cnt[2]),
        .I4(AW2Arb_BVALID_Cnt[1]),
        .I5(AW2Arb_Active_Clr),
        .O(axi_bvalid_int_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h8)) 
    axi_bvalid_int_i_2
       (.I0(s_axi_bready),
        .I1(axi_bvalid_int_reg_0),
        .O(axi_bvalid_int_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_bvalid_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_int_i_1_n_0),
        .Q(axi_bvalid_int_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5511FF11FD01FF00)) 
    axi_wr_burst_i_1
       (.I0(s_axi_wlast),
        .I1(axi_wr_burst_i_2_n_0),
        .I2(axi_wdata_full_reg),
        .I3(axi_wr_burst),
        .I4(s_axi_wvalid),
        .I5(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[4] ),
        .O(axi_wr_burst_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h1)) 
    axi_wr_burst_i_2
       (.I0(Q),
        .I1(\FSM_onehot_GEN_WDATA_SM_ECC.wr_data_ecc_sm_cs_reg_n_0_[0] ),
        .O(axi_wr_burst_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wr_burst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wr_burst_i_1_n_0),
        .Q(axi_wr_burst),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    axi_wready_int_mod_i_1
       (.I0(s_axi_aresetn),
        .I1(axi_wdata_full_cmb),
        .O(axi_wready_int_mod_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wready_int_mod_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_int_mod_i_1_n_0),
        .Q(s_axi_wready),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    bid_gets_fifo_load_d1_i_3
       (.I0(AW2Arb_BVALID_Cnt[1]),
        .I1(AW2Arb_BVALID_Cnt[2]),
        .I2(s_axi_bready),
        .I3(axi_bvalid_int_reg_0),
        .I4(AW2Arb_BVALID_Cnt[0]),
        .O(bid_gets_fifo_load_d1_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bid_gets_fifo_load_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bid_gets_fifo_load),
        .Q(bid_gets_fifo_load_d1),
        .R(SR));
  LUT6 #(
    .INIT(64'h88887777777F8880)) 
    \bvalid_cnt[0]_i_1 
       (.I0(axi_bvalid_int_reg_0),
        .I1(s_axi_bready),
        .I2(AW2Arb_BVALID_Cnt[2]),
        .I3(AW2Arb_BVALID_Cnt[1]),
        .I4(AW2Arb_Active_Clr),
        .I5(AW2Arb_BVALID_Cnt[0]),
        .O(\bvalid_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCC9866CC66CC66CC)) 
    \bvalid_cnt[1]_i_1 
       (.I0(AW2Arb_Active_Clr),
        .I1(AW2Arb_BVALID_Cnt[1]),
        .I2(AW2Arb_BVALID_Cnt[2]),
        .I3(AW2Arb_BVALID_Cnt[0]),
        .I4(s_axi_bready),
        .I5(axi_bvalid_int_reg_0),
        .O(\bvalid_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0E078F078F078F0)) 
    \bvalid_cnt[2]_i_1 
       (.I0(AW2Arb_Active_Clr),
        .I1(AW2Arb_BVALID_Cnt[1]),
        .I2(AW2Arb_BVALID_Cnt[2]),
        .I3(AW2Arb_BVALID_Cnt[0]),
        .I4(s_axi_bready),
        .I5(axi_bvalid_int_reg_0),
        .O(\bvalid_cnt[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bvalid_cnt[0]_i_1_n_0 ),
        .Q(AW2Arb_BVALID_Cnt[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bvalid_cnt[1]_i_1_n_0 ),
        .Q(AW2Arb_BVALID_Cnt[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bvalid_cnt[2]_i_1_n_0 ),
        .Q(AW2Arb_BVALID_Cnt[2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h1)) 
    curr_fixed_burst_reg_i_1
       (.I0(s_axi_awburst[0]),
        .I1(s_axi_awburst[1]),
        .O(curr_fixed_burst));
  FDRE #(
    .INIT(1'b0)) 
    curr_fixed_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(curr_fixed_burst),
        .Q(curr_fixed_burst_reg),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h2)) 
    curr_wrap_burst_reg_i_1
       (.I0(s_axi_awburst[1]),
        .I1(s_axi_awburst[0]),
        .O(curr_wrap_burst_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    curr_wrap_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(curr_wrap_burst_reg_i_1_n_0),
        .Q(curr_wrap_burst_reg),
        .R(SR));
endmodule

module bd_bram_ecc_axi_bram_ctrl_1_0_wrap_brst
   (s_axi_awaddr_2_sp_1,
    s_axi_awaddr_3_sp_1,
    s_axi_awaddr_4_sp_1,
    s_axi_awaddr_5_sp_1,
    D,
    curr_wrap_burst_reg_reg,
    s_axi_awaddr,
    aw_active_d1,
    Arb2AW_Active,
    \save_init_bram_addr_ld_reg[31]_0 ,
    curr_wrap_burst_reg,
    \save_init_bram_addr_ld[31]_i_3_0 ,
    s_axi_awlen,
    s_axi_awvalid,
    SR,
    aw_active_re,
    s_axi_aclk);
  output s_axi_awaddr_2_sp_1;
  output s_axi_awaddr_3_sp_1;
  output s_axi_awaddr_4_sp_1;
  output s_axi_awaddr_5_sp_1;
  output [25:0]D;
  output curr_wrap_burst_reg_reg;
  input [29:0]s_axi_awaddr;
  input aw_active_d1;
  input Arb2AW_Active;
  input \save_init_bram_addr_ld_reg[31]_0 ;
  input curr_wrap_burst_reg;
  input [2:0]\save_init_bram_addr_ld[31]_i_3_0 ;
  input [3:0]s_axi_awlen;
  input s_axi_awvalid;
  input [0:0]SR;
  input aw_active_re;
  input s_axi_aclk;

  wire Arb2AW_Active;
  wire [25:0]D;
  wire [0:0]SR;
  wire [3:1]WrChnl_BRAM_Addr_Ld;
  wire aw_active_d1;
  wire aw_active_re;
  wire curr_wrap_burst_reg;
  wire curr_wrap_burst_reg_reg;
  wire [29:1]data0;
  wire s_axi_aclk;
  wire [29:0]s_axi_awaddr;
  wire s_axi_awaddr_2_sn_1;
  wire s_axi_awaddr_3_sn_1;
  wire s_axi_awaddr_4_sn_1;
  wire s_axi_awaddr_5_sn_1;
  wire [3:0]s_axi_awlen;
  wire s_axi_awvalid;
  wire [2:0]\save_init_bram_addr_ld[31]_i_3_0 ;
  wire \save_init_bram_addr_ld[31]_i_3_n_0 ;
  wire \save_init_bram_addr_ld[31]_i_4_n_0 ;
  wire \save_init_bram_addr_ld[31]_i_5_n_0 ;
  wire \save_init_bram_addr_ld_reg[31]_0 ;
  wire [2:0]wrap_burst_total;
  wire \wrap_burst_total[0]_i_1__0_n_0 ;
  wire \wrap_burst_total[1]_i_1__0_n_0 ;
  wire \wrap_burst_total[2]_i_1_n_0 ;

  assign s_axi_awaddr_2_sp_1 = s_axi_awaddr_2_sn_1;
  assign s_axi_awaddr_3_sp_1 = s_axi_awaddr_3_sn_1;
  assign s_axi_awaddr_4_sp_1 = s_axi_awaddr_4_sn_1;
  assign s_axi_awaddr_5_sp_1 = s_axi_awaddr_5_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ADDR_SNG_PORT.bram_addr_int[2]_i_2 
       (.I0(s_axi_awaddr[0]),
        .I1(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .O(s_axi_awaddr_2_sn_1));
  LUT6 #(
    .INIT(64'h88888888888A8888)) 
    \ADDR_SNG_PORT.bram_addr_int[31]_i_6 
       (.I0(curr_wrap_burst_reg),
        .I1(\save_init_bram_addr_ld[31]_i_5_n_0 ),
        .I2(\save_init_bram_addr_ld_reg[31]_0 ),
        .I3(wrap_burst_total[0]),
        .I4(wrap_burst_total[2]),
        .I5(wrap_burst_total[1]),
        .O(curr_wrap_burst_reg_reg));
  LUT6 #(
    .INIT(64'h4477477777774477)) 
    \ADDR_SNG_PORT.bram_addr_int[3]_i_2 
       (.I0(s_axi_awaddr[1]),
        .I1(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I2(wrap_burst_total[0]),
        .I3(data0[1]),
        .I4(wrap_burst_total[1]),
        .I5(wrap_burst_total[2]),
        .O(s_axi_awaddr_3_sn_1));
  LUT6 #(
    .INIT(64'h4474474477777777)) 
    \ADDR_SNG_PORT.bram_addr_int[4]_i_3 
       (.I0(s_axi_awaddr[2]),
        .I1(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I2(wrap_burst_total[0]),
        .I3(wrap_burst_total[2]),
        .I4(wrap_burst_total[1]),
        .I5(data0[2]),
        .O(s_axi_awaddr_4_sn_1));
  LUT6 #(
    .INIT(64'h4444474477777777)) 
    \ADDR_SNG_PORT.bram_addr_int[5]_i_3 
       (.I0(s_axi_awaddr[3]),
        .I1(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I2(wrap_burst_total[0]),
        .I3(wrap_burst_total[2]),
        .I4(wrap_burst_total[1]),
        .I5(data0[3]),
        .O(s_axi_awaddr_5_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[10]_i_1 
       (.I0(s_axi_awaddr[8]),
        .I1(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I2(data0[8]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[11]_i_1 
       (.I0(s_axi_awaddr[9]),
        .I1(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I2(data0[9]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[12]_i_1 
       (.I0(s_axi_awaddr[10]),
        .I1(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I2(data0[10]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[13]_i_1 
       (.I0(s_axi_awaddr[11]),
        .I1(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I2(data0[11]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[14]_i_1 
       (.I0(s_axi_awaddr[12]),
        .I1(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I2(data0[12]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[15]_i_1 
       (.I0(s_axi_awaddr[13]),
        .I1(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I2(data0[13]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[16]_i_1 
       (.I0(s_axi_awaddr[14]),
        .I1(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I2(data0[14]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[17]_i_1 
       (.I0(s_axi_awaddr[15]),
        .I1(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I2(data0[15]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[18]_i_1 
       (.I0(s_axi_awaddr[16]),
        .I1(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I2(data0[16]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[19]_i_1 
       (.I0(s_axi_awaddr[17]),
        .I1(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I2(data0[17]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[20]_i_1 
       (.I0(s_axi_awaddr[18]),
        .I1(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I2(data0[18]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[21]_i_1 
       (.I0(s_axi_awaddr[19]),
        .I1(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I2(data0[19]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[22]_i_1 
       (.I0(s_axi_awaddr[20]),
        .I1(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I2(data0[20]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[23]_i_1 
       (.I0(s_axi_awaddr[21]),
        .I1(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I2(data0[21]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[24]_i_1 
       (.I0(s_axi_awaddr[22]),
        .I1(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I2(data0[22]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[25]_i_1 
       (.I0(s_axi_awaddr[23]),
        .I1(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I2(data0[23]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[26]_i_1 
       (.I0(s_axi_awaddr[24]),
        .I1(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I2(data0[24]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[27]_i_1 
       (.I0(s_axi_awaddr[25]),
        .I1(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I2(data0[25]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[28]_i_1 
       (.I0(s_axi_awaddr[26]),
        .I1(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I2(data0[26]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[29]_i_1 
       (.I0(s_axi_awaddr[27]),
        .I1(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I2(data0[27]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[30]_i_1 
       (.I0(s_axi_awaddr[28]),
        .I1(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I2(data0[28]),
        .O(D[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[31]_i_2 
       (.I0(s_axi_awaddr[29]),
        .I1(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I2(data0[29]),
        .O(D[25]));
  LUT6 #(
    .INIT(64'h4444FF4FFFFFFFFF)) 
    \save_init_bram_addr_ld[31]_i_3 
       (.I0(aw_active_d1),
        .I1(Arb2AW_Active),
        .I2(\save_init_bram_addr_ld[31]_i_4_n_0 ),
        .I3(\save_init_bram_addr_ld_reg[31]_0 ),
        .I4(\save_init_bram_addr_ld[31]_i_5_n_0 ),
        .I5(curr_wrap_burst_reg),
        .O(\save_init_bram_addr_ld[31]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \save_init_bram_addr_ld[31]_i_4 
       (.I0(wrap_burst_total[1]),
        .I1(wrap_burst_total[2]),
        .I2(wrap_burst_total[0]),
        .O(\save_init_bram_addr_ld[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000008FA00000)) 
    \save_init_bram_addr_ld[31]_i_5 
       (.I0(\save_init_bram_addr_ld[31]_i_3_0 [1]),
        .I1(\save_init_bram_addr_ld[31]_i_3_0 [2]),
        .I2(wrap_burst_total[1]),
        .I3(wrap_burst_total[0]),
        .I4(\save_init_bram_addr_ld[31]_i_3_0 [0]),
        .I5(wrap_burst_total[2]),
        .O(\save_init_bram_addr_ld[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB0900000B090)) 
    \save_init_bram_addr_ld[3]_i_1 
       (.I0(wrap_burst_total[2]),
        .I1(wrap_burst_total[1]),
        .I2(data0[1]),
        .I3(wrap_burst_total[0]),
        .I4(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I5(s_axi_awaddr[1]),
        .O(WrChnl_BRAM_Addr_Ld[1]));
  LUT6 #(
    .INIT(64'hFFFFA28A0000A28A)) 
    \save_init_bram_addr_ld[4]_i_1 
       (.I0(data0[2]),
        .I1(wrap_burst_total[1]),
        .I2(wrap_burst_total[2]),
        .I3(wrap_burst_total[0]),
        .I4(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I5(s_axi_awaddr[2]),
        .O(WrChnl_BRAM_Addr_Ld[2]));
  LUT6 #(
    .INIT(64'hFFFFAA8A0000AA8A)) 
    \save_init_bram_addr_ld[5]_i_1 
       (.I0(data0[3]),
        .I1(wrap_burst_total[1]),
        .I2(wrap_burst_total[2]),
        .I3(wrap_burst_total[0]),
        .I4(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I5(s_axi_awaddr[3]),
        .O(WrChnl_BRAM_Addr_Ld[3]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[6]_i_1 
       (.I0(s_axi_awaddr[4]),
        .I1(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I2(data0[4]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[7]_i_1 
       (.I0(s_axi_awaddr[5]),
        .I1(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I2(data0[5]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[8]_i_1 
       (.I0(s_axi_awaddr[6]),
        .I1(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I2(data0[6]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[9]_i_1 
       (.I0(s_axi_awaddr[7]),
        .I1(\save_init_bram_addr_ld[31]_i_3_n_0 ),
        .I2(data0[7]),
        .O(D[3]));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[10] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[4]),
        .Q(data0[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[11] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[5]),
        .Q(data0[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[12] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[6]),
        .Q(data0[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[13] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[7]),
        .Q(data0[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[14] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[8]),
        .Q(data0[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[15] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[9]),
        .Q(data0[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[16] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[10]),
        .Q(data0[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[17] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[11]),
        .Q(data0[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[18] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[12]),
        .Q(data0[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[19] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[13]),
        .Q(data0[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[20] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[14]),
        .Q(data0[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[21] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[15]),
        .Q(data0[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[22] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[16]),
        .Q(data0[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[23] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[17]),
        .Q(data0[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[24] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[18]),
        .Q(data0[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[25] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[19]),
        .Q(data0[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[26] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[20]),
        .Q(data0[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[27] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[21]),
        .Q(data0[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[28] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[22]),
        .Q(data0[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[29] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[23]),
        .Q(data0[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[30] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[24]),
        .Q(data0[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[31] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[25]),
        .Q(data0[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[3] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(WrChnl_BRAM_Addr_Ld[1]),
        .Q(data0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[4] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(WrChnl_BRAM_Addr_Ld[2]),
        .Q(data0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[5] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(WrChnl_BRAM_Addr_Ld[3]),
        .Q(data0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[6] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[0]),
        .Q(data0[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[7] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[1]),
        .Q(data0[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[8] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[2]),
        .Q(data0[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[9] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[3]),
        .Q(data0[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h00900000)) 
    \wrap_burst_total[0]_i_1__0 
       (.I0(s_axi_awlen[1]),
        .I1(s_axi_awlen[2]),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[3]),
        .I4(s_axi_awlen[0]),
        .O(\wrap_burst_total[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \wrap_burst_total[1]_i_1__0 
       (.I0(s_axi_awlen[1]),
        .I1(s_axi_awvalid),
        .I2(s_axi_awlen[0]),
        .I3(s_axi_awlen[3]),
        .O(\wrap_burst_total[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \wrap_burst_total[2]_i_1 
       (.I0(s_axi_awlen[1]),
        .I1(s_axi_awlen[0]),
        .I2(s_axi_awlen[3]),
        .I3(s_axi_awvalid),
        .I4(s_axi_awlen[2]),
        .O(\wrap_burst_total[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[0] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(\wrap_burst_total[0]_i_1__0_n_0 ),
        .Q(wrap_burst_total[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[1] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(\wrap_burst_total[1]_i_1__0_n_0 ),
        .Q(wrap_burst_total[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[2] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(\wrap_burst_total[2]_i_1_n_0 ),
        .Q(wrap_burst_total[2]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "wrap_brst" *) 
module bd_bram_ecc_axi_bram_ctrl_1_0_wrap_brst_62
   (D,
    \ADDR_SNG_PORT.bram_addr_int_reg[2] ,
    E,
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ,
    SR,
    axi_rd_burst,
    \ADDR_SNG_PORT.bram_addr_int[11]_i_4_0 ,
    Q,
    s_axi_araddr,
    Arb2AR_Active,
    \ADDR_SNG_PORT.bram_addr_int_reg[2]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[11] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[3] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[4] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[5] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[31] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[7] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[8] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[9] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[10] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ,
    curr_fixed_burst_reg,
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ,
    curr_fixed_burst_reg_0,
    curr_wrap_burst_reg,
    \ADDR_SNG_PORT.bram_addr_int_reg[31]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[31]_1 ,
    s_axi_aresetn,
    s_axi_rready,
    \ADDR_SNG_PORT.bram_addr_int[11]_i_4_1 ,
    brst_zero,
    end_brst_rd,
    s_axi_arlen,
    ar_active_re,
    s_axi_aclk);
  output [29:0]D;
  output \ADDR_SNG_PORT.bram_addr_int_reg[2] ;
  output [1:0]E;
  output \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ;
  output [0:0]SR;
  input axi_rd_burst;
  input \ADDR_SNG_PORT.bram_addr_int[11]_i_4_0 ;
  input [3:0]Q;
  input [29:0]s_axi_araddr;
  input Arb2AR_Active;
  input \ADDR_SNG_PORT.bram_addr_int_reg[2]_0 ;
  input [9:0]\ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[3] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[5] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ;
  input [25:0]\ADDR_SNG_PORT.bram_addr_int_reg[31] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[7] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[8] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[9] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[10] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ;
  input curr_fixed_burst_reg;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ;
  input curr_fixed_burst_reg_0;
  input curr_wrap_burst_reg;
  input \ADDR_SNG_PORT.bram_addr_int_reg[31]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[31]_1 ;
  input s_axi_aresetn;
  input s_axi_rready;
  input \ADDR_SNG_PORT.bram_addr_int[11]_i_4_1 ;
  input brst_zero;
  input end_brst_rd;
  input [3:0]s_axi_arlen;
  input ar_active_re;
  input s_axi_aclk;

  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_4_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_4_1 ;
  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_6_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_7_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_8_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_9_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[31]_i_3_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[31]_i_7_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[4]_i_4_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[4]_i_5_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[10] ;
  wire [9:0]\ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[2] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[2]_0 ;
  wire [25:0]\ADDR_SNG_PORT.bram_addr_int_reg[31] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[31]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[31]_1 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[3] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[5] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[7] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[8] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[9] ;
  wire Arb2AR_Active;
  wire [29:0]D;
  wire [1:0]E;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ;
  wire [3:0]Q;
  wire [29:1]RdChnl_BRAM_Addr_Ld;
  wire [0:0]SR;
  wire ar_active_re;
  wire axi_rd_burst;
  wire brst_zero;
  wire curr_fixed_burst_reg;
  wire curr_fixed_burst_reg_0;
  wire curr_wrap_burst_reg;
  wire end_brst_rd;
  wire s_axi_aclk;
  wire [29:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire [3:0]s_axi_arlen;
  wire s_axi_rready;
  wire \save_init_bram_addr_ld[11]_i_2_n_0 ;
  wire \save_init_bram_addr_ld[3]_i_2_n_0 ;
  wire \save_init_bram_addr_ld[5]_i_2_n_0 ;
  wire \save_init_bram_addr_ld_reg_n_0_[10] ;
  wire \save_init_bram_addr_ld_reg_n_0_[11] ;
  wire \save_init_bram_addr_ld_reg_n_0_[12] ;
  wire \save_init_bram_addr_ld_reg_n_0_[13] ;
  wire \save_init_bram_addr_ld_reg_n_0_[14] ;
  wire \save_init_bram_addr_ld_reg_n_0_[15] ;
  wire \save_init_bram_addr_ld_reg_n_0_[16] ;
  wire \save_init_bram_addr_ld_reg_n_0_[17] ;
  wire \save_init_bram_addr_ld_reg_n_0_[18] ;
  wire \save_init_bram_addr_ld_reg_n_0_[19] ;
  wire \save_init_bram_addr_ld_reg_n_0_[20] ;
  wire \save_init_bram_addr_ld_reg_n_0_[21] ;
  wire \save_init_bram_addr_ld_reg_n_0_[22] ;
  wire \save_init_bram_addr_ld_reg_n_0_[23] ;
  wire \save_init_bram_addr_ld_reg_n_0_[24] ;
  wire \save_init_bram_addr_ld_reg_n_0_[25] ;
  wire \save_init_bram_addr_ld_reg_n_0_[26] ;
  wire \save_init_bram_addr_ld_reg_n_0_[27] ;
  wire \save_init_bram_addr_ld_reg_n_0_[28] ;
  wire \save_init_bram_addr_ld_reg_n_0_[29] ;
  wire \save_init_bram_addr_ld_reg_n_0_[30] ;
  wire \save_init_bram_addr_ld_reg_n_0_[31] ;
  wire \save_init_bram_addr_ld_reg_n_0_[3] ;
  wire \save_init_bram_addr_ld_reg_n_0_[4] ;
  wire \save_init_bram_addr_ld_reg_n_0_[5] ;
  wire \save_init_bram_addr_ld_reg_n_0_[6] ;
  wire \save_init_bram_addr_ld_reg_n_0_[7] ;
  wire \save_init_bram_addr_ld_reg_n_0_[8] ;
  wire \save_init_bram_addr_ld_reg_n_0_[9] ;
  wire \wrap_burst_total[0]_i_1_n_0 ;
  wire \wrap_burst_total[1]_i_1_n_0 ;
  wire \wrap_burst_total[2]_i_1__0_n_0 ;
  wire \wrap_burst_total_reg_n_0_[0] ;
  wire \wrap_burst_total_reg_n_0_[1] ;
  wire \wrap_burst_total_reg_n_0_[2] ;

  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \ADDR_SNG_PORT.bram_addr_int[10]_i_1 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[11] [8]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int[31]_i_3_n_0 ),
        .I3(RdChnl_BRAM_Addr_Ld[8]),
        .I4(Arb2AR_Active),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[31] [4]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h04F40404FFFFFFFF)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_1 
       (.I0(curr_fixed_burst_reg),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ),
        .I2(Arb2AR_Active),
        .I3(curr_fixed_burst_reg_0),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ),
        .I5(\ADDR_SNG_PORT.bram_addr_int[31]_i_3_n_0 ),
        .O(E[0]));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_2 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[11] [9]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ),
        .I2(\ADDR_SNG_PORT.bram_addr_int[31]_i_3_n_0 ),
        .I3(RdChnl_BRAM_Addr_Ld[9]),
        .I4(Arb2AR_Active),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[31] [5]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h2222323200000200)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_4 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[11]_i_6_n_0 ),
        .I1(\ADDR_SNG_PORT.bram_addr_int[11]_i_7_n_0 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\ADDR_SNG_PORT.bram_addr_int[11]_i_8_n_0 ),
        .I5(\ADDR_SNG_PORT.bram_addr_int[11]_i_9_n_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h0EFF)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_6 
       (.I0(axi_rd_burst),
        .I1(\ADDR_SNG_PORT.bram_addr_int[11]_i_4_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_7 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_8 
       (.I0(s_axi_rready),
        .I1(\ADDR_SNG_PORT.bram_addr_int[11]_i_4_1 ),
        .I2(brst_zero),
        .I3(end_brst_rd),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hAABA)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_9 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\ADDR_SNG_PORT.bram_addr_int[11]_i_4_0 ),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ADDR_SNG_PORT.bram_addr_int[12]_i_1 
       (.I0(s_axi_araddr[10]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[12] ),
        .I3(Arb2AR_Active),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[31] [6]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ADDR_SNG_PORT.bram_addr_int[13]_i_1 
       (.I0(s_axi_araddr[11]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[13] ),
        .I3(Arb2AR_Active),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[31] [7]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ADDR_SNG_PORT.bram_addr_int[14]_i_1 
       (.I0(s_axi_araddr[12]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[14] ),
        .I3(Arb2AR_Active),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[31] [8]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ADDR_SNG_PORT.bram_addr_int[15]_i_1 
       (.I0(s_axi_araddr[13]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[15] ),
        .I3(Arb2AR_Active),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[31] [9]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ADDR_SNG_PORT.bram_addr_int[16]_i_1 
       (.I0(s_axi_araddr[14]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[16] ),
        .I3(Arb2AR_Active),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[31] [10]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ADDR_SNG_PORT.bram_addr_int[17]_i_1 
       (.I0(s_axi_araddr[15]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[17] ),
        .I3(Arb2AR_Active),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[31] [11]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ADDR_SNG_PORT.bram_addr_int[18]_i_1 
       (.I0(s_axi_araddr[16]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[18] ),
        .I3(Arb2AR_Active),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[31] [12]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ADDR_SNG_PORT.bram_addr_int[19]_i_1 
       (.I0(s_axi_araddr[17]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[19] ),
        .I3(Arb2AR_Active),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[31] [13]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ADDR_SNG_PORT.bram_addr_int[20]_i_1 
       (.I0(s_axi_araddr[18]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[20] ),
        .I3(Arb2AR_Active),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[31] [14]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ADDR_SNG_PORT.bram_addr_int[21]_i_1 
       (.I0(s_axi_araddr[19]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[21] ),
        .I3(Arb2AR_Active),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[31] [15]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ADDR_SNG_PORT.bram_addr_int[22]_i_1 
       (.I0(s_axi_araddr[20]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[22] ),
        .I3(Arb2AR_Active),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[31] [16]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ADDR_SNG_PORT.bram_addr_int[23]_i_1 
       (.I0(s_axi_araddr[21]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[23] ),
        .I3(Arb2AR_Active),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[31] [17]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ADDR_SNG_PORT.bram_addr_int[24]_i_1 
       (.I0(s_axi_araddr[22]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[24] ),
        .I3(Arb2AR_Active),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[31] [18]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ADDR_SNG_PORT.bram_addr_int[25]_i_1 
       (.I0(s_axi_araddr[23]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[25] ),
        .I3(Arb2AR_Active),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[31] [19]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ADDR_SNG_PORT.bram_addr_int[26]_i_1 
       (.I0(s_axi_araddr[24]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[26] ),
        .I3(Arb2AR_Active),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[31] [20]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ADDR_SNG_PORT.bram_addr_int[27]_i_1 
       (.I0(s_axi_araddr[25]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[27] ),
        .I3(Arb2AR_Active),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[31] [21]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ADDR_SNG_PORT.bram_addr_int[28]_i_1 
       (.I0(s_axi_araddr[26]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[28] ),
        .I3(Arb2AR_Active),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[31] [22]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ADDR_SNG_PORT.bram_addr_int[29]_i_1 
       (.I0(s_axi_araddr[27]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[29] ),
        .I3(Arb2AR_Active),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[31] [23]),
        .O(D[27]));
  LUT6 #(
    .INIT(64'h00008F80FFFF8F80)) 
    \ADDR_SNG_PORT.bram_addr_int[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(Arb2AR_Active),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg[2]_0 ),
        .I4(\ADDR_SNG_PORT.bram_addr_int[31]_i_3_n_0 ),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[11] [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ADDR_SNG_PORT.bram_addr_int[30]_i_1 
       (.I0(s_axi_araddr[28]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[30] ),
        .I3(Arb2AR_Active),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[31] [24]),
        .O(D[28]));
  LUT1 #(
    .INIT(2'h1)) 
    \ADDR_SNG_PORT.bram_addr_int[31]_i_1 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[31]_i_3_n_0 ),
        .O(E[1]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ADDR_SNG_PORT.bram_addr_int[31]_i_2 
       (.I0(s_axi_araddr[29]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[31] ),
        .I3(Arb2AR_Active),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[31] [25]),
        .O(D[29]));
  LUT6 #(
    .INIT(64'h0000007F007F007F)) 
    \ADDR_SNG_PORT.bram_addr_int[31]_i_3 
       (.I0(\save_init_bram_addr_ld[11]_i_2_n_0 ),
        .I1(curr_wrap_burst_reg),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg[31]_0 ),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[31]_1 ),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ),
        .O(\ADDR_SNG_PORT.bram_addr_int[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF7F777F7)) 
    \ADDR_SNG_PORT.bram_addr_int[31]_i_4 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ),
        .I1(curr_wrap_burst_reg),
        .I2(\ADDR_SNG_PORT.bram_addr_int[31]_i_7_n_0 ),
        .I3(\save_init_bram_addr_ld[5]_i_2_n_0 ),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[2] ),
        .O(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFBFFFBFEFBFFFBF)) 
    \ADDR_SNG_PORT.bram_addr_int[31]_i_7 
       (.I0(\wrap_burst_total_reg_n_0_[2] ),
        .I1(\wrap_burst_total_reg_n_0_[0] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[11] [0]),
        .I3(\wrap_burst_total_reg_n_0_[1] ),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[11] [1]),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[11] [2]),
        .O(\ADDR_SNG_PORT.bram_addr_int[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6F6F606F6060606F)) 
    \ADDR_SNG_PORT.bram_addr_int[3]_i_1 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[11] [0]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[11] [1]),
        .I2(\ADDR_SNG_PORT.bram_addr_int[31]_i_3_n_0 ),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg[3] ),
        .I4(Arb2AR_Active),
        .I5(RdChnl_BRAM_Addr_Ld[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h6060606F6F6F606F)) 
    \ADDR_SNG_PORT.bram_addr_int[4]_i_1 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[11] [2]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[4] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int[31]_i_3_n_0 ),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ),
        .I4(Arb2AR_Active),
        .I5(\ADDR_SNG_PORT.bram_addr_int[4]_i_4_n_0 ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hD5551555)) 
    \ADDR_SNG_PORT.bram_addr_int[4]_i_4 
       (.I0(s_axi_araddr[2]),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ),
        .I2(curr_wrap_burst_reg),
        .I3(\save_init_bram_addr_ld[11]_i_2_n_0 ),
        .I4(\ADDR_SNG_PORT.bram_addr_int[4]_i_5_n_0 ),
        .O(\ADDR_SNG_PORT.bram_addr_int[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h18FF)) 
    \ADDR_SNG_PORT.bram_addr_int[4]_i_5 
       (.I0(\wrap_burst_total_reg_n_0_[0] ),
        .I1(\wrap_burst_total_reg_n_0_[1] ),
        .I2(\wrap_burst_total_reg_n_0_[2] ),
        .I3(\save_init_bram_addr_ld_reg_n_0_[4] ),
        .O(\ADDR_SNG_PORT.bram_addr_int[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9F9F909F9090909F)) 
    \ADDR_SNG_PORT.bram_addr_int[5]_i_1 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[11] [3]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[5] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int[31]_i_3_n_0 ),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ),
        .I4(Arb2AR_Active),
        .I5(RdChnl_BRAM_Addr_Ld[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h9F909F9F9F909090)) 
    \ADDR_SNG_PORT.bram_addr_int[6]_i_1 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[11] [4]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[2] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int[31]_i_3_n_0 ),
        .I3(RdChnl_BRAM_Addr_Ld[4]),
        .I4(Arb2AR_Active),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[31] [0]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \ADDR_SNG_PORT.bram_addr_int[6]_i_2 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[11] [0]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[11] [1]),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[11] [2]),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg[11] [3]),
        .O(\ADDR_SNG_PORT.bram_addr_int_reg[2] ));
  LUT6 #(
    .INIT(64'h9F909F9F9F909090)) 
    \ADDR_SNG_PORT.bram_addr_int[7]_i_1 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[11] [5]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[7] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int[31]_i_3_n_0 ),
        .I3(RdChnl_BRAM_Addr_Ld[5]),
        .I4(Arb2AR_Active),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[31] [1]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h9F909F9F9F909090)) 
    \ADDR_SNG_PORT.bram_addr_int[8]_i_1 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[8] ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[11] [6]),
        .I2(\ADDR_SNG_PORT.bram_addr_int[31]_i_3_n_0 ),
        .I3(RdChnl_BRAM_Addr_Ld[6]),
        .I4(Arb2AR_Active),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[31] [2]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \ADDR_SNG_PORT.bram_addr_int[9]_i_1 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[11] [7]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[9] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int[31]_i_3_n_0 ),
        .I3(RdChnl_BRAM_Addr_Ld[7]),
        .I4(Arb2AR_Active),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[31] [3]),
        .O(D[7]));
  LUT1 #(
    .INIT(2'h1)) 
    bram_rst_a_INST_0
       (.I0(s_axi_aresetn),
        .O(SR));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \save_init_bram_addr_ld[10]_i_1__0 
       (.I0(s_axi_araddr[8]),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ),
        .I2(curr_wrap_burst_reg),
        .I3(\save_init_bram_addr_ld[11]_i_2_n_0 ),
        .I4(\save_init_bram_addr_ld_reg_n_0_[10] ),
        .O(RdChnl_BRAM_Addr_Ld[8]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \save_init_bram_addr_ld[11]_i_1__0 
       (.I0(s_axi_araddr[9]),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ),
        .I2(curr_wrap_burst_reg),
        .I3(\save_init_bram_addr_ld[11]_i_2_n_0 ),
        .I4(\save_init_bram_addr_ld_reg_n_0_[11] ),
        .O(RdChnl_BRAM_Addr_Ld[9]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h0010FFFF)) 
    \save_init_bram_addr_ld[11]_i_2 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[2] ),
        .I1(\wrap_burst_total_reg_n_0_[0] ),
        .I2(\wrap_burst_total_reg_n_0_[2] ),
        .I3(\wrap_burst_total_reg_n_0_[1] ),
        .I4(\ADDR_SNG_PORT.bram_addr_int[31]_i_7_n_0 ),
        .O(\save_init_bram_addr_ld[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[12]_i_1__0 
       (.I0(s_axi_araddr[10]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[12] ),
        .O(RdChnl_BRAM_Addr_Ld[10]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[13]_i_1__0 
       (.I0(s_axi_araddr[11]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[13] ),
        .O(RdChnl_BRAM_Addr_Ld[11]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[14]_i_1__0 
       (.I0(s_axi_araddr[12]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[14] ),
        .O(RdChnl_BRAM_Addr_Ld[12]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[15]_i_1__0 
       (.I0(s_axi_araddr[13]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[15] ),
        .O(RdChnl_BRAM_Addr_Ld[13]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[16]_i_1__0 
       (.I0(s_axi_araddr[14]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[16] ),
        .O(RdChnl_BRAM_Addr_Ld[14]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[17]_i_1__0 
       (.I0(s_axi_araddr[15]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[17] ),
        .O(RdChnl_BRAM_Addr_Ld[15]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[18]_i_1__0 
       (.I0(s_axi_araddr[16]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[18] ),
        .O(RdChnl_BRAM_Addr_Ld[16]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[19]_i_1__0 
       (.I0(s_axi_araddr[17]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[19] ),
        .O(RdChnl_BRAM_Addr_Ld[17]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[20]_i_1__0 
       (.I0(s_axi_araddr[18]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[20] ),
        .O(RdChnl_BRAM_Addr_Ld[18]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[21]_i_1__0 
       (.I0(s_axi_araddr[19]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[21] ),
        .O(RdChnl_BRAM_Addr_Ld[19]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[22]_i_1__0 
       (.I0(s_axi_araddr[20]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[22] ),
        .O(RdChnl_BRAM_Addr_Ld[20]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[23]_i_1__0 
       (.I0(s_axi_araddr[21]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[23] ),
        .O(RdChnl_BRAM_Addr_Ld[21]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[24]_i_1__0 
       (.I0(s_axi_araddr[22]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[24] ),
        .O(RdChnl_BRAM_Addr_Ld[22]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[25]_i_1__0 
       (.I0(s_axi_araddr[23]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[25] ),
        .O(RdChnl_BRAM_Addr_Ld[23]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[26]_i_1__0 
       (.I0(s_axi_araddr[24]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[26] ),
        .O(RdChnl_BRAM_Addr_Ld[24]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[27]_i_1__0 
       (.I0(s_axi_araddr[25]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[27] ),
        .O(RdChnl_BRAM_Addr_Ld[25]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[28]_i_1__0 
       (.I0(s_axi_araddr[26]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[28] ),
        .O(RdChnl_BRAM_Addr_Ld[26]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[29]_i_1__0 
       (.I0(s_axi_araddr[27]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[29] ),
        .O(RdChnl_BRAM_Addr_Ld[27]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[30]_i_1__0 
       (.I0(s_axi_araddr[28]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[30] ),
        .O(RdChnl_BRAM_Addr_Ld[28]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[31]_i_2__0 
       (.I0(s_axi_araddr[29]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[31] ),
        .O(RdChnl_BRAM_Addr_Ld[29]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \save_init_bram_addr_ld[3]_i_1__0 
       (.I0(s_axi_araddr[1]),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ),
        .I2(curr_wrap_burst_reg),
        .I3(\save_init_bram_addr_ld[11]_i_2_n_0 ),
        .I4(\save_init_bram_addr_ld[3]_i_2_n_0 ),
        .O(RdChnl_BRAM_Addr_Ld[1]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hCB00)) 
    \save_init_bram_addr_ld[3]_i_2 
       (.I0(\wrap_burst_total_reg_n_0_[0] ),
        .I1(\wrap_burst_total_reg_n_0_[2] ),
        .I2(\wrap_burst_total_reg_n_0_[1] ),
        .I3(\save_init_bram_addr_ld_reg_n_0_[3] ),
        .O(\save_init_bram_addr_ld[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8AA200008AA2)) 
    \save_init_bram_addr_ld[4]_i_1__0 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[4] ),
        .I1(\wrap_burst_total_reg_n_0_[2] ),
        .I2(\wrap_burst_total_reg_n_0_[1] ),
        .I3(\wrap_burst_total_reg_n_0_[0] ),
        .I4(\ADDR_SNG_PORT.bram_addr_int[31]_i_4_n_0 ),
        .I5(s_axi_araddr[2]),
        .O(RdChnl_BRAM_Addr_Ld[2]));
  LUT6 #(
    .INIT(64'h2AAA2AAAEAAA2AAA)) 
    \save_init_bram_addr_ld[5]_i_1__0 
       (.I0(s_axi_araddr[3]),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ),
        .I2(curr_wrap_burst_reg),
        .I3(\save_init_bram_addr_ld[11]_i_2_n_0 ),
        .I4(\save_init_bram_addr_ld_reg_n_0_[5] ),
        .I5(\save_init_bram_addr_ld[5]_i_2_n_0 ),
        .O(RdChnl_BRAM_Addr_Ld[3]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \save_init_bram_addr_ld[5]_i_2 
       (.I0(\wrap_burst_total_reg_n_0_[0] ),
        .I1(\wrap_burst_total_reg_n_0_[2] ),
        .I2(\wrap_burst_total_reg_n_0_[1] ),
        .O(\save_init_bram_addr_ld[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \save_init_bram_addr_ld[6]_i_1__0 
       (.I0(s_axi_araddr[4]),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ),
        .I2(curr_wrap_burst_reg),
        .I3(\save_init_bram_addr_ld[11]_i_2_n_0 ),
        .I4(\save_init_bram_addr_ld_reg_n_0_[6] ),
        .O(RdChnl_BRAM_Addr_Ld[4]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \save_init_bram_addr_ld[7]_i_1__0 
       (.I0(s_axi_araddr[5]),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ),
        .I2(curr_wrap_burst_reg),
        .I3(\save_init_bram_addr_ld[11]_i_2_n_0 ),
        .I4(\save_init_bram_addr_ld_reg_n_0_[7] ),
        .O(RdChnl_BRAM_Addr_Ld[5]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \save_init_bram_addr_ld[8]_i_1__0 
       (.I0(s_axi_araddr[6]),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ),
        .I2(curr_wrap_burst_reg),
        .I3(\save_init_bram_addr_ld[11]_i_2_n_0 ),
        .I4(\save_init_bram_addr_ld_reg_n_0_[8] ),
        .O(RdChnl_BRAM_Addr_Ld[6]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \save_init_bram_addr_ld[9]_i_1__0 
       (.I0(s_axi_araddr[7]),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ),
        .I2(curr_wrap_burst_reg),
        .I3(\save_init_bram_addr_ld[11]_i_2_n_0 ),
        .I4(\save_init_bram_addr_ld_reg_n_0_[9] ),
        .O(RdChnl_BRAM_Addr_Ld[7]));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[10] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[8]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[11] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[9]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[12] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[10]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[13] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[11]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[14] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[12]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[15] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[13]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[16] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[14]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[17] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[15]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[18] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[16]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[19] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[17]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[20] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[18]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[21] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[19]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[22] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[20]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[23] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[21]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[24] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[22]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[24] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[25] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[23]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[26] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[24]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[27] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[25]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[28] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[26]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[28] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[29] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[27]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[29] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[30] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[28]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[30] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[31] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[29]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[31] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[3] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[1]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[4] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[2]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[5] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[3]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[6] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[4]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[7] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[5]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[8] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[6]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[9] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[7]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[9] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h4004)) 
    \wrap_burst_total[0]_i_1 
       (.I0(s_axi_arlen[3]),
        .I1(s_axi_arlen[0]),
        .I2(s_axi_arlen[2]),
        .I3(s_axi_arlen[1]),
        .O(\wrap_burst_total[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \wrap_burst_total[1]_i_1 
       (.I0(s_axi_arlen[1]),
        .I1(s_axi_arlen[3]),
        .I2(s_axi_arlen[0]),
        .O(\wrap_burst_total[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \wrap_burst_total[2]_i_1__0 
       (.I0(s_axi_arlen[2]),
        .I1(s_axi_arlen[1]),
        .I2(s_axi_arlen[3]),
        .I3(s_axi_arlen[0]),
        .O(\wrap_burst_total[2]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[0] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(\wrap_burst_total[0]_i_1_n_0 ),
        .Q(\wrap_burst_total_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[1] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(\wrap_burst_total[1]_i_1_n_0 ),
        .Q(\wrap_burst_total_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[2] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(\wrap_burst_total[2]_i_1__0_n_0 ),
        .Q(\wrap_burst_total_reg_n_0_[2] ),
        .R(SR));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
