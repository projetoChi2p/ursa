// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon May 12 14:36:17 2025
// Host        : ulisses-thinkpad running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top bd_hybrid_tmr_ecc_tmr_voter_0_1 -prefix
//               bd_hybrid_tmr_ecc_tmr_voter_0_1_ bd_ocm_tmr_tmr_voter_0_0_sim_netlist.v
// Design      : bd_ocm_tmr_tmr_voter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_hybrid_tmr_ecc_tmr_voter_0_1_Voter
   (S_AXI_RVALID,
    S_AXI_RRESP,
    S_AXI_RDATA,
    S_AXI_ARREADY,
    S_AXI_BVALID,
    S_AXI_BRESP,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    M_AXI1_RVALID,
    M_AXI3_RVALID,
    M_AXI2_RVALID,
    M_AXI1_RRESP,
    M_AXI3_RRESP,
    M_AXI2_RRESP,
    M_AXI1_RDATA,
    M_AXI3_RDATA,
    M_AXI2_RDATA,
    M_AXI1_ARREADY,
    M_AXI3_ARREADY,
    M_AXI2_ARREADY,
    M_AXI1_BVALID,
    M_AXI3_BVALID,
    M_AXI2_BVALID,
    M_AXI1_BRESP,
    M_AXI3_BRESP,
    M_AXI2_BRESP,
    M_AXI1_WREADY,
    M_AXI3_WREADY,
    M_AXI2_WREADY,
    M_AXI1_AWREADY,
    M_AXI3_AWREADY,
    M_AXI2_AWREADY);
  output S_AXI_RVALID;
  output [1:0]S_AXI_RRESP;
  output [31:0]S_AXI_RDATA;
  output S_AXI_ARREADY;
  output S_AXI_BVALID;
  output [1:0]S_AXI_BRESP;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  input M_AXI1_RVALID;
  input M_AXI3_RVALID;
  input M_AXI2_RVALID;
  input [1:0]M_AXI1_RRESP;
  input [1:0]M_AXI3_RRESP;
  input [1:0]M_AXI2_RRESP;
  input [31:0]M_AXI1_RDATA;
  input [31:0]M_AXI3_RDATA;
  input [31:0]M_AXI2_RDATA;
  input M_AXI1_ARREADY;
  input M_AXI3_ARREADY;
  input M_AXI2_ARREADY;
  input M_AXI1_BVALID;
  input M_AXI3_BVALID;
  input M_AXI2_BVALID;
  input [1:0]M_AXI1_BRESP;
  input [1:0]M_AXI3_BRESP;
  input [1:0]M_AXI2_BRESP;
  input M_AXI1_WREADY;
  input M_AXI3_WREADY;
  input M_AXI2_WREADY;
  input M_AXI1_AWREADY;
  input M_AXI3_AWREADY;
  input M_AXI2_AWREADY;

  wire M_AXI1_ARREADY;
  wire M_AXI1_AWREADY;
  wire [1:0]M_AXI1_BRESP;
  wire M_AXI1_BVALID;
  wire [31:0]M_AXI1_RDATA;
  wire [1:0]M_AXI1_RRESP;
  wire M_AXI1_RVALID;
  wire M_AXI1_WREADY;
  wire M_AXI2_ARREADY;
  wire M_AXI2_AWREADY;
  wire [1:0]M_AXI2_BRESP;
  wire M_AXI2_BVALID;
  wire [31:0]M_AXI2_RDATA;
  wire [1:0]M_AXI2_RRESP;
  wire M_AXI2_RVALID;
  wire M_AXI2_WREADY;
  wire M_AXI3_ARREADY;
  wire M_AXI3_AWREADY;
  wire [1:0]M_AXI3_BRESP;
  wire M_AXI3_BVALID;
  wire [31:0]M_AXI3_RDATA;
  wire [1:0]M_AXI3_RRESP;
  wire M_AXI3_RVALID;
  wire M_AXI3_WREADY;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire [1:0]S_AXI_BRESP;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire [1:0]S_AXI_RRESP;
  wire S_AXI_RVALID;
  wire S_AXI_WREADY;

  LUT3 #(
    .INIT(8'hE8)) 
    S_AXI_ARREADY_INST_0
       (.I0(M_AXI1_ARREADY),
        .I1(M_AXI3_ARREADY),
        .I2(M_AXI2_ARREADY),
        .O(S_AXI_ARREADY));
  LUT3 #(
    .INIT(8'hE8)) 
    S_AXI_AWREADY_INST_0
       (.I0(M_AXI1_AWREADY),
        .I1(M_AXI3_AWREADY),
        .I2(M_AXI2_AWREADY),
        .O(S_AXI_AWREADY));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_BRESP[0]_INST_0 
       (.I0(M_AXI1_BRESP[0]),
        .I1(M_AXI3_BRESP[0]),
        .I2(M_AXI2_BRESP[0]),
        .O(S_AXI_BRESP[0]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_BRESP[1]_INST_0 
       (.I0(M_AXI1_BRESP[1]),
        .I1(M_AXI3_BRESP[1]),
        .I2(M_AXI2_BRESP[1]),
        .O(S_AXI_BRESP[1]));
  LUT3 #(
    .INIT(8'hE8)) 
    S_AXI_BVALID_INST_0
       (.I0(M_AXI1_BVALID),
        .I1(M_AXI3_BVALID),
        .I2(M_AXI2_BVALID),
        .O(S_AXI_BVALID));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[0]_INST_0 
       (.I0(M_AXI1_RDATA[0]),
        .I1(M_AXI3_RDATA[0]),
        .I2(M_AXI2_RDATA[0]),
        .O(S_AXI_RDATA[0]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[10]_INST_0 
       (.I0(M_AXI1_RDATA[10]),
        .I1(M_AXI3_RDATA[10]),
        .I2(M_AXI2_RDATA[10]),
        .O(S_AXI_RDATA[10]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[11]_INST_0 
       (.I0(M_AXI1_RDATA[11]),
        .I1(M_AXI3_RDATA[11]),
        .I2(M_AXI2_RDATA[11]),
        .O(S_AXI_RDATA[11]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[12]_INST_0 
       (.I0(M_AXI1_RDATA[12]),
        .I1(M_AXI3_RDATA[12]),
        .I2(M_AXI2_RDATA[12]),
        .O(S_AXI_RDATA[12]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[13]_INST_0 
       (.I0(M_AXI1_RDATA[13]),
        .I1(M_AXI3_RDATA[13]),
        .I2(M_AXI2_RDATA[13]),
        .O(S_AXI_RDATA[13]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[14]_INST_0 
       (.I0(M_AXI1_RDATA[14]),
        .I1(M_AXI3_RDATA[14]),
        .I2(M_AXI2_RDATA[14]),
        .O(S_AXI_RDATA[14]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[15]_INST_0 
       (.I0(M_AXI1_RDATA[15]),
        .I1(M_AXI3_RDATA[15]),
        .I2(M_AXI2_RDATA[15]),
        .O(S_AXI_RDATA[15]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[16]_INST_0 
       (.I0(M_AXI1_RDATA[16]),
        .I1(M_AXI3_RDATA[16]),
        .I2(M_AXI2_RDATA[16]),
        .O(S_AXI_RDATA[16]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[17]_INST_0 
       (.I0(M_AXI1_RDATA[17]),
        .I1(M_AXI3_RDATA[17]),
        .I2(M_AXI2_RDATA[17]),
        .O(S_AXI_RDATA[17]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[18]_INST_0 
       (.I0(M_AXI1_RDATA[18]),
        .I1(M_AXI3_RDATA[18]),
        .I2(M_AXI2_RDATA[18]),
        .O(S_AXI_RDATA[18]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[19]_INST_0 
       (.I0(M_AXI1_RDATA[19]),
        .I1(M_AXI3_RDATA[19]),
        .I2(M_AXI2_RDATA[19]),
        .O(S_AXI_RDATA[19]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[1]_INST_0 
       (.I0(M_AXI1_RDATA[1]),
        .I1(M_AXI3_RDATA[1]),
        .I2(M_AXI2_RDATA[1]),
        .O(S_AXI_RDATA[1]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[20]_INST_0 
       (.I0(M_AXI1_RDATA[20]),
        .I1(M_AXI3_RDATA[20]),
        .I2(M_AXI2_RDATA[20]),
        .O(S_AXI_RDATA[20]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[21]_INST_0 
       (.I0(M_AXI1_RDATA[21]),
        .I1(M_AXI3_RDATA[21]),
        .I2(M_AXI2_RDATA[21]),
        .O(S_AXI_RDATA[21]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[22]_INST_0 
       (.I0(M_AXI1_RDATA[22]),
        .I1(M_AXI3_RDATA[22]),
        .I2(M_AXI2_RDATA[22]),
        .O(S_AXI_RDATA[22]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[23]_INST_0 
       (.I0(M_AXI1_RDATA[23]),
        .I1(M_AXI3_RDATA[23]),
        .I2(M_AXI2_RDATA[23]),
        .O(S_AXI_RDATA[23]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[24]_INST_0 
       (.I0(M_AXI1_RDATA[24]),
        .I1(M_AXI3_RDATA[24]),
        .I2(M_AXI2_RDATA[24]),
        .O(S_AXI_RDATA[24]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[25]_INST_0 
       (.I0(M_AXI1_RDATA[25]),
        .I1(M_AXI3_RDATA[25]),
        .I2(M_AXI2_RDATA[25]),
        .O(S_AXI_RDATA[25]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[26]_INST_0 
       (.I0(M_AXI1_RDATA[26]),
        .I1(M_AXI3_RDATA[26]),
        .I2(M_AXI2_RDATA[26]),
        .O(S_AXI_RDATA[26]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[27]_INST_0 
       (.I0(M_AXI1_RDATA[27]),
        .I1(M_AXI3_RDATA[27]),
        .I2(M_AXI2_RDATA[27]),
        .O(S_AXI_RDATA[27]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[28]_INST_0 
       (.I0(M_AXI1_RDATA[28]),
        .I1(M_AXI3_RDATA[28]),
        .I2(M_AXI2_RDATA[28]),
        .O(S_AXI_RDATA[28]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[29]_INST_0 
       (.I0(M_AXI1_RDATA[29]),
        .I1(M_AXI3_RDATA[29]),
        .I2(M_AXI2_RDATA[29]),
        .O(S_AXI_RDATA[29]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[2]_INST_0 
       (.I0(M_AXI1_RDATA[2]),
        .I1(M_AXI3_RDATA[2]),
        .I2(M_AXI2_RDATA[2]),
        .O(S_AXI_RDATA[2]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[30]_INST_0 
       (.I0(M_AXI1_RDATA[30]),
        .I1(M_AXI3_RDATA[30]),
        .I2(M_AXI2_RDATA[30]),
        .O(S_AXI_RDATA[30]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[31]_INST_0 
       (.I0(M_AXI1_RDATA[31]),
        .I1(M_AXI3_RDATA[31]),
        .I2(M_AXI2_RDATA[31]),
        .O(S_AXI_RDATA[31]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[3]_INST_0 
       (.I0(M_AXI1_RDATA[3]),
        .I1(M_AXI3_RDATA[3]),
        .I2(M_AXI2_RDATA[3]),
        .O(S_AXI_RDATA[3]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[4]_INST_0 
       (.I0(M_AXI1_RDATA[4]),
        .I1(M_AXI3_RDATA[4]),
        .I2(M_AXI2_RDATA[4]),
        .O(S_AXI_RDATA[4]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[5]_INST_0 
       (.I0(M_AXI1_RDATA[5]),
        .I1(M_AXI3_RDATA[5]),
        .I2(M_AXI2_RDATA[5]),
        .O(S_AXI_RDATA[5]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[6]_INST_0 
       (.I0(M_AXI1_RDATA[6]),
        .I1(M_AXI3_RDATA[6]),
        .I2(M_AXI2_RDATA[6]),
        .O(S_AXI_RDATA[6]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[7]_INST_0 
       (.I0(M_AXI1_RDATA[7]),
        .I1(M_AXI3_RDATA[7]),
        .I2(M_AXI2_RDATA[7]),
        .O(S_AXI_RDATA[7]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[8]_INST_0 
       (.I0(M_AXI1_RDATA[8]),
        .I1(M_AXI3_RDATA[8]),
        .I2(M_AXI2_RDATA[8]),
        .O(S_AXI_RDATA[8]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RDATA[9]_INST_0 
       (.I0(M_AXI1_RDATA[9]),
        .I1(M_AXI3_RDATA[9]),
        .I2(M_AXI2_RDATA[9]),
        .O(S_AXI_RDATA[9]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RRESP[0]_INST_0 
       (.I0(M_AXI1_RRESP[0]),
        .I1(M_AXI3_RRESP[0]),
        .I2(M_AXI2_RRESP[0]),
        .O(S_AXI_RRESP[0]));
  LUT3 #(
    .INIT(8'hE8)) 
    \S_AXI_RRESP[1]_INST_0 
       (.I0(M_AXI1_RRESP[1]),
        .I1(M_AXI3_RRESP[1]),
        .I2(M_AXI2_RRESP[1]),
        .O(S_AXI_RRESP[1]));
  LUT3 #(
    .INIT(8'hE8)) 
    S_AXI_RVALID_INST_0
       (.I0(M_AXI1_RVALID),
        .I1(M_AXI3_RVALID),
        .I2(M_AXI2_RVALID),
        .O(S_AXI_RVALID));
  LUT3 #(
    .INIT(8'hE8)) 
    S_AXI_WREADY_INST_0
       (.I0(M_AXI1_WREADY),
        .I1(M_AXI3_WREADY),
        .I2(M_AXI2_WREADY),
        .O(S_AXI_WREADY));
endmodule

(* CHECK_LICENSE_TYPE = "bd_ocm_tmr_tmr_voter_0_0,tmr_voter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "tmr_voter,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module bd_hybrid_tmr_ecc_tmr_voter_0_1
   (Clk,
    M_AXI1_AWADDR,
    M_AXI1_AWVALID,
    M_AXI1_AWREADY,
    M_AXI1_WDATA,
    M_AXI1_WSTRB,
    M_AXI1_WVALID,
    M_AXI1_WREADY,
    M_AXI1_BRESP,
    M_AXI1_BVALID,
    M_AXI1_BREADY,
    M_AXI1_ARADDR,
    M_AXI1_ARVALID,
    M_AXI1_ARREADY,
    M_AXI1_RDATA,
    M_AXI1_RRESP,
    M_AXI1_RVALID,
    M_AXI1_RREADY,
    M_AXI2_AWADDR,
    M_AXI2_AWVALID,
    M_AXI2_AWREADY,
    M_AXI2_WDATA,
    M_AXI2_WSTRB,
    M_AXI2_WVALID,
    M_AXI2_WREADY,
    M_AXI2_BRESP,
    M_AXI2_BVALID,
    M_AXI2_BREADY,
    M_AXI2_ARADDR,
    M_AXI2_ARVALID,
    M_AXI2_ARREADY,
    M_AXI2_RDATA,
    M_AXI2_RRESP,
    M_AXI2_RVALID,
    M_AXI2_RREADY,
    M_AXI3_AWADDR,
    M_AXI3_AWVALID,
    M_AXI3_AWREADY,
    M_AXI3_WDATA,
    M_AXI3_WSTRB,
    M_AXI3_WVALID,
    M_AXI3_WREADY,
    M_AXI3_BRESP,
    M_AXI3_BVALID,
    M_AXI3_BREADY,
    M_AXI3_ARADDR,
    M_AXI3_ARVALID,
    M_AXI3_ARREADY,
    M_AXI3_RDATA,
    M_AXI3_RRESP,
    M_AXI3_RVALID,
    M_AXI3_RREADY,
    S_AXI_AWADDR,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.Clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.Clk, ASSOCIATED_BUSIF LMB1:LMB2:LMB3:LMB:S_LMB1:S_LMB2:S_LMB3:S_LMB:BRAM1:BRAM2:BRAM3:BRAM:M_BRAM1:M_BRAM2:M_BRAM3:S_BRAM:S_AXI1:S_AXI2:S_AXI3:M_AXI:M_AXI1:M_AXI2:M_AXI3:S_AXI:S_ACE1:S_ACE2:S_ACE3:M_ACE:M_ACE1:M_ACE2:M_ACE3:S_ACE:S_AXIS1:S_AXIS2:S_AXIS3:M_AXIS:M_AXIS1:M_AXIS2:M_AXIS3:S_AXIS:TRACE1:TRACE2:TRACE3:TRACE:IRQ1:IRQ2:IRA3:IRQ:S_IRQ1:S_IRQ2:S_IRQ3:M_IRQ:IO1:IO2:IO3:IO:GPIO1:GPIO2:GPIO3:GPIO:UART1:UART2:UART3:UART:S_AXIS_TEST:M_AXIS_TEST:IIC1:IIC2:IIC3:IIC, ASSOCIATED_RESET Rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_ocm_tmr_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input Clk;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI1 AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXI1, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_ocm_tmr_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [5:0]M_AXI1_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI1 AWVALID" *) output M_AXI1_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI1 AWREADY" *) input M_AXI1_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI1 WDATA" *) output [31:0]M_AXI1_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI1 WSTRB" *) output [3:0]M_AXI1_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI1 WVALID" *) output M_AXI1_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI1 WREADY" *) input M_AXI1_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI1 BRESP" *) input [1:0]M_AXI1_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI1 BVALID" *) input M_AXI1_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI1 BREADY" *) output M_AXI1_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI1 ARADDR" *) output [5:0]M_AXI1_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI1 ARVALID" *) output M_AXI1_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI1 ARREADY" *) input M_AXI1_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI1 RDATA" *) input [31:0]M_AXI1_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI1 RRESP" *) input [1:0]M_AXI1_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI1 RVALID" *) input M_AXI1_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI1 RREADY" *) output M_AXI1_RREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI2 AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXI2, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_ocm_tmr_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [5:0]M_AXI2_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI2 AWVALID" *) output M_AXI2_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI2 AWREADY" *) input M_AXI2_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI2 WDATA" *) output [31:0]M_AXI2_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI2 WSTRB" *) output [3:0]M_AXI2_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI2 WVALID" *) output M_AXI2_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI2 WREADY" *) input M_AXI2_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI2 BRESP" *) input [1:0]M_AXI2_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI2 BVALID" *) input M_AXI2_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI2 BREADY" *) output M_AXI2_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI2 ARADDR" *) output [5:0]M_AXI2_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI2 ARVALID" *) output M_AXI2_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI2 ARREADY" *) input M_AXI2_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI2 RDATA" *) input [31:0]M_AXI2_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI2 RRESP" *) input [1:0]M_AXI2_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI2 RVALID" *) input M_AXI2_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI2 RREADY" *) output M_AXI2_RREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI3 AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXI3, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_ocm_tmr_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [5:0]M_AXI3_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI3 AWVALID" *) output M_AXI3_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI3 AWREADY" *) input M_AXI3_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI3 WDATA" *) output [31:0]M_AXI3_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI3 WSTRB" *) output [3:0]M_AXI3_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI3 WVALID" *) output M_AXI3_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI3 WREADY" *) input M_AXI3_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI3 BRESP" *) input [1:0]M_AXI3_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI3 BVALID" *) input M_AXI3_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI3 BREADY" *) output M_AXI3_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI3 ARADDR" *) output [5:0]M_AXI3_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI3 ARVALID" *) output M_AXI3_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI3 ARREADY" *) input M_AXI3_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI3 RDATA" *) input [31:0]M_AXI3_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI3 RRESP" *) input [1:0]M_AXI3_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI3 RVALID" *) input M_AXI3_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI3 RREADY" *) output M_AXI3_RREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_ocm_tmr_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [5:0]S_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [5:0]S_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_RREADY;

  wire [5:0]M_AXI1_ARADDR;
  wire M_AXI1_ARREADY;
  wire M_AXI1_ARVALID;
  wire [5:0]M_AXI1_AWADDR;
  wire M_AXI1_AWREADY;
  wire M_AXI1_AWVALID;
  wire M_AXI1_BREADY;
  wire [1:0]M_AXI1_BRESP;
  wire M_AXI1_BVALID;
  wire [31:0]M_AXI1_RDATA;
  wire M_AXI1_RREADY;
  wire [1:0]M_AXI1_RRESP;
  wire M_AXI1_RVALID;
  wire [31:0]M_AXI1_WDATA;
  wire M_AXI1_WREADY;
  wire [3:0]M_AXI1_WSTRB;
  wire M_AXI1_WVALID;
  wire [5:0]M_AXI2_ARADDR;
  wire M_AXI2_ARREADY;
  wire M_AXI2_ARVALID;
  wire [5:0]M_AXI2_AWADDR;
  wire M_AXI2_AWREADY;
  wire M_AXI2_AWVALID;
  wire M_AXI2_BREADY;
  wire [1:0]M_AXI2_BRESP;
  wire M_AXI2_BVALID;
  wire [31:0]M_AXI2_RDATA;
  wire M_AXI2_RREADY;
  wire [1:0]M_AXI2_RRESP;
  wire M_AXI2_RVALID;
  wire [31:0]M_AXI2_WDATA;
  wire M_AXI2_WREADY;
  wire [3:0]M_AXI2_WSTRB;
  wire M_AXI2_WVALID;
  wire [5:0]M_AXI3_ARADDR;
  wire M_AXI3_ARREADY;
  wire M_AXI3_ARVALID;
  wire [5:0]M_AXI3_AWADDR;
  wire M_AXI3_AWREADY;
  wire M_AXI3_AWVALID;
  wire M_AXI3_BREADY;
  wire [1:0]M_AXI3_BRESP;
  wire M_AXI3_BVALID;
  wire [31:0]M_AXI3_RDATA;
  wire M_AXI3_RREADY;
  wire [1:0]M_AXI3_RRESP;
  wire M_AXI3_RVALID;
  wire [31:0]M_AXI3_WDATA;
  wire M_AXI3_WREADY;
  wire [3:0]M_AXI3_WSTRB;
  wire M_AXI3_WVALID;
  wire [5:0]S_AXI_ARADDR;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [5:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire [1:0]S_AXI_BRESP;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire [1:0]S_AXI_RRESP;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire NLW_U0_BRAM_Clk_UNCONNECTED;
  wire NLW_U0_BRAM_EN_UNCONNECTED;
  wire NLW_U0_BRAM_Rst_UNCONNECTED;
  wire NLW_U0_IIC1_scl_i_UNCONNECTED;
  wire NLW_U0_IIC1_sda_i_UNCONNECTED;
  wire NLW_U0_IIC2_scl_i_UNCONNECTED;
  wire NLW_U0_IIC2_sda_i_UNCONNECTED;
  wire NLW_U0_IIC3_scl_i_UNCONNECTED;
  wire NLW_U0_IIC3_sda_i_UNCONNECTED;
  wire NLW_U0_IIC_scl_o_UNCONNECTED;
  wire NLW_U0_IIC_scl_t_UNCONNECTED;
  wire NLW_U0_IIC_sda_o_UNCONNECTED;
  wire NLW_U0_IIC_sda_t_UNCONNECTED;
  wire NLW_U0_IO1_Ready_UNCONNECTED;
  wire NLW_U0_IO2_Ready_UNCONNECTED;
  wire NLW_U0_IO3_Ready_UNCONNECTED;
  wire NLW_U0_IO_Addr_Strobe_UNCONNECTED;
  wire NLW_U0_IO_Read_Strobe_UNCONNECTED;
  wire NLW_U0_IO_Write_Strobe_UNCONNECTED;
  wire NLW_U0_IRQ1_UNCONNECTED;
  wire NLW_U0_IRQ2_UNCONNECTED;
  wire NLW_U0_IRQ3_UNCONNECTED;
  wire NLW_U0_LMB_AddrStrobe_UNCONNECTED;
  wire NLW_U0_LMB_ReadStrobe_UNCONNECTED;
  wire NLW_U0_LMB_WriteStrobe_UNCONNECTED;
  wire NLW_U0_M_AXI1_ACREADY_UNCONNECTED;
  wire NLW_U0_M_AXI1_ARLOCK_UNCONNECTED;
  wire NLW_U0_M_AXI1_AWLOCK_UNCONNECTED;
  wire NLW_U0_M_AXI1_CDLAST_UNCONNECTED;
  wire NLW_U0_M_AXI1_CDVALID_UNCONNECTED;
  wire NLW_U0_M_AXI1_CRVALID_UNCONNECTED;
  wire NLW_U0_M_AXI1_RACK_UNCONNECTED;
  wire NLW_U0_M_AXI1_WACK_UNCONNECTED;
  wire NLW_U0_M_AXI1_WLAST_UNCONNECTED;
  wire NLW_U0_M_AXI2_ACREADY_UNCONNECTED;
  wire NLW_U0_M_AXI2_ARLOCK_UNCONNECTED;
  wire NLW_U0_M_AXI2_AWLOCK_UNCONNECTED;
  wire NLW_U0_M_AXI2_CDLAST_UNCONNECTED;
  wire NLW_U0_M_AXI2_CDVALID_UNCONNECTED;
  wire NLW_U0_M_AXI2_CRVALID_UNCONNECTED;
  wire NLW_U0_M_AXI2_RACK_UNCONNECTED;
  wire NLW_U0_M_AXI2_WACK_UNCONNECTED;
  wire NLW_U0_M_AXI2_WLAST_UNCONNECTED;
  wire NLW_U0_M_AXI3_ACREADY_UNCONNECTED;
  wire NLW_U0_M_AXI3_ARLOCK_UNCONNECTED;
  wire NLW_U0_M_AXI3_AWLOCK_UNCONNECTED;
  wire NLW_U0_M_AXI3_CDLAST_UNCONNECTED;
  wire NLW_U0_M_AXI3_CDVALID_UNCONNECTED;
  wire NLW_U0_M_AXI3_CRVALID_UNCONNECTED;
  wire NLW_U0_M_AXI3_RACK_UNCONNECTED;
  wire NLW_U0_M_AXI3_WACK_UNCONNECTED;
  wire NLW_U0_M_AXI3_WLAST_UNCONNECTED;
  wire NLW_U0_M_AXIS1_TLAST_UNCONNECTED;
  wire NLW_U0_M_AXIS1_TVALID_UNCONNECTED;
  wire NLW_U0_M_AXIS2_TLAST_UNCONNECTED;
  wire NLW_U0_M_AXIS2_TVALID_UNCONNECTED;
  wire NLW_U0_M_AXIS3_TLAST_UNCONNECTED;
  wire NLW_U0_M_AXIS3_TVALID_UNCONNECTED;
  wire NLW_U0_M_AXIS_TLAST_UNCONNECTED;
  wire NLW_U0_M_AXIS_TLAST_Test_UNCONNECTED;
  wire NLW_U0_M_AXIS_TVALID_UNCONNECTED;
  wire NLW_U0_M_AXIS_TVALID_Test_UNCONNECTED;
  wire NLW_U0_M_AXI_ACREADY_UNCONNECTED;
  wire NLW_U0_M_AXI_ARLOCK_UNCONNECTED;
  wire NLW_U0_M_AXI_ARVALID_UNCONNECTED;
  wire NLW_U0_M_AXI_AWLOCK_UNCONNECTED;
  wire NLW_U0_M_AXI_AWVALID_UNCONNECTED;
  wire NLW_U0_M_AXI_BREADY_UNCONNECTED;
  wire NLW_U0_M_AXI_CDLAST_UNCONNECTED;
  wire NLW_U0_M_AXI_CDVALID_UNCONNECTED;
  wire NLW_U0_M_AXI_CRVALID_UNCONNECTED;
  wire NLW_U0_M_AXI_RACK_UNCONNECTED;
  wire NLW_U0_M_AXI_RREADY_UNCONNECTED;
  wire NLW_U0_M_AXI_WACK_UNCONNECTED;
  wire NLW_U0_M_AXI_WLAST_UNCONNECTED;
  wire NLW_U0_M_AXI_WVALID_UNCONNECTED;
  wire NLW_U0_M_BRAM1_Clk_UNCONNECTED;
  wire NLW_U0_M_BRAM1_EN_UNCONNECTED;
  wire NLW_U0_M_BRAM1_Rst_UNCONNECTED;
  wire NLW_U0_M_BRAM_MisMatch_UNCONNECTED;
  wire NLW_U0_M_IRQ_UNCONNECTED;
  wire NLW_U0_S_AXI1_ACVALID_UNCONNECTED;
  wire NLW_U0_S_AXI1_ARREADY_UNCONNECTED;
  wire NLW_U0_S_AXI1_AWREADY_UNCONNECTED;
  wire NLW_U0_S_AXI1_BVALID_UNCONNECTED;
  wire NLW_U0_S_AXI1_CDREADY_UNCONNECTED;
  wire NLW_U0_S_AXI1_CRREADY_UNCONNECTED;
  wire NLW_U0_S_AXI1_RLAST_UNCONNECTED;
  wire NLW_U0_S_AXI1_RVALID_UNCONNECTED;
  wire NLW_U0_S_AXI1_WREADY_UNCONNECTED;
  wire NLW_U0_S_AXI2_ACVALID_UNCONNECTED;
  wire NLW_U0_S_AXI2_ARREADY_UNCONNECTED;
  wire NLW_U0_S_AXI2_AWREADY_UNCONNECTED;
  wire NLW_U0_S_AXI2_BVALID_UNCONNECTED;
  wire NLW_U0_S_AXI2_CDREADY_UNCONNECTED;
  wire NLW_U0_S_AXI2_CRREADY_UNCONNECTED;
  wire NLW_U0_S_AXI2_RLAST_UNCONNECTED;
  wire NLW_U0_S_AXI2_RVALID_UNCONNECTED;
  wire NLW_U0_S_AXI2_WREADY_UNCONNECTED;
  wire NLW_U0_S_AXI3_ACVALID_UNCONNECTED;
  wire NLW_U0_S_AXI3_ARREADY_UNCONNECTED;
  wire NLW_U0_S_AXI3_AWREADY_UNCONNECTED;
  wire NLW_U0_S_AXI3_BVALID_UNCONNECTED;
  wire NLW_U0_S_AXI3_CDREADY_UNCONNECTED;
  wire NLW_U0_S_AXI3_CRREADY_UNCONNECTED;
  wire NLW_U0_S_AXI3_RLAST_UNCONNECTED;
  wire NLW_U0_S_AXI3_RVALID_UNCONNECTED;
  wire NLW_U0_S_AXI3_WREADY_UNCONNECTED;
  wire NLW_U0_S_AXIS1_TREADY_UNCONNECTED;
  wire NLW_U0_S_AXIS2_TREADY_UNCONNECTED;
  wire NLW_U0_S_AXIS3_TREADY_UNCONNECTED;
  wire NLW_U0_S_AXIS_TREADY_UNCONNECTED;
  wire NLW_U0_S_AXIS_TREADY_Test_UNCONNECTED;
  wire NLW_U0_S_AXI_ACVALID_UNCONNECTED;
  wire NLW_U0_S_AXI_CDREADY_UNCONNECTED;
  wire NLW_U0_S_AXI_CRREADY_UNCONNECTED;
  wire NLW_U0_S_AXI_RLAST_UNCONNECTED;
  wire NLW_U0_S_LMB1_AddrStrobe_UNCONNECTED;
  wire NLW_U0_S_LMB1_ReadStrobe_UNCONNECTED;
  wire NLW_U0_S_LMB1_WriteStrobe_UNCONNECTED;
  wire NLW_U0_S_LMB2_AddrStrobe_UNCONNECTED;
  wire NLW_U0_S_LMB2_ReadStrobe_UNCONNECTED;
  wire NLW_U0_S_LMB2_WriteStrobe_UNCONNECTED;
  wire NLW_U0_S_LMB3_AddrStrobe_UNCONNECTED;
  wire NLW_U0_S_LMB3_ReadStrobe_UNCONNECTED;
  wire NLW_U0_S_LMB3_WriteStrobe_UNCONNECTED;
  wire NLW_U0_S_Sl_CE_UNCONNECTED;
  wire NLW_U0_S_Sl_Ready_UNCONNECTED;
  wire NLW_U0_S_Sl_UE_UNCONNECTED;
  wire NLW_U0_S_Sl_Wait_UNCONNECTED;
  wire NLW_U0_Sl1_CE_UNCONNECTED;
  wire NLW_U0_Sl1_Ready_UNCONNECTED;
  wire NLW_U0_Sl1_UE_UNCONNECTED;
  wire NLW_U0_Sl1_Wait_UNCONNECTED;
  wire NLW_U0_Sl2_CE_UNCONNECTED;
  wire NLW_U0_Sl2_Ready_UNCONNECTED;
  wire NLW_U0_Sl2_UE_UNCONNECTED;
  wire NLW_U0_Sl2_Wait_UNCONNECTED;
  wire NLW_U0_Sl3_CE_UNCONNECTED;
  wire NLW_U0_Sl3_Ready_UNCONNECTED;
  wire NLW_U0_Sl3_UE_UNCONNECTED;
  wire NLW_U0_Sl3_Wait_UNCONNECTED;
  wire NLW_U0_Trace_DCache_Hit_UNCONNECTED;
  wire NLW_U0_Trace_DCache_Rdy_UNCONNECTED;
  wire NLW_U0_Trace_DCache_Read_UNCONNECTED;
  wire NLW_U0_Trace_DCache_Req_UNCONNECTED;
  wire NLW_U0_Trace_Data_Access_UNCONNECTED;
  wire NLW_U0_Trace_Data_Read_UNCONNECTED;
  wire NLW_U0_Trace_Data_Write_UNCONNECTED;
  wire NLW_U0_Trace_Delay_Slot_UNCONNECTED;
  wire NLW_U0_Trace_EX_PipeRun_UNCONNECTED;
  wire NLW_U0_Trace_Exception_Taken_UNCONNECTED;
  wire NLW_U0_Trace_ICache_Hit_UNCONNECTED;
  wire NLW_U0_Trace_ICache_Rdy_UNCONNECTED;
  wire NLW_U0_Trace_ICache_Req_UNCONNECTED;
  wire NLW_U0_Trace_Jump_Hit_UNCONNECTED;
  wire NLW_U0_Trace_Jump_Taken_UNCONNECTED;
  wire NLW_U0_Trace_MB_Halted_UNCONNECTED;
  wire NLW_U0_Trace_MEM_PipeRun_UNCONNECTED;
  wire NLW_U0_Trace_OF_PipeRun_UNCONNECTED;
  wire NLW_U0_Trace_Reg_Write_UNCONNECTED;
  wire NLW_U0_Trace_Valid_Instr_UNCONNECTED;
  wire NLW_U0_UART1_CTSn_UNCONNECTED;
  wire NLW_U0_UART1_DCDn_UNCONNECTED;
  wire NLW_U0_UART1_DSRn_UNCONNECTED;
  wire NLW_U0_UART1_RCLK_UNCONNECTED;
  wire NLW_U0_UART1_RI_UNCONNECTED;
  wire NLW_U0_UART1_RxD_UNCONNECTED;
  wire NLW_U0_UART1_XIN_UNCONNECTED;
  wire NLW_U0_UART2_CTSn_UNCONNECTED;
  wire NLW_U0_UART2_DCDn_UNCONNECTED;
  wire NLW_U0_UART2_DSRn_UNCONNECTED;
  wire NLW_U0_UART2_RCLK_UNCONNECTED;
  wire NLW_U0_UART2_RI_UNCONNECTED;
  wire NLW_U0_UART2_RxD_UNCONNECTED;
  wire NLW_U0_UART2_XIN_UNCONNECTED;
  wire NLW_U0_UART3_CTSn_UNCONNECTED;
  wire NLW_U0_UART3_DCDn_UNCONNECTED;
  wire NLW_U0_UART3_DSRn_UNCONNECTED;
  wire NLW_U0_UART3_RCLK_UNCONNECTED;
  wire NLW_U0_UART3_RI_UNCONNECTED;
  wire NLW_U0_UART3_RxD_UNCONNECTED;
  wire NLW_U0_UART3_XIN_UNCONNECTED;
  wire NLW_U0_UART_BAUDOUTn_UNCONNECTED;
  wire NLW_U0_UART_DDIS_UNCONNECTED;
  wire NLW_U0_UART_DTRn_UNCONNECTED;
  wire NLW_U0_UART_OUT1n_UNCONNECTED;
  wire NLW_U0_UART_OUT2n_UNCONNECTED;
  wire NLW_U0_UART_RTSn_UNCONNECTED;
  wire NLW_U0_UART_RXRDYn_UNCONNECTED;
  wire NLW_U0_UART_TXRDYn_UNCONNECTED;
  wire NLW_U0_UART_TxD_UNCONNECTED;
  wire NLW_U0_UART_XOUT_UNCONNECTED;
  wire [0:31]NLW_U0_BRAM1_Din_UNCONNECTED;
  wire [0:31]NLW_U0_BRAM2_Din_UNCONNECTED;
  wire [0:31]NLW_U0_BRAM3_Din_UNCONNECTED;
  wire [0:31]NLW_U0_BRAM_Addr_UNCONNECTED;
  wire [0:31]NLW_U0_BRAM_Dout_UNCONNECTED;
  wire [0:3]NLW_U0_BRAM_WE_UNCONNECTED;
  wire [3:0]NLW_U0_Compare_UNCONNECTED;
  wire [0:0]NLW_U0_Discrete_UNCONNECTED;
  wire [31:0]NLW_U0_GPI1_UNCONNECTED;
  wire [31:0]NLW_U0_GPI2_UNCONNECTED;
  wire [31:0]NLW_U0_GPI3_UNCONNECTED;
  wire [31:0]NLW_U0_GPO_UNCONNECTED;
  wire [31:0]NLW_U0_GPT_UNCONNECTED;
  wire [31:0]NLW_U0_IO1_Read_Data_UNCONNECTED;
  wire [31:0]NLW_U0_IO2_Read_Data_UNCONNECTED;
  wire [31:0]NLW_U0_IO3_Read_Data_UNCONNECTED;
  wire [31:0]NLW_U0_IO_Address_UNCONNECTED;
  wire [3:0]NLW_U0_IO_Byte_Enable_UNCONNECTED;
  wire [31:0]NLW_U0_IO_Write_Data_UNCONNECTED;
  wire [0:31]NLW_U0_IRQ1_Address_UNCONNECTED;
  wire [0:31]NLW_U0_IRQ2_Address_UNCONNECTED;
  wire [0:31]NLW_U0_IRQ3_Address_UNCONNECTED;
  wire [0:1]NLW_U0_IRQ_Ack_UNCONNECTED;
  wire [0:31]NLW_U0_LMB_ABus_UNCONNECTED;
  wire [0:3]NLW_U0_LMB_BE_UNCONNECTED;
  wire [0:31]NLW_U0_LMB_WriteDBus_UNCONNECTED;
  wire [1:0]NLW_U0_M_AXI1_ARBAR_UNCONNECTED;
  wire [1:0]NLW_U0_M_AXI1_ARBURST_UNCONNECTED;
  wire [3:0]NLW_U0_M_AXI1_ARCACHE_UNCONNECTED;
  wire [1:0]NLW_U0_M_AXI1_ARDOMAIN_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXI1_ARID_UNCONNECTED;
  wire [7:0]NLW_U0_M_AXI1_ARLEN_UNCONNECTED;
  wire [2:0]NLW_U0_M_AXI1_ARPROT_UNCONNECTED;
  wire [3:0]NLW_U0_M_AXI1_ARQOS_UNCONNECTED;
  wire [2:0]NLW_U0_M_AXI1_ARSIZE_UNCONNECTED;
  wire [3:0]NLW_U0_M_AXI1_ARSNOOP_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXI1_ARUSER_UNCONNECTED;
  wire [1:0]NLW_U0_M_AXI1_AWBAR_UNCONNECTED;
  wire [1:0]NLW_U0_M_AXI1_AWBURST_UNCONNECTED;
  wire [3:0]NLW_U0_M_AXI1_AWCACHE_UNCONNECTED;
  wire [1:0]NLW_U0_M_AXI1_AWDOMAIN_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXI1_AWID_UNCONNECTED;
  wire [7:0]NLW_U0_M_AXI1_AWLEN_UNCONNECTED;
  wire [2:0]NLW_U0_M_AXI1_AWPROT_UNCONNECTED;
  wire [3:0]NLW_U0_M_AXI1_AWQOS_UNCONNECTED;
  wire [2:0]NLW_U0_M_AXI1_AWSIZE_UNCONNECTED;
  wire [2:0]NLW_U0_M_AXI1_AWSNOOP_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXI1_AWUSER_UNCONNECTED;
  wire [31:0]NLW_U0_M_AXI1_CDDATA_UNCONNECTED;
  wire [4:0]NLW_U0_M_AXI1_CRRESP_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXI1_WUSER_UNCONNECTED;
  wire [1:0]NLW_U0_M_AXI2_ARBAR_UNCONNECTED;
  wire [1:0]NLW_U0_M_AXI2_ARBURST_UNCONNECTED;
  wire [3:0]NLW_U0_M_AXI2_ARCACHE_UNCONNECTED;
  wire [1:0]NLW_U0_M_AXI2_ARDOMAIN_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXI2_ARID_UNCONNECTED;
  wire [7:0]NLW_U0_M_AXI2_ARLEN_UNCONNECTED;
  wire [2:0]NLW_U0_M_AXI2_ARPROT_UNCONNECTED;
  wire [3:0]NLW_U0_M_AXI2_ARQOS_UNCONNECTED;
  wire [2:0]NLW_U0_M_AXI2_ARSIZE_UNCONNECTED;
  wire [3:0]NLW_U0_M_AXI2_ARSNOOP_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXI2_ARUSER_UNCONNECTED;
  wire [1:0]NLW_U0_M_AXI2_AWBAR_UNCONNECTED;
  wire [1:0]NLW_U0_M_AXI2_AWBURST_UNCONNECTED;
  wire [3:0]NLW_U0_M_AXI2_AWCACHE_UNCONNECTED;
  wire [1:0]NLW_U0_M_AXI2_AWDOMAIN_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXI2_AWID_UNCONNECTED;
  wire [7:0]NLW_U0_M_AXI2_AWLEN_UNCONNECTED;
  wire [2:0]NLW_U0_M_AXI2_AWPROT_UNCONNECTED;
  wire [3:0]NLW_U0_M_AXI2_AWQOS_UNCONNECTED;
  wire [2:0]NLW_U0_M_AXI2_AWSIZE_UNCONNECTED;
  wire [2:0]NLW_U0_M_AXI2_AWSNOOP_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXI2_AWUSER_UNCONNECTED;
  wire [31:0]NLW_U0_M_AXI2_CDDATA_UNCONNECTED;
  wire [4:0]NLW_U0_M_AXI2_CRRESP_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXI2_WUSER_UNCONNECTED;
  wire [1:0]NLW_U0_M_AXI3_ARBAR_UNCONNECTED;
  wire [1:0]NLW_U0_M_AXI3_ARBURST_UNCONNECTED;
  wire [3:0]NLW_U0_M_AXI3_ARCACHE_UNCONNECTED;
  wire [1:0]NLW_U0_M_AXI3_ARDOMAIN_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXI3_ARID_UNCONNECTED;
  wire [7:0]NLW_U0_M_AXI3_ARLEN_UNCONNECTED;
  wire [2:0]NLW_U0_M_AXI3_ARPROT_UNCONNECTED;
  wire [3:0]NLW_U0_M_AXI3_ARQOS_UNCONNECTED;
  wire [2:0]NLW_U0_M_AXI3_ARSIZE_UNCONNECTED;
  wire [3:0]NLW_U0_M_AXI3_ARSNOOP_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXI3_ARUSER_UNCONNECTED;
  wire [1:0]NLW_U0_M_AXI3_AWBAR_UNCONNECTED;
  wire [1:0]NLW_U0_M_AXI3_AWBURST_UNCONNECTED;
  wire [3:0]NLW_U0_M_AXI3_AWCACHE_UNCONNECTED;
  wire [1:0]NLW_U0_M_AXI3_AWDOMAIN_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXI3_AWID_UNCONNECTED;
  wire [7:0]NLW_U0_M_AXI3_AWLEN_UNCONNECTED;
  wire [2:0]NLW_U0_M_AXI3_AWPROT_UNCONNECTED;
  wire [3:0]NLW_U0_M_AXI3_AWQOS_UNCONNECTED;
  wire [2:0]NLW_U0_M_AXI3_AWSIZE_UNCONNECTED;
  wire [2:0]NLW_U0_M_AXI3_AWSNOOP_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXI3_AWUSER_UNCONNECTED;
  wire [31:0]NLW_U0_M_AXI3_CDDATA_UNCONNECTED;
  wire [4:0]NLW_U0_M_AXI3_CRRESP_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXI3_WUSER_UNCONNECTED;
  wire [31:0]NLW_U0_M_AXIS1_TDATA_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXIS1_TDEST_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXIS1_TID_UNCONNECTED;
  wire [3:0]NLW_U0_M_AXIS1_TKEEP_UNCONNECTED;
  wire [3:0]NLW_U0_M_AXIS1_TSTRB_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXIS1_TUSER_UNCONNECTED;
  wire [31:0]NLW_U0_M_AXIS2_TDATA_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXIS2_TDEST_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXIS2_TID_UNCONNECTED;
  wire [3:0]NLW_U0_M_AXIS2_TKEEP_UNCONNECTED;
  wire [3:0]NLW_U0_M_AXIS2_TSTRB_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXIS2_TUSER_UNCONNECTED;
  wire [31:0]NLW_U0_M_AXIS3_TDATA_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXIS3_TDEST_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXIS3_TID_UNCONNECTED;
  wire [3:0]NLW_U0_M_AXIS3_TKEEP_UNCONNECTED;
  wire [3:0]NLW_U0_M_AXIS3_TSTRB_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXIS3_TUSER_UNCONNECTED;
  wire [31:0]NLW_U0_M_AXIS_TDATA_UNCONNECTED;
  wire [31:0]NLW_U0_M_AXIS_TDATA_Test_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXIS_TDEST_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXIS_TID_UNCONNECTED;
  wire [3:0]NLW_U0_M_AXIS_TKEEP_UNCONNECTED;
  wire [3:0]NLW_U0_M_AXIS_TSTRB_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXIS_TUSER_UNCONNECTED;
  wire [5:0]NLW_U0_M_AXI_ARADDR_UNCONNECTED;
  wire [1:0]NLW_U0_M_AXI_ARBAR_UNCONNECTED;
  wire [1:0]NLW_U0_M_AXI_ARBURST_UNCONNECTED;
  wire [3:0]NLW_U0_M_AXI_ARCACHE_UNCONNECTED;
  wire [1:0]NLW_U0_M_AXI_ARDOMAIN_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXI_ARID_UNCONNECTED;
  wire [7:0]NLW_U0_M_AXI_ARLEN_UNCONNECTED;
  wire [2:0]NLW_U0_M_AXI_ARPROT_UNCONNECTED;
  wire [3:0]NLW_U0_M_AXI_ARQOS_UNCONNECTED;
  wire [2:0]NLW_U0_M_AXI_ARSIZE_UNCONNECTED;
  wire [3:0]NLW_U0_M_AXI_ARSNOOP_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXI_ARUSER_UNCONNECTED;
  wire [5:0]NLW_U0_M_AXI_AWADDR_UNCONNECTED;
  wire [1:0]NLW_U0_M_AXI_AWBAR_UNCONNECTED;
  wire [1:0]NLW_U0_M_AXI_AWBURST_UNCONNECTED;
  wire [3:0]NLW_U0_M_AXI_AWCACHE_UNCONNECTED;
  wire [1:0]NLW_U0_M_AXI_AWDOMAIN_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXI_AWID_UNCONNECTED;
  wire [7:0]NLW_U0_M_AXI_AWLEN_UNCONNECTED;
  wire [2:0]NLW_U0_M_AXI_AWPROT_UNCONNECTED;
  wire [3:0]NLW_U0_M_AXI_AWQOS_UNCONNECTED;
  wire [2:0]NLW_U0_M_AXI_AWSIZE_UNCONNECTED;
  wire [2:0]NLW_U0_M_AXI_AWSNOOP_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXI_AWUSER_UNCONNECTED;
  wire [31:0]NLW_U0_M_AXI_CDDATA_UNCONNECTED;
  wire [4:0]NLW_U0_M_AXI_CRRESP_UNCONNECTED;
  wire [31:0]NLW_U0_M_AXI_WDATA_UNCONNECTED;
  wire [3:0]NLW_U0_M_AXI_WSTRB_UNCONNECTED;
  wire [0:0]NLW_U0_M_AXI_WUSER_UNCONNECTED;
  wire [0:31]NLW_U0_M_BRAM1_Addr_UNCONNECTED;
  wire [0:31]NLW_U0_M_BRAM1_Dout_UNCONNECTED;
  wire [0:3]NLW_U0_M_BRAM1_WE_UNCONNECTED;
  wire [0:31]NLW_U0_M_IRQ_Address_UNCONNECTED;
  wire [5:0]NLW_U0_S_AXI1_ACADDR_UNCONNECTED;
  wire [2:0]NLW_U0_S_AXI1_ACPROT_UNCONNECTED;
  wire [3:0]NLW_U0_S_AXI1_ACSNOOP_UNCONNECTED;
  wire [0:0]NLW_U0_S_AXI1_BID_UNCONNECTED;
  wire [1:0]NLW_U0_S_AXI1_BRESP_UNCONNECTED;
  wire [0:0]NLW_U0_S_AXI1_BUSER_UNCONNECTED;
  wire [31:0]NLW_U0_S_AXI1_RDATA_UNCONNECTED;
  wire [0:0]NLW_U0_S_AXI1_RID_UNCONNECTED;
  wire [1:0]NLW_U0_S_AXI1_RRESP_UNCONNECTED;
  wire [0:0]NLW_U0_S_AXI1_RUSER_UNCONNECTED;
  wire [5:0]NLW_U0_S_AXI2_ACADDR_UNCONNECTED;
  wire [2:0]NLW_U0_S_AXI2_ACPROT_UNCONNECTED;
  wire [3:0]NLW_U0_S_AXI2_ACSNOOP_UNCONNECTED;
  wire [0:0]NLW_U0_S_AXI2_BID_UNCONNECTED;
  wire [1:0]NLW_U0_S_AXI2_BRESP_UNCONNECTED;
  wire [0:0]NLW_U0_S_AXI2_BUSER_UNCONNECTED;
  wire [31:0]NLW_U0_S_AXI2_RDATA_UNCONNECTED;
  wire [0:0]NLW_U0_S_AXI2_RID_UNCONNECTED;
  wire [1:0]NLW_U0_S_AXI2_RRESP_UNCONNECTED;
  wire [0:0]NLW_U0_S_AXI2_RUSER_UNCONNECTED;
  wire [5:0]NLW_U0_S_AXI3_ACADDR_UNCONNECTED;
  wire [2:0]NLW_U0_S_AXI3_ACPROT_UNCONNECTED;
  wire [3:0]NLW_U0_S_AXI3_ACSNOOP_UNCONNECTED;
  wire [0:0]NLW_U0_S_AXI3_BID_UNCONNECTED;
  wire [1:0]NLW_U0_S_AXI3_BRESP_UNCONNECTED;
  wire [0:0]NLW_U0_S_AXI3_BUSER_UNCONNECTED;
  wire [31:0]NLW_U0_S_AXI3_RDATA_UNCONNECTED;
  wire [0:0]NLW_U0_S_AXI3_RID_UNCONNECTED;
  wire [1:0]NLW_U0_S_AXI3_RRESP_UNCONNECTED;
  wire [0:0]NLW_U0_S_AXI3_RUSER_UNCONNECTED;
  wire [5:0]NLW_U0_S_AXI_ACADDR_UNCONNECTED;
  wire [2:0]NLW_U0_S_AXI_ACPROT_UNCONNECTED;
  wire [3:0]NLW_U0_S_AXI_ACSNOOP_UNCONNECTED;
  wire [0:0]NLW_U0_S_AXI_BID_UNCONNECTED;
  wire [0:0]NLW_U0_S_AXI_BUSER_UNCONNECTED;
  wire [0:0]NLW_U0_S_AXI_RID_UNCONNECTED;
  wire [0:0]NLW_U0_S_AXI_RUSER_UNCONNECTED;
  wire [0:31]NLW_U0_S_BRAM_Din_UNCONNECTED;
  wire [0:1]NLW_U0_S_IRQ1_Ack_UNCONNECTED;
  wire [0:1]NLW_U0_S_IRQ2_Ack_UNCONNECTED;
  wire [0:1]NLW_U0_S_IRQ3_Ack_UNCONNECTED;
  wire [0:31]NLW_U0_S_LMB1_ABus_UNCONNECTED;
  wire [0:3]NLW_U0_S_LMB1_BE_UNCONNECTED;
  wire [0:31]NLW_U0_S_LMB1_WriteDBus_UNCONNECTED;
  wire [0:31]NLW_U0_S_LMB2_ABus_UNCONNECTED;
  wire [0:3]NLW_U0_S_LMB2_BE_UNCONNECTED;
  wire [0:31]NLW_U0_S_LMB2_WriteDBus_UNCONNECTED;
  wire [0:31]NLW_U0_S_LMB3_ABus_UNCONNECTED;
  wire [0:3]NLW_U0_S_LMB3_BE_UNCONNECTED;
  wire [0:31]NLW_U0_S_LMB3_WriteDBus_UNCONNECTED;
  wire [0:31]NLW_U0_S_Sl_DBus_UNCONNECTED;
  wire [0:31]NLW_U0_Sl1_DBus_UNCONNECTED;
  wire [0:31]NLW_U0_Sl2_DBus_UNCONNECTED;
  wire [0:31]NLW_U0_Sl3_DBus_UNCONNECTED;
  wire [0:31]NLW_U0_Trace_Data_Address_UNCONNECTED;
  wire [0:3]NLW_U0_Trace_Data_Byte_Enable_UNCONNECTED;
  wire [0:31]NLW_U0_Trace_Data_Write_Value_UNCONNECTED;
  wire [0:4]NLW_U0_Trace_Exception_Kind_UNCONNECTED;
  wire [0:31]NLW_U0_Trace_Instruction_UNCONNECTED;
  wire [0:14]NLW_U0_Trace_MSR_Reg_UNCONNECTED;
  wire [0:31]NLW_U0_Trace_New_Reg_Value_UNCONNECTED;
  wire [0:31]NLW_U0_Trace_PC_UNCONNECTED;
  wire [0:7]NLW_U0_Trace_PID_Reg_UNCONNECTED;
  wire [0:4]NLW_U0_Trace_Reg_Addr_UNCONNECTED;

  (* C_ADDR_SIZE = "32" *) 
  (* C_AXIS_DATA_WIDTH = "32" *) 
  (* C_AXIS_DEST_WIDTH = "1" *) 
  (* C_AXIS_ID_WIDTH = "1" *) 
  (* C_AXIS_USER_WIDTH = "1" *) 
  (* C_AXI_ADDR_WIDTH = "6" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "32" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMPARATOR = "0" *) 
  (* C_DATA_SIZE = "32" *) 
  (* C_DISCRETE_WIDTH = "1" *) 
  (* C_ECC = "0" *) 
  (* C_GPI_SIZE = "32" *) 
  (* C_GPO_SIZE = "32" *) 
  (* C_INCLUDE_MASK = "64'b1111111111111111111111111111111111111111111110000001101101111011" *) 
  (* C_INPUT_REGISTER = "0" *) 
  (* C_INTERFACE = "16" *) 
  (* C_LMB_AWIDTH = "32" *) 
  (* C_LMB_DWIDTH = "32" *) 
  (* C_LMB_PROTOCOL = "0" *) 
  (* C_LOW_LATENCY = "0" *) 
  (* C_TEMPORAL_DEPTH1 = "0" *) 
  (* C_TEMPORAL_DEPTH2 = "0" *) 
  (* C_TEST_AXIS_DATA_WIDTH = "32" *) 
  (* C_TEST_COMPARATOR = "0" *) 
  (* C_TEST_LAST_INTERFACE = "0" *) 
  (* C_TMR = "1" *) 
  (* C_USE_TMR_DISABLE = "0" *) 
  (* C_VOTER_CHECK = "0" *) 
  bd_hybrid_tmr_ecc_tmr_voter_0_1_tmr_voter U0
       (.BRAM1_Addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BRAM1_Clk(1'b0),
        .BRAM1_Din(NLW_U0_BRAM1_Din_UNCONNECTED[0:31]),
        .BRAM1_Dout({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BRAM1_EN(1'b0),
        .BRAM1_Rst(1'b0),
        .BRAM1_WE({1'b0,1'b0,1'b0,1'b0}),
        .BRAM2_Addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BRAM2_Clk(1'b0),
        .BRAM2_Din(NLW_U0_BRAM2_Din_UNCONNECTED[0:31]),
        .BRAM2_Dout({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BRAM2_EN(1'b0),
        .BRAM2_Rst(1'b0),
        .BRAM2_WE({1'b0,1'b0,1'b0,1'b0}),
        .BRAM3_Addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BRAM3_Clk(1'b0),
        .BRAM3_Din(NLW_U0_BRAM3_Din_UNCONNECTED[0:31]),
        .BRAM3_Dout({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BRAM3_EN(1'b0),
        .BRAM3_Rst(1'b0),
        .BRAM3_WE({1'b0,1'b0,1'b0,1'b0}),
        .BRAM_Addr(NLW_U0_BRAM_Addr_UNCONNECTED[0:31]),
        .BRAM_Clk(NLW_U0_BRAM_Clk_UNCONNECTED),
        .BRAM_Din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BRAM_Dout(NLW_U0_BRAM_Dout_UNCONNECTED[0:31]),
        .BRAM_EN(NLW_U0_BRAM_EN_UNCONNECTED),
        .BRAM_Rst(NLW_U0_BRAM_Rst_UNCONNECTED),
        .BRAM_WE(NLW_U0_BRAM_WE_UNCONNECTED[0:3]),
        .Clk(1'b0),
        .Compare(NLW_U0_Compare_UNCONNECTED[3:0]),
        .Discrete(NLW_U0_Discrete_UNCONNECTED[0]),
        .Discrete1(1'b0),
        .Discrete2(1'b0),
        .Discrete3(1'b0),
        .GPI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GPI1(NLW_U0_GPI1_UNCONNECTED[31:0]),
        .GPI2(NLW_U0_GPI2_UNCONNECTED[31:0]),
        .GPI3(NLW_U0_GPI3_UNCONNECTED[31:0]),
        .GPO(NLW_U0_GPO_UNCONNECTED[31:0]),
        .GPO1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GPO2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GPO3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GPT(NLW_U0_GPT_UNCONNECTED[31:0]),
        .GPT1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GPT2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GPT3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IIC1_scl_i(NLW_U0_IIC1_scl_i_UNCONNECTED),
        .IIC1_scl_o(1'b0),
        .IIC1_scl_t(1'b0),
        .IIC1_sda_i(NLW_U0_IIC1_sda_i_UNCONNECTED),
        .IIC1_sda_o(1'b0),
        .IIC1_sda_t(1'b0),
        .IIC2_scl_i(NLW_U0_IIC2_scl_i_UNCONNECTED),
        .IIC2_scl_o(1'b0),
        .IIC2_scl_t(1'b0),
        .IIC2_sda_i(NLW_U0_IIC2_sda_i_UNCONNECTED),
        .IIC2_sda_o(1'b0),
        .IIC2_sda_t(1'b0),
        .IIC3_scl_i(NLW_U0_IIC3_scl_i_UNCONNECTED),
        .IIC3_scl_o(1'b0),
        .IIC3_scl_t(1'b0),
        .IIC3_sda_i(NLW_U0_IIC3_sda_i_UNCONNECTED),
        .IIC3_sda_o(1'b0),
        .IIC3_sda_t(1'b0),
        .IIC_scl_i(1'b0),
        .IIC_scl_o(NLW_U0_IIC_scl_o_UNCONNECTED),
        .IIC_scl_t(NLW_U0_IIC_scl_t_UNCONNECTED),
        .IIC_sda_i(1'b0),
        .IIC_sda_o(NLW_U0_IIC_sda_o_UNCONNECTED),
        .IIC_sda_t(NLW_U0_IIC_sda_t_UNCONNECTED),
        .IO1_Addr_Strobe(1'b0),
        .IO1_Address({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IO1_Byte_Enable({1'b0,1'b0,1'b0,1'b0}),
        .IO1_Read_Data(NLW_U0_IO1_Read_Data_UNCONNECTED[31:0]),
        .IO1_Read_Strobe(1'b0),
        .IO1_Ready(NLW_U0_IO1_Ready_UNCONNECTED),
        .IO1_Write_Data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IO1_Write_Strobe(1'b0),
        .IO2_Addr_Strobe(1'b0),
        .IO2_Address({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IO2_Byte_Enable({1'b0,1'b0,1'b0,1'b0}),
        .IO2_Read_Data(NLW_U0_IO2_Read_Data_UNCONNECTED[31:0]),
        .IO2_Read_Strobe(1'b0),
        .IO2_Ready(NLW_U0_IO2_Ready_UNCONNECTED),
        .IO2_Write_Data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IO2_Write_Strobe(1'b0),
        .IO3_Addr_Strobe(1'b0),
        .IO3_Address({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IO3_Byte_Enable({1'b0,1'b0,1'b0,1'b0}),
        .IO3_Read_Data(NLW_U0_IO3_Read_Data_UNCONNECTED[31:0]),
        .IO3_Read_Strobe(1'b0),
        .IO3_Ready(NLW_U0_IO3_Ready_UNCONNECTED),
        .IO3_Write_Data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IO3_Write_Strobe(1'b0),
        .IO_Addr_Strobe(NLW_U0_IO_Addr_Strobe_UNCONNECTED),
        .IO_Address(NLW_U0_IO_Address_UNCONNECTED[31:0]),
        .IO_Byte_Enable(NLW_U0_IO_Byte_Enable_UNCONNECTED[3:0]),
        .IO_Read_Data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IO_Read_Strobe(NLW_U0_IO_Read_Strobe_UNCONNECTED),
        .IO_Ready(1'b0),
        .IO_Write_Data(NLW_U0_IO_Write_Data_UNCONNECTED[31:0]),
        .IO_Write_Strobe(NLW_U0_IO_Write_Strobe_UNCONNECTED),
        .IRQ(1'b0),
        .IRQ1(NLW_U0_IRQ1_UNCONNECTED),
        .IRQ1_Ack({1'b0,1'b0}),
        .IRQ1_Address(NLW_U0_IRQ1_Address_UNCONNECTED[0:31]),
        .IRQ2(NLW_U0_IRQ2_UNCONNECTED),
        .IRQ2_Ack({1'b0,1'b0}),
        .IRQ2_Address(NLW_U0_IRQ2_Address_UNCONNECTED[0:31]),
        .IRQ3(NLW_U0_IRQ3_UNCONNECTED),
        .IRQ3_Ack({1'b0,1'b0}),
        .IRQ3_Address(NLW_U0_IRQ3_Address_UNCONNECTED[0:31]),
        .IRQ_Ack(NLW_U0_IRQ_Ack_UNCONNECTED[0:1]),
        .IRQ_Address({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LMB1_ABus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LMB1_AddrStrobe(1'b0),
        .LMB1_BE({1'b0,1'b0,1'b0,1'b0}),
        .LMB1_ReadStrobe(1'b0),
        .LMB1_WriteDBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LMB1_WriteStrobe(1'b0),
        .LMB2_ABus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LMB2_AddrStrobe(1'b0),
        .LMB2_BE({1'b0,1'b0,1'b0,1'b0}),
        .LMB2_ReadStrobe(1'b0),
        .LMB2_WriteDBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LMB2_WriteStrobe(1'b0),
        .LMB3_ABus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LMB3_AddrStrobe(1'b0),
        .LMB3_BE({1'b0,1'b0,1'b0,1'b0}),
        .LMB3_ReadStrobe(1'b0),
        .LMB3_WriteDBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LMB3_WriteStrobe(1'b0),
        .LMB_ABus(NLW_U0_LMB_ABus_UNCONNECTED[0:31]),
        .LMB_AddrStrobe(NLW_U0_LMB_AddrStrobe_UNCONNECTED),
        .LMB_BE(NLW_U0_LMB_BE_UNCONNECTED[0:3]),
        .LMB_ReadStrobe(NLW_U0_LMB_ReadStrobe_UNCONNECTED),
        .LMB_WriteDBus(NLW_U0_LMB_WriteDBus_UNCONNECTED[0:31]),
        .LMB_WriteStrobe(NLW_U0_LMB_WriteStrobe_UNCONNECTED),
        .M_AXI1_ACADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI1_ACPROT({1'b0,1'b0,1'b0}),
        .M_AXI1_ACREADY(NLW_U0_M_AXI1_ACREADY_UNCONNECTED),
        .M_AXI1_ACSNOOP({1'b0,1'b0,1'b0,1'b0}),
        .M_AXI1_ACVALID(1'b0),
        .M_AXI1_ARADDR(M_AXI1_ARADDR),
        .M_AXI1_ARBAR(NLW_U0_M_AXI1_ARBAR_UNCONNECTED[1:0]),
        .M_AXI1_ARBURST(NLW_U0_M_AXI1_ARBURST_UNCONNECTED[1:0]),
        .M_AXI1_ARCACHE(NLW_U0_M_AXI1_ARCACHE_UNCONNECTED[3:0]),
        .M_AXI1_ARDOMAIN(NLW_U0_M_AXI1_ARDOMAIN_UNCONNECTED[1:0]),
        .M_AXI1_ARID(NLW_U0_M_AXI1_ARID_UNCONNECTED[0]),
        .M_AXI1_ARLEN(NLW_U0_M_AXI1_ARLEN_UNCONNECTED[7:0]),
        .M_AXI1_ARLOCK(NLW_U0_M_AXI1_ARLOCK_UNCONNECTED),
        .M_AXI1_ARPROT(NLW_U0_M_AXI1_ARPROT_UNCONNECTED[2:0]),
        .M_AXI1_ARQOS(NLW_U0_M_AXI1_ARQOS_UNCONNECTED[3:0]),
        .M_AXI1_ARREADY(M_AXI1_ARREADY),
        .M_AXI1_ARSIZE(NLW_U0_M_AXI1_ARSIZE_UNCONNECTED[2:0]),
        .M_AXI1_ARSNOOP(NLW_U0_M_AXI1_ARSNOOP_UNCONNECTED[3:0]),
        .M_AXI1_ARUSER(NLW_U0_M_AXI1_ARUSER_UNCONNECTED[0]),
        .M_AXI1_ARVALID(M_AXI1_ARVALID),
        .M_AXI1_AWADDR(M_AXI1_AWADDR),
        .M_AXI1_AWBAR(NLW_U0_M_AXI1_AWBAR_UNCONNECTED[1:0]),
        .M_AXI1_AWBURST(NLW_U0_M_AXI1_AWBURST_UNCONNECTED[1:0]),
        .M_AXI1_AWCACHE(NLW_U0_M_AXI1_AWCACHE_UNCONNECTED[3:0]),
        .M_AXI1_AWDOMAIN(NLW_U0_M_AXI1_AWDOMAIN_UNCONNECTED[1:0]),
        .M_AXI1_AWID(NLW_U0_M_AXI1_AWID_UNCONNECTED[0]),
        .M_AXI1_AWLEN(NLW_U0_M_AXI1_AWLEN_UNCONNECTED[7:0]),
        .M_AXI1_AWLOCK(NLW_U0_M_AXI1_AWLOCK_UNCONNECTED),
        .M_AXI1_AWPROT(NLW_U0_M_AXI1_AWPROT_UNCONNECTED[2:0]),
        .M_AXI1_AWQOS(NLW_U0_M_AXI1_AWQOS_UNCONNECTED[3:0]),
        .M_AXI1_AWREADY(M_AXI1_AWREADY),
        .M_AXI1_AWSIZE(NLW_U0_M_AXI1_AWSIZE_UNCONNECTED[2:0]),
        .M_AXI1_AWSNOOP(NLW_U0_M_AXI1_AWSNOOP_UNCONNECTED[2:0]),
        .M_AXI1_AWUSER(NLW_U0_M_AXI1_AWUSER_UNCONNECTED[0]),
        .M_AXI1_AWVALID(M_AXI1_AWVALID),
        .M_AXI1_BID(1'b0),
        .M_AXI1_BREADY(M_AXI1_BREADY),
        .M_AXI1_BRESP(M_AXI1_BRESP),
        .M_AXI1_BUSER(1'b0),
        .M_AXI1_BVALID(M_AXI1_BVALID),
        .M_AXI1_CDDATA(NLW_U0_M_AXI1_CDDATA_UNCONNECTED[31:0]),
        .M_AXI1_CDLAST(NLW_U0_M_AXI1_CDLAST_UNCONNECTED),
        .M_AXI1_CDREADY(1'b0),
        .M_AXI1_CDVALID(NLW_U0_M_AXI1_CDVALID_UNCONNECTED),
        .M_AXI1_CRREADY(1'b0),
        .M_AXI1_CRRESP(NLW_U0_M_AXI1_CRRESP_UNCONNECTED[4:0]),
        .M_AXI1_CRVALID(NLW_U0_M_AXI1_CRVALID_UNCONNECTED),
        .M_AXI1_RACK(NLW_U0_M_AXI1_RACK_UNCONNECTED),
        .M_AXI1_RDATA(M_AXI1_RDATA),
        .M_AXI1_RID(1'b0),
        .M_AXI1_RLAST(1'b0),
        .M_AXI1_RREADY(M_AXI1_RREADY),
        .M_AXI1_RRESP(M_AXI1_RRESP),
        .M_AXI1_RUSER(1'b0),
        .M_AXI1_RVALID(M_AXI1_RVALID),
        .M_AXI1_WACK(NLW_U0_M_AXI1_WACK_UNCONNECTED),
        .M_AXI1_WDATA(M_AXI1_WDATA),
        .M_AXI1_WLAST(NLW_U0_M_AXI1_WLAST_UNCONNECTED),
        .M_AXI1_WREADY(M_AXI1_WREADY),
        .M_AXI1_WSTRB(M_AXI1_WSTRB),
        .M_AXI1_WUSER(NLW_U0_M_AXI1_WUSER_UNCONNECTED[0]),
        .M_AXI1_WVALID(M_AXI1_WVALID),
        .M_AXI2_ACADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI2_ACPROT({1'b0,1'b0,1'b0}),
        .M_AXI2_ACREADY(NLW_U0_M_AXI2_ACREADY_UNCONNECTED),
        .M_AXI2_ACSNOOP({1'b0,1'b0,1'b0,1'b0}),
        .M_AXI2_ACVALID(1'b0),
        .M_AXI2_ARADDR(M_AXI2_ARADDR),
        .M_AXI2_ARBAR(NLW_U0_M_AXI2_ARBAR_UNCONNECTED[1:0]),
        .M_AXI2_ARBURST(NLW_U0_M_AXI2_ARBURST_UNCONNECTED[1:0]),
        .M_AXI2_ARCACHE(NLW_U0_M_AXI2_ARCACHE_UNCONNECTED[3:0]),
        .M_AXI2_ARDOMAIN(NLW_U0_M_AXI2_ARDOMAIN_UNCONNECTED[1:0]),
        .M_AXI2_ARID(NLW_U0_M_AXI2_ARID_UNCONNECTED[0]),
        .M_AXI2_ARLEN(NLW_U0_M_AXI2_ARLEN_UNCONNECTED[7:0]),
        .M_AXI2_ARLOCK(NLW_U0_M_AXI2_ARLOCK_UNCONNECTED),
        .M_AXI2_ARPROT(NLW_U0_M_AXI2_ARPROT_UNCONNECTED[2:0]),
        .M_AXI2_ARQOS(NLW_U0_M_AXI2_ARQOS_UNCONNECTED[3:0]),
        .M_AXI2_ARREADY(M_AXI2_ARREADY),
        .M_AXI2_ARSIZE(NLW_U0_M_AXI2_ARSIZE_UNCONNECTED[2:0]),
        .M_AXI2_ARSNOOP(NLW_U0_M_AXI2_ARSNOOP_UNCONNECTED[3:0]),
        .M_AXI2_ARUSER(NLW_U0_M_AXI2_ARUSER_UNCONNECTED[0]),
        .M_AXI2_ARVALID(M_AXI2_ARVALID),
        .M_AXI2_AWADDR(M_AXI2_AWADDR),
        .M_AXI2_AWBAR(NLW_U0_M_AXI2_AWBAR_UNCONNECTED[1:0]),
        .M_AXI2_AWBURST(NLW_U0_M_AXI2_AWBURST_UNCONNECTED[1:0]),
        .M_AXI2_AWCACHE(NLW_U0_M_AXI2_AWCACHE_UNCONNECTED[3:0]),
        .M_AXI2_AWDOMAIN(NLW_U0_M_AXI2_AWDOMAIN_UNCONNECTED[1:0]),
        .M_AXI2_AWID(NLW_U0_M_AXI2_AWID_UNCONNECTED[0]),
        .M_AXI2_AWLEN(NLW_U0_M_AXI2_AWLEN_UNCONNECTED[7:0]),
        .M_AXI2_AWLOCK(NLW_U0_M_AXI2_AWLOCK_UNCONNECTED),
        .M_AXI2_AWPROT(NLW_U0_M_AXI2_AWPROT_UNCONNECTED[2:0]),
        .M_AXI2_AWQOS(NLW_U0_M_AXI2_AWQOS_UNCONNECTED[3:0]),
        .M_AXI2_AWREADY(M_AXI2_AWREADY),
        .M_AXI2_AWSIZE(NLW_U0_M_AXI2_AWSIZE_UNCONNECTED[2:0]),
        .M_AXI2_AWSNOOP(NLW_U0_M_AXI2_AWSNOOP_UNCONNECTED[2:0]),
        .M_AXI2_AWUSER(NLW_U0_M_AXI2_AWUSER_UNCONNECTED[0]),
        .M_AXI2_AWVALID(M_AXI2_AWVALID),
        .M_AXI2_BID(1'b0),
        .M_AXI2_BREADY(M_AXI2_BREADY),
        .M_AXI2_BRESP(M_AXI2_BRESP),
        .M_AXI2_BUSER(1'b0),
        .M_AXI2_BVALID(M_AXI2_BVALID),
        .M_AXI2_CDDATA(NLW_U0_M_AXI2_CDDATA_UNCONNECTED[31:0]),
        .M_AXI2_CDLAST(NLW_U0_M_AXI2_CDLAST_UNCONNECTED),
        .M_AXI2_CDREADY(1'b0),
        .M_AXI2_CDVALID(NLW_U0_M_AXI2_CDVALID_UNCONNECTED),
        .M_AXI2_CRREADY(1'b0),
        .M_AXI2_CRRESP(NLW_U0_M_AXI2_CRRESP_UNCONNECTED[4:0]),
        .M_AXI2_CRVALID(NLW_U0_M_AXI2_CRVALID_UNCONNECTED),
        .M_AXI2_RACK(NLW_U0_M_AXI2_RACK_UNCONNECTED),
        .M_AXI2_RDATA(M_AXI2_RDATA),
        .M_AXI2_RID(1'b0),
        .M_AXI2_RLAST(1'b0),
        .M_AXI2_RREADY(M_AXI2_RREADY),
        .M_AXI2_RRESP(M_AXI2_RRESP),
        .M_AXI2_RUSER(1'b0),
        .M_AXI2_RVALID(M_AXI2_RVALID),
        .M_AXI2_WACK(NLW_U0_M_AXI2_WACK_UNCONNECTED),
        .M_AXI2_WDATA(M_AXI2_WDATA),
        .M_AXI2_WLAST(NLW_U0_M_AXI2_WLAST_UNCONNECTED),
        .M_AXI2_WREADY(M_AXI2_WREADY),
        .M_AXI2_WSTRB(M_AXI2_WSTRB),
        .M_AXI2_WUSER(NLW_U0_M_AXI2_WUSER_UNCONNECTED[0]),
        .M_AXI2_WVALID(M_AXI2_WVALID),
        .M_AXI3_ACADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI3_ACPROT({1'b0,1'b0,1'b0}),
        .M_AXI3_ACREADY(NLW_U0_M_AXI3_ACREADY_UNCONNECTED),
        .M_AXI3_ACSNOOP({1'b0,1'b0,1'b0,1'b0}),
        .M_AXI3_ACVALID(1'b0),
        .M_AXI3_ARADDR(M_AXI3_ARADDR),
        .M_AXI3_ARBAR(NLW_U0_M_AXI3_ARBAR_UNCONNECTED[1:0]),
        .M_AXI3_ARBURST(NLW_U0_M_AXI3_ARBURST_UNCONNECTED[1:0]),
        .M_AXI3_ARCACHE(NLW_U0_M_AXI3_ARCACHE_UNCONNECTED[3:0]),
        .M_AXI3_ARDOMAIN(NLW_U0_M_AXI3_ARDOMAIN_UNCONNECTED[1:0]),
        .M_AXI3_ARID(NLW_U0_M_AXI3_ARID_UNCONNECTED[0]),
        .M_AXI3_ARLEN(NLW_U0_M_AXI3_ARLEN_UNCONNECTED[7:0]),
        .M_AXI3_ARLOCK(NLW_U0_M_AXI3_ARLOCK_UNCONNECTED),
        .M_AXI3_ARPROT(NLW_U0_M_AXI3_ARPROT_UNCONNECTED[2:0]),
        .M_AXI3_ARQOS(NLW_U0_M_AXI3_ARQOS_UNCONNECTED[3:0]),
        .M_AXI3_ARREADY(M_AXI3_ARREADY),
        .M_AXI3_ARSIZE(NLW_U0_M_AXI3_ARSIZE_UNCONNECTED[2:0]),
        .M_AXI3_ARSNOOP(NLW_U0_M_AXI3_ARSNOOP_UNCONNECTED[3:0]),
        .M_AXI3_ARUSER(NLW_U0_M_AXI3_ARUSER_UNCONNECTED[0]),
        .M_AXI3_ARVALID(M_AXI3_ARVALID),
        .M_AXI3_AWADDR(M_AXI3_AWADDR),
        .M_AXI3_AWBAR(NLW_U0_M_AXI3_AWBAR_UNCONNECTED[1:0]),
        .M_AXI3_AWBURST(NLW_U0_M_AXI3_AWBURST_UNCONNECTED[1:0]),
        .M_AXI3_AWCACHE(NLW_U0_M_AXI3_AWCACHE_UNCONNECTED[3:0]),
        .M_AXI3_AWDOMAIN(NLW_U0_M_AXI3_AWDOMAIN_UNCONNECTED[1:0]),
        .M_AXI3_AWID(NLW_U0_M_AXI3_AWID_UNCONNECTED[0]),
        .M_AXI3_AWLEN(NLW_U0_M_AXI3_AWLEN_UNCONNECTED[7:0]),
        .M_AXI3_AWLOCK(NLW_U0_M_AXI3_AWLOCK_UNCONNECTED),
        .M_AXI3_AWPROT(NLW_U0_M_AXI3_AWPROT_UNCONNECTED[2:0]),
        .M_AXI3_AWQOS(NLW_U0_M_AXI3_AWQOS_UNCONNECTED[3:0]),
        .M_AXI3_AWREADY(M_AXI3_AWREADY),
        .M_AXI3_AWSIZE(NLW_U0_M_AXI3_AWSIZE_UNCONNECTED[2:0]),
        .M_AXI3_AWSNOOP(NLW_U0_M_AXI3_AWSNOOP_UNCONNECTED[2:0]),
        .M_AXI3_AWUSER(NLW_U0_M_AXI3_AWUSER_UNCONNECTED[0]),
        .M_AXI3_AWVALID(M_AXI3_AWVALID),
        .M_AXI3_BID(1'b0),
        .M_AXI3_BREADY(M_AXI3_BREADY),
        .M_AXI3_BRESP(M_AXI3_BRESP),
        .M_AXI3_BUSER(1'b0),
        .M_AXI3_BVALID(M_AXI3_BVALID),
        .M_AXI3_CDDATA(NLW_U0_M_AXI3_CDDATA_UNCONNECTED[31:0]),
        .M_AXI3_CDLAST(NLW_U0_M_AXI3_CDLAST_UNCONNECTED),
        .M_AXI3_CDREADY(1'b0),
        .M_AXI3_CDVALID(NLW_U0_M_AXI3_CDVALID_UNCONNECTED),
        .M_AXI3_CRREADY(1'b0),
        .M_AXI3_CRRESP(NLW_U0_M_AXI3_CRRESP_UNCONNECTED[4:0]),
        .M_AXI3_CRVALID(NLW_U0_M_AXI3_CRVALID_UNCONNECTED),
        .M_AXI3_RACK(NLW_U0_M_AXI3_RACK_UNCONNECTED),
        .M_AXI3_RDATA(M_AXI3_RDATA),
        .M_AXI3_RID(1'b0),
        .M_AXI3_RLAST(1'b0),
        .M_AXI3_RREADY(M_AXI3_RREADY),
        .M_AXI3_RRESP(M_AXI3_RRESP),
        .M_AXI3_RUSER(1'b0),
        .M_AXI3_RVALID(M_AXI3_RVALID),
        .M_AXI3_WACK(NLW_U0_M_AXI3_WACK_UNCONNECTED),
        .M_AXI3_WDATA(M_AXI3_WDATA),
        .M_AXI3_WLAST(NLW_U0_M_AXI3_WLAST_UNCONNECTED),
        .M_AXI3_WREADY(M_AXI3_WREADY),
        .M_AXI3_WSTRB(M_AXI3_WSTRB),
        .M_AXI3_WUSER(NLW_U0_M_AXI3_WUSER_UNCONNECTED[0]),
        .M_AXI3_WVALID(M_AXI3_WVALID),
        .M_AXIS1_TDATA(NLW_U0_M_AXIS1_TDATA_UNCONNECTED[31:0]),
        .M_AXIS1_TDEST(NLW_U0_M_AXIS1_TDEST_UNCONNECTED[0]),
        .M_AXIS1_TID(NLW_U0_M_AXIS1_TID_UNCONNECTED[0]),
        .M_AXIS1_TKEEP(NLW_U0_M_AXIS1_TKEEP_UNCONNECTED[3:0]),
        .M_AXIS1_TLAST(NLW_U0_M_AXIS1_TLAST_UNCONNECTED),
        .M_AXIS1_TREADY(1'b0),
        .M_AXIS1_TSTRB(NLW_U0_M_AXIS1_TSTRB_UNCONNECTED[3:0]),
        .M_AXIS1_TUSER(NLW_U0_M_AXIS1_TUSER_UNCONNECTED[0]),
        .M_AXIS1_TVALID(NLW_U0_M_AXIS1_TVALID_UNCONNECTED),
        .M_AXIS2_TDATA(NLW_U0_M_AXIS2_TDATA_UNCONNECTED[31:0]),
        .M_AXIS2_TDEST(NLW_U0_M_AXIS2_TDEST_UNCONNECTED[0]),
        .M_AXIS2_TID(NLW_U0_M_AXIS2_TID_UNCONNECTED[0]),
        .M_AXIS2_TKEEP(NLW_U0_M_AXIS2_TKEEP_UNCONNECTED[3:0]),
        .M_AXIS2_TLAST(NLW_U0_M_AXIS2_TLAST_UNCONNECTED),
        .M_AXIS2_TREADY(1'b0),
        .M_AXIS2_TSTRB(NLW_U0_M_AXIS2_TSTRB_UNCONNECTED[3:0]),
        .M_AXIS2_TUSER(NLW_U0_M_AXIS2_TUSER_UNCONNECTED[0]),
        .M_AXIS2_TVALID(NLW_U0_M_AXIS2_TVALID_UNCONNECTED),
        .M_AXIS3_TDATA(NLW_U0_M_AXIS3_TDATA_UNCONNECTED[31:0]),
        .M_AXIS3_TDEST(NLW_U0_M_AXIS3_TDEST_UNCONNECTED[0]),
        .M_AXIS3_TID(NLW_U0_M_AXIS3_TID_UNCONNECTED[0]),
        .M_AXIS3_TKEEP(NLW_U0_M_AXIS3_TKEEP_UNCONNECTED[3:0]),
        .M_AXIS3_TLAST(NLW_U0_M_AXIS3_TLAST_UNCONNECTED),
        .M_AXIS3_TREADY(1'b0),
        .M_AXIS3_TSTRB(NLW_U0_M_AXIS3_TSTRB_UNCONNECTED[3:0]),
        .M_AXIS3_TUSER(NLW_U0_M_AXIS3_TUSER_UNCONNECTED[0]),
        .M_AXIS3_TVALID(NLW_U0_M_AXIS3_TVALID_UNCONNECTED),
        .M_AXIS_TDATA(NLW_U0_M_AXIS_TDATA_UNCONNECTED[31:0]),
        .M_AXIS_TDATA_Test(NLW_U0_M_AXIS_TDATA_Test_UNCONNECTED[31:0]),
        .M_AXIS_TDEST(NLW_U0_M_AXIS_TDEST_UNCONNECTED[0]),
        .M_AXIS_TID(NLW_U0_M_AXIS_TID_UNCONNECTED[0]),
        .M_AXIS_TKEEP(NLW_U0_M_AXIS_TKEEP_UNCONNECTED[3:0]),
        .M_AXIS_TLAST(NLW_U0_M_AXIS_TLAST_UNCONNECTED),
        .M_AXIS_TLAST_Test(NLW_U0_M_AXIS_TLAST_Test_UNCONNECTED),
        .M_AXIS_TREADY(1'b0),
        .M_AXIS_TREADY_Test(1'b0),
        .M_AXIS_TSTRB(NLW_U0_M_AXIS_TSTRB_UNCONNECTED[3:0]),
        .M_AXIS_TUSER(NLW_U0_M_AXIS_TUSER_UNCONNECTED[0]),
        .M_AXIS_TVALID(NLW_U0_M_AXIS_TVALID_UNCONNECTED),
        .M_AXIS_TVALID_Test(NLW_U0_M_AXIS_TVALID_Test_UNCONNECTED),
        .M_AXI_ACADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_ACPROT({1'b0,1'b0,1'b0}),
        .M_AXI_ACREADY(NLW_U0_M_AXI_ACREADY_UNCONNECTED),
        .M_AXI_ACSNOOP({1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_ACVALID(1'b0),
        .M_AXI_ARADDR(NLW_U0_M_AXI_ARADDR_UNCONNECTED[5:0]),
        .M_AXI_ARBAR(NLW_U0_M_AXI_ARBAR_UNCONNECTED[1:0]),
        .M_AXI_ARBURST(NLW_U0_M_AXI_ARBURST_UNCONNECTED[1:0]),
        .M_AXI_ARCACHE(NLW_U0_M_AXI_ARCACHE_UNCONNECTED[3:0]),
        .M_AXI_ARDOMAIN(NLW_U0_M_AXI_ARDOMAIN_UNCONNECTED[1:0]),
        .M_AXI_ARID(NLW_U0_M_AXI_ARID_UNCONNECTED[0]),
        .M_AXI_ARLEN(NLW_U0_M_AXI_ARLEN_UNCONNECTED[7:0]),
        .M_AXI_ARLOCK(NLW_U0_M_AXI_ARLOCK_UNCONNECTED),
        .M_AXI_ARPROT(NLW_U0_M_AXI_ARPROT_UNCONNECTED[2:0]),
        .M_AXI_ARQOS(NLW_U0_M_AXI_ARQOS_UNCONNECTED[3:0]),
        .M_AXI_ARREADY(1'b0),
        .M_AXI_ARSIZE(NLW_U0_M_AXI_ARSIZE_UNCONNECTED[2:0]),
        .M_AXI_ARSNOOP(NLW_U0_M_AXI_ARSNOOP_UNCONNECTED[3:0]),
        .M_AXI_ARUSER(NLW_U0_M_AXI_ARUSER_UNCONNECTED[0]),
        .M_AXI_ARVALID(NLW_U0_M_AXI_ARVALID_UNCONNECTED),
        .M_AXI_AWADDR(NLW_U0_M_AXI_AWADDR_UNCONNECTED[5:0]),
        .M_AXI_AWBAR(NLW_U0_M_AXI_AWBAR_UNCONNECTED[1:0]),
        .M_AXI_AWBURST(NLW_U0_M_AXI_AWBURST_UNCONNECTED[1:0]),
        .M_AXI_AWCACHE(NLW_U0_M_AXI_AWCACHE_UNCONNECTED[3:0]),
        .M_AXI_AWDOMAIN(NLW_U0_M_AXI_AWDOMAIN_UNCONNECTED[1:0]),
        .M_AXI_AWID(NLW_U0_M_AXI_AWID_UNCONNECTED[0]),
        .M_AXI_AWLEN(NLW_U0_M_AXI_AWLEN_UNCONNECTED[7:0]),
        .M_AXI_AWLOCK(NLW_U0_M_AXI_AWLOCK_UNCONNECTED),
        .M_AXI_AWPROT(NLW_U0_M_AXI_AWPROT_UNCONNECTED[2:0]),
        .M_AXI_AWQOS(NLW_U0_M_AXI_AWQOS_UNCONNECTED[3:0]),
        .M_AXI_AWREADY(1'b0),
        .M_AXI_AWSIZE(NLW_U0_M_AXI_AWSIZE_UNCONNECTED[2:0]),
        .M_AXI_AWSNOOP(NLW_U0_M_AXI_AWSNOOP_UNCONNECTED[2:0]),
        .M_AXI_AWUSER(NLW_U0_M_AXI_AWUSER_UNCONNECTED[0]),
        .M_AXI_AWVALID(NLW_U0_M_AXI_AWVALID_UNCONNECTED),
        .M_AXI_BID(1'b0),
        .M_AXI_BREADY(NLW_U0_M_AXI_BREADY_UNCONNECTED),
        .M_AXI_BRESP({1'b0,1'b0}),
        .M_AXI_BUSER(1'b0),
        .M_AXI_BVALID(1'b0),
        .M_AXI_CDDATA(NLW_U0_M_AXI_CDDATA_UNCONNECTED[31:0]),
        .M_AXI_CDLAST(NLW_U0_M_AXI_CDLAST_UNCONNECTED),
        .M_AXI_CDREADY(1'b0),
        .M_AXI_CDVALID(NLW_U0_M_AXI_CDVALID_UNCONNECTED),
        .M_AXI_CRREADY(1'b0),
        .M_AXI_CRRESP(NLW_U0_M_AXI_CRRESP_UNCONNECTED[4:0]),
        .M_AXI_CRVALID(NLW_U0_M_AXI_CRVALID_UNCONNECTED),
        .M_AXI_RACK(NLW_U0_M_AXI_RACK_UNCONNECTED),
        .M_AXI_RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_RID(1'b0),
        .M_AXI_RLAST(1'b0),
        .M_AXI_RREADY(NLW_U0_M_AXI_RREADY_UNCONNECTED),
        .M_AXI_RRESP({1'b0,1'b0}),
        .M_AXI_RUSER(1'b0),
        .M_AXI_RVALID(1'b0),
        .M_AXI_WACK(NLW_U0_M_AXI_WACK_UNCONNECTED),
        .M_AXI_WDATA(NLW_U0_M_AXI_WDATA_UNCONNECTED[31:0]),
        .M_AXI_WLAST(NLW_U0_M_AXI_WLAST_UNCONNECTED),
        .M_AXI_WREADY(1'b0),
        .M_AXI_WSTRB(NLW_U0_M_AXI_WSTRB_UNCONNECTED[3:0]),
        .M_AXI_WUSER(NLW_U0_M_AXI_WUSER_UNCONNECTED[0]),
        .M_AXI_WVALID(NLW_U0_M_AXI_WVALID_UNCONNECTED),
        .M_BRAM1_Addr(NLW_U0_M_BRAM1_Addr_UNCONNECTED[0:31]),
        .M_BRAM1_Clk(NLW_U0_M_BRAM1_Clk_UNCONNECTED),
        .M_BRAM1_Din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_BRAM1_Dout(NLW_U0_M_BRAM1_Dout_UNCONNECTED[0:31]),
        .M_BRAM1_EN(NLW_U0_M_BRAM1_EN_UNCONNECTED),
        .M_BRAM1_Rst(NLW_U0_M_BRAM1_Rst_UNCONNECTED),
        .M_BRAM1_WE(NLW_U0_M_BRAM1_WE_UNCONNECTED[0:3]),
        .M_BRAM2_Addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_BRAM2_Clk(1'b0),
        .M_BRAM2_Din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_BRAM2_Dout({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_BRAM2_EN(1'b0),
        .M_BRAM2_Rst(1'b0),
        .M_BRAM2_WE({1'b0,1'b0,1'b0,1'b0}),
        .M_BRAM3_Addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_BRAM3_Clk(1'b0),
        .M_BRAM3_Din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_BRAM3_Dout({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_BRAM3_EN(1'b0),
        .M_BRAM3_Rst(1'b0),
        .M_BRAM3_WE({1'b0,1'b0,1'b0,1'b0}),
        .M_BRAM_MisMatch(NLW_U0_M_BRAM_MisMatch_UNCONNECTED),
        .M_IRQ(NLW_U0_M_IRQ_UNCONNECTED),
        .M_IRQ_Ack({1'b0,1'b0}),
        .M_IRQ_Address(NLW_U0_M_IRQ_Address_UNCONNECTED[0:31]),
        .Rst(1'b0),
        .S_AXI1_ACADDR(NLW_U0_S_AXI1_ACADDR_UNCONNECTED[5:0]),
        .S_AXI1_ACPROT(NLW_U0_S_AXI1_ACPROT_UNCONNECTED[2:0]),
        .S_AXI1_ACREADY(1'b0),
        .S_AXI1_ACSNOOP(NLW_U0_S_AXI1_ACSNOOP_UNCONNECTED[3:0]),
        .S_AXI1_ACVALID(NLW_U0_S_AXI1_ACVALID_UNCONNECTED),
        .S_AXI1_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI1_ARBAR({1'b0,1'b0}),
        .S_AXI1_ARBURST({1'b0,1'b0}),
        .S_AXI1_ARCACHE({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI1_ARDOMAIN({1'b0,1'b0}),
        .S_AXI1_ARID(1'b0),
        .S_AXI1_ARLEN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI1_ARLOCK(1'b0),
        .S_AXI1_ARPROT({1'b0,1'b0,1'b0}),
        .S_AXI1_ARQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI1_ARREADY(NLW_U0_S_AXI1_ARREADY_UNCONNECTED),
        .S_AXI1_ARSIZE({1'b0,1'b0,1'b0}),
        .S_AXI1_ARSNOOP({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI1_ARUSER(1'b0),
        .S_AXI1_ARVALID(1'b0),
        .S_AXI1_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI1_AWBAR({1'b0,1'b0}),
        .S_AXI1_AWBURST({1'b0,1'b0}),
        .S_AXI1_AWCACHE({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI1_AWDOMAIN({1'b0,1'b0}),
        .S_AXI1_AWID(1'b0),
        .S_AXI1_AWLEN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI1_AWLOCK(1'b0),
        .S_AXI1_AWPROT({1'b0,1'b0,1'b0}),
        .S_AXI1_AWQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI1_AWREADY(NLW_U0_S_AXI1_AWREADY_UNCONNECTED),
        .S_AXI1_AWSIZE({1'b0,1'b0,1'b0}),
        .S_AXI1_AWSNOOP({1'b0,1'b0,1'b0}),
        .S_AXI1_AWUSER(1'b0),
        .S_AXI1_AWVALID(1'b0),
        .S_AXI1_BID(NLW_U0_S_AXI1_BID_UNCONNECTED[0]),
        .S_AXI1_BREADY(1'b0),
        .S_AXI1_BRESP(NLW_U0_S_AXI1_BRESP_UNCONNECTED[1:0]),
        .S_AXI1_BUSER(NLW_U0_S_AXI1_BUSER_UNCONNECTED[0]),
        .S_AXI1_BVALID(NLW_U0_S_AXI1_BVALID_UNCONNECTED),
        .S_AXI1_CDDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI1_CDLAST(1'b0),
        .S_AXI1_CDREADY(NLW_U0_S_AXI1_CDREADY_UNCONNECTED),
        .S_AXI1_CDVALID(1'b0),
        .S_AXI1_CRREADY(NLW_U0_S_AXI1_CRREADY_UNCONNECTED),
        .S_AXI1_CRRESP({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI1_CRVALID(1'b0),
        .S_AXI1_RACK(1'b0),
        .S_AXI1_RDATA(NLW_U0_S_AXI1_RDATA_UNCONNECTED[31:0]),
        .S_AXI1_RID(NLW_U0_S_AXI1_RID_UNCONNECTED[0]),
        .S_AXI1_RLAST(NLW_U0_S_AXI1_RLAST_UNCONNECTED),
        .S_AXI1_RREADY(1'b0),
        .S_AXI1_RRESP(NLW_U0_S_AXI1_RRESP_UNCONNECTED[1:0]),
        .S_AXI1_RUSER(NLW_U0_S_AXI1_RUSER_UNCONNECTED[0]),
        .S_AXI1_RVALID(NLW_U0_S_AXI1_RVALID_UNCONNECTED),
        .S_AXI1_WACK(1'b0),
        .S_AXI1_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI1_WLAST(1'b0),
        .S_AXI1_WREADY(NLW_U0_S_AXI1_WREADY_UNCONNECTED),
        .S_AXI1_WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI1_WUSER(1'b0),
        .S_AXI1_WVALID(1'b0),
        .S_AXI2_ACADDR(NLW_U0_S_AXI2_ACADDR_UNCONNECTED[5:0]),
        .S_AXI2_ACPROT(NLW_U0_S_AXI2_ACPROT_UNCONNECTED[2:0]),
        .S_AXI2_ACREADY(1'b0),
        .S_AXI2_ACSNOOP(NLW_U0_S_AXI2_ACSNOOP_UNCONNECTED[3:0]),
        .S_AXI2_ACVALID(NLW_U0_S_AXI2_ACVALID_UNCONNECTED),
        .S_AXI2_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI2_ARBAR({1'b0,1'b0}),
        .S_AXI2_ARBURST({1'b0,1'b0}),
        .S_AXI2_ARCACHE({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI2_ARDOMAIN({1'b0,1'b0}),
        .S_AXI2_ARID(1'b0),
        .S_AXI2_ARLEN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI2_ARLOCK(1'b0),
        .S_AXI2_ARPROT({1'b0,1'b0,1'b0}),
        .S_AXI2_ARQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI2_ARREADY(NLW_U0_S_AXI2_ARREADY_UNCONNECTED),
        .S_AXI2_ARSIZE({1'b0,1'b0,1'b0}),
        .S_AXI2_ARSNOOP({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI2_ARUSER(1'b0),
        .S_AXI2_ARVALID(1'b0),
        .S_AXI2_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI2_AWBAR({1'b0,1'b0}),
        .S_AXI2_AWBURST({1'b0,1'b0}),
        .S_AXI2_AWCACHE({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI2_AWDOMAIN({1'b0,1'b0}),
        .S_AXI2_AWID(1'b0),
        .S_AXI2_AWLEN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI2_AWLOCK(1'b0),
        .S_AXI2_AWPROT({1'b0,1'b0,1'b0}),
        .S_AXI2_AWQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI2_AWREADY(NLW_U0_S_AXI2_AWREADY_UNCONNECTED),
        .S_AXI2_AWSIZE({1'b0,1'b0,1'b0}),
        .S_AXI2_AWSNOOP({1'b0,1'b0,1'b0}),
        .S_AXI2_AWUSER(1'b0),
        .S_AXI2_AWVALID(1'b0),
        .S_AXI2_BID(NLW_U0_S_AXI2_BID_UNCONNECTED[0]),
        .S_AXI2_BREADY(1'b0),
        .S_AXI2_BRESP(NLW_U0_S_AXI2_BRESP_UNCONNECTED[1:0]),
        .S_AXI2_BUSER(NLW_U0_S_AXI2_BUSER_UNCONNECTED[0]),
        .S_AXI2_BVALID(NLW_U0_S_AXI2_BVALID_UNCONNECTED),
        .S_AXI2_CDDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI2_CDLAST(1'b0),
        .S_AXI2_CDREADY(NLW_U0_S_AXI2_CDREADY_UNCONNECTED),
        .S_AXI2_CDVALID(1'b0),
        .S_AXI2_CRREADY(NLW_U0_S_AXI2_CRREADY_UNCONNECTED),
        .S_AXI2_CRRESP({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI2_CRVALID(1'b0),
        .S_AXI2_RACK(1'b0),
        .S_AXI2_RDATA(NLW_U0_S_AXI2_RDATA_UNCONNECTED[31:0]),
        .S_AXI2_RID(NLW_U0_S_AXI2_RID_UNCONNECTED[0]),
        .S_AXI2_RLAST(NLW_U0_S_AXI2_RLAST_UNCONNECTED),
        .S_AXI2_RREADY(1'b0),
        .S_AXI2_RRESP(NLW_U0_S_AXI2_RRESP_UNCONNECTED[1:0]),
        .S_AXI2_RUSER(NLW_U0_S_AXI2_RUSER_UNCONNECTED[0]),
        .S_AXI2_RVALID(NLW_U0_S_AXI2_RVALID_UNCONNECTED),
        .S_AXI2_WACK(1'b0),
        .S_AXI2_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI2_WLAST(1'b0),
        .S_AXI2_WREADY(NLW_U0_S_AXI2_WREADY_UNCONNECTED),
        .S_AXI2_WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI2_WUSER(1'b0),
        .S_AXI2_WVALID(1'b0),
        .S_AXI3_ACADDR(NLW_U0_S_AXI3_ACADDR_UNCONNECTED[5:0]),
        .S_AXI3_ACPROT(NLW_U0_S_AXI3_ACPROT_UNCONNECTED[2:0]),
        .S_AXI3_ACREADY(1'b0),
        .S_AXI3_ACSNOOP(NLW_U0_S_AXI3_ACSNOOP_UNCONNECTED[3:0]),
        .S_AXI3_ACVALID(NLW_U0_S_AXI3_ACVALID_UNCONNECTED),
        .S_AXI3_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI3_ARBAR({1'b0,1'b0}),
        .S_AXI3_ARBURST({1'b0,1'b0}),
        .S_AXI3_ARCACHE({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI3_ARDOMAIN({1'b0,1'b0}),
        .S_AXI3_ARID(1'b0),
        .S_AXI3_ARLEN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI3_ARLOCK(1'b0),
        .S_AXI3_ARPROT({1'b0,1'b0,1'b0}),
        .S_AXI3_ARQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI3_ARREADY(NLW_U0_S_AXI3_ARREADY_UNCONNECTED),
        .S_AXI3_ARSIZE({1'b0,1'b0,1'b0}),
        .S_AXI3_ARSNOOP({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI3_ARUSER(1'b0),
        .S_AXI3_ARVALID(1'b0),
        .S_AXI3_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI3_AWBAR({1'b0,1'b0}),
        .S_AXI3_AWBURST({1'b0,1'b0}),
        .S_AXI3_AWCACHE({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI3_AWDOMAIN({1'b0,1'b0}),
        .S_AXI3_AWID(1'b0),
        .S_AXI3_AWLEN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI3_AWLOCK(1'b0),
        .S_AXI3_AWPROT({1'b0,1'b0,1'b0}),
        .S_AXI3_AWQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI3_AWREADY(NLW_U0_S_AXI3_AWREADY_UNCONNECTED),
        .S_AXI3_AWSIZE({1'b0,1'b0,1'b0}),
        .S_AXI3_AWSNOOP({1'b0,1'b0,1'b0}),
        .S_AXI3_AWUSER(1'b0),
        .S_AXI3_AWVALID(1'b0),
        .S_AXI3_BID(NLW_U0_S_AXI3_BID_UNCONNECTED[0]),
        .S_AXI3_BREADY(1'b0),
        .S_AXI3_BRESP(NLW_U0_S_AXI3_BRESP_UNCONNECTED[1:0]),
        .S_AXI3_BUSER(NLW_U0_S_AXI3_BUSER_UNCONNECTED[0]),
        .S_AXI3_BVALID(NLW_U0_S_AXI3_BVALID_UNCONNECTED),
        .S_AXI3_CDDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI3_CDLAST(1'b0),
        .S_AXI3_CDREADY(NLW_U0_S_AXI3_CDREADY_UNCONNECTED),
        .S_AXI3_CDVALID(1'b0),
        .S_AXI3_CRREADY(NLW_U0_S_AXI3_CRREADY_UNCONNECTED),
        .S_AXI3_CRRESP({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI3_CRVALID(1'b0),
        .S_AXI3_RACK(1'b0),
        .S_AXI3_RDATA(NLW_U0_S_AXI3_RDATA_UNCONNECTED[31:0]),
        .S_AXI3_RID(NLW_U0_S_AXI3_RID_UNCONNECTED[0]),
        .S_AXI3_RLAST(NLW_U0_S_AXI3_RLAST_UNCONNECTED),
        .S_AXI3_RREADY(1'b0),
        .S_AXI3_RRESP(NLW_U0_S_AXI3_RRESP_UNCONNECTED[1:0]),
        .S_AXI3_RUSER(NLW_U0_S_AXI3_RUSER_UNCONNECTED[0]),
        .S_AXI3_RVALID(NLW_U0_S_AXI3_RVALID_UNCONNECTED),
        .S_AXI3_WACK(1'b0),
        .S_AXI3_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI3_WLAST(1'b0),
        .S_AXI3_WREADY(NLW_U0_S_AXI3_WREADY_UNCONNECTED),
        .S_AXI3_WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI3_WUSER(1'b0),
        .S_AXI3_WVALID(1'b0),
        .S_AXIS1_TDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXIS1_TDEST(1'b0),
        .S_AXIS1_TID(1'b0),
        .S_AXIS1_TKEEP({1'b0,1'b0,1'b0,1'b0}),
        .S_AXIS1_TLAST(1'b0),
        .S_AXIS1_TREADY(NLW_U0_S_AXIS1_TREADY_UNCONNECTED),
        .S_AXIS1_TSTRB({1'b0,1'b0,1'b0,1'b0}),
        .S_AXIS1_TUSER(1'b0),
        .S_AXIS1_TVALID(1'b0),
        .S_AXIS2_TDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXIS2_TDEST(1'b0),
        .S_AXIS2_TID(1'b0),
        .S_AXIS2_TKEEP({1'b0,1'b0,1'b0,1'b0}),
        .S_AXIS2_TLAST(1'b0),
        .S_AXIS2_TREADY(NLW_U0_S_AXIS2_TREADY_UNCONNECTED),
        .S_AXIS2_TSTRB({1'b0,1'b0,1'b0,1'b0}),
        .S_AXIS2_TUSER(1'b0),
        .S_AXIS2_TVALID(1'b0),
        .S_AXIS3_TDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXIS3_TDEST(1'b0),
        .S_AXIS3_TID(1'b0),
        .S_AXIS3_TKEEP({1'b0,1'b0,1'b0,1'b0}),
        .S_AXIS3_TLAST(1'b0),
        .S_AXIS3_TREADY(NLW_U0_S_AXIS3_TREADY_UNCONNECTED),
        .S_AXIS3_TSTRB({1'b0,1'b0,1'b0,1'b0}),
        .S_AXIS3_TUSER(1'b0),
        .S_AXIS3_TVALID(1'b0),
        .S_AXIS_TDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXIS_TDATA_Test({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXIS_TDEST(1'b0),
        .S_AXIS_TID(1'b0),
        .S_AXIS_TKEEP({1'b0,1'b0,1'b0,1'b0}),
        .S_AXIS_TLAST(1'b0),
        .S_AXIS_TLAST_Test(1'b0),
        .S_AXIS_TREADY(NLW_U0_S_AXIS_TREADY_UNCONNECTED),
        .S_AXIS_TREADY_Test(NLW_U0_S_AXIS_TREADY_Test_UNCONNECTED),
        .S_AXIS_TSTRB({1'b0,1'b0,1'b0,1'b0}),
        .S_AXIS_TUSER(1'b0),
        .S_AXIS_TVALID(1'b0),
        .S_AXIS_TVALID_Test(1'b0),
        .S_AXI_ACADDR(NLW_U0_S_AXI_ACADDR_UNCONNECTED[5:0]),
        .S_AXI_ACPROT(NLW_U0_S_AXI_ACPROT_UNCONNECTED[2:0]),
        .S_AXI_ACREADY(1'b0),
        .S_AXI_ACSNOOP(NLW_U0_S_AXI_ACSNOOP_UNCONNECTED[3:0]),
        .S_AXI_ACVALID(NLW_U0_S_AXI_ACVALID_UNCONNECTED),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARBAR({1'b0,1'b0}),
        .S_AXI_ARBURST({1'b0,1'b0}),
        .S_AXI_ARCACHE({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_ARDOMAIN({1'b0,1'b0}),
        .S_AXI_ARID(1'b0),
        .S_AXI_ARLEN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_ARLOCK(1'b0),
        .S_AXI_ARPROT({1'b0,1'b0,1'b0}),
        .S_AXI_ARQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARSIZE({1'b0,1'b0,1'b0}),
        .S_AXI_ARSNOOP({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_ARUSER(1'b0),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWBAR({1'b0,1'b0}),
        .S_AXI_AWBURST({1'b0,1'b0}),
        .S_AXI_AWCACHE({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_AWDOMAIN({1'b0,1'b0}),
        .S_AXI_AWID(1'b0),
        .S_AXI_AWLEN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_AWLOCK(1'b0),
        .S_AXI_AWPROT({1'b0,1'b0,1'b0}),
        .S_AXI_AWQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWSIZE({1'b0,1'b0,1'b0}),
        .S_AXI_AWSNOOP({1'b0,1'b0,1'b0}),
        .S_AXI_AWUSER(1'b0),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BID(NLW_U0_S_AXI_BID_UNCONNECTED[0]),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BRESP(S_AXI_BRESP),
        .S_AXI_BUSER(NLW_U0_S_AXI_BUSER_UNCONNECTED[0]),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_CDDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_CDLAST(1'b0),
        .S_AXI_CDREADY(NLW_U0_S_AXI_CDREADY_UNCONNECTED),
        .S_AXI_CDVALID(1'b0),
        .S_AXI_CRREADY(NLW_U0_S_AXI_CRREADY_UNCONNECTED),
        .S_AXI_CRRESP({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_CRVALID(1'b0),
        .S_AXI_RACK(1'b0),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RID(NLW_U0_S_AXI_RID_UNCONNECTED[0]),
        .S_AXI_RLAST(NLW_U0_S_AXI_RLAST_UNCONNECTED),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RRESP(S_AXI_RRESP),
        .S_AXI_RUSER(NLW_U0_S_AXI_RUSER_UNCONNECTED[0]),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WACK(1'b0),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WLAST(1'b0),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WUSER(1'b0),
        .S_AXI_WVALID(S_AXI_WVALID),
        .S_BRAM_Addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_BRAM_Clk(1'b0),
        .S_BRAM_Din(NLW_U0_S_BRAM_Din_UNCONNECTED[0:31]),
        .S_BRAM_Dout({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_BRAM_EN(1'b0),
        .S_BRAM_Rst(1'b0),
        .S_BRAM_WE({1'b0,1'b0,1'b0,1'b0}),
        .S_IRQ1(1'b0),
        .S_IRQ1_Ack(NLW_U0_S_IRQ1_Ack_UNCONNECTED[0:1]),
        .S_IRQ1_Address({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_IRQ2(1'b0),
        .S_IRQ2_Ack(NLW_U0_S_IRQ2_Ack_UNCONNECTED[0:1]),
        .S_IRQ2_Address({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_IRQ3(1'b0),
        .S_IRQ3_Ack(NLW_U0_S_IRQ3_Ack_UNCONNECTED[0:1]),
        .S_IRQ3_Address({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_LMB1_ABus(NLW_U0_S_LMB1_ABus_UNCONNECTED[0:31]),
        .S_LMB1_AddrStrobe(NLW_U0_S_LMB1_AddrStrobe_UNCONNECTED),
        .S_LMB1_BE(NLW_U0_S_LMB1_BE_UNCONNECTED[0:3]),
        .S_LMB1_ReadStrobe(NLW_U0_S_LMB1_ReadStrobe_UNCONNECTED),
        .S_LMB1_WriteDBus(NLW_U0_S_LMB1_WriteDBus_UNCONNECTED[0:31]),
        .S_LMB1_WriteStrobe(NLW_U0_S_LMB1_WriteStrobe_UNCONNECTED),
        .S_LMB2_ABus(NLW_U0_S_LMB2_ABus_UNCONNECTED[0:31]),
        .S_LMB2_AddrStrobe(NLW_U0_S_LMB2_AddrStrobe_UNCONNECTED),
        .S_LMB2_BE(NLW_U0_S_LMB2_BE_UNCONNECTED[0:3]),
        .S_LMB2_ReadStrobe(NLW_U0_S_LMB2_ReadStrobe_UNCONNECTED),
        .S_LMB2_WriteDBus(NLW_U0_S_LMB2_WriteDBus_UNCONNECTED[0:31]),
        .S_LMB2_WriteStrobe(NLW_U0_S_LMB2_WriteStrobe_UNCONNECTED),
        .S_LMB3_ABus(NLW_U0_S_LMB3_ABus_UNCONNECTED[0:31]),
        .S_LMB3_AddrStrobe(NLW_U0_S_LMB3_AddrStrobe_UNCONNECTED),
        .S_LMB3_BE(NLW_U0_S_LMB3_BE_UNCONNECTED[0:3]),
        .S_LMB3_ReadStrobe(NLW_U0_S_LMB3_ReadStrobe_UNCONNECTED),
        .S_LMB3_WriteDBus(NLW_U0_S_LMB3_WriteDBus_UNCONNECTED[0:31]),
        .S_LMB3_WriteStrobe(NLW_U0_S_LMB3_WriteStrobe_UNCONNECTED),
        .S_LMB_ABus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_LMB_AddrStrobe(1'b0),
        .S_LMB_BE({1'b0,1'b0,1'b0,1'b0}),
        .S_LMB_ReadStrobe(1'b0),
        .S_LMB_WriteDBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_LMB_WriteStrobe(1'b0),
        .S_Sl1_CE(1'b0),
        .S_Sl1_DBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_Sl1_Ready(1'b0),
        .S_Sl1_UE(1'b0),
        .S_Sl1_Wait(1'b0),
        .S_Sl2_CE(1'b0),
        .S_Sl2_DBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_Sl2_Ready(1'b0),
        .S_Sl2_UE(1'b0),
        .S_Sl2_Wait(1'b0),
        .S_Sl3_CE(1'b0),
        .S_Sl3_DBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_Sl3_Ready(1'b0),
        .S_Sl3_UE(1'b0),
        .S_Sl3_Wait(1'b0),
        .S_Sl_CE(NLW_U0_S_Sl_CE_UNCONNECTED),
        .S_Sl_DBus(NLW_U0_S_Sl_DBus_UNCONNECTED[0:31]),
        .S_Sl_Ready(NLW_U0_S_Sl_Ready_UNCONNECTED),
        .S_Sl_UE(NLW_U0_S_Sl_UE_UNCONNECTED),
        .S_Sl_Wait(NLW_U0_S_Sl_Wait_UNCONNECTED),
        .Sl1_CE(NLW_U0_Sl1_CE_UNCONNECTED),
        .Sl1_DBus(NLW_U0_Sl1_DBus_UNCONNECTED[0:31]),
        .Sl1_Ready(NLW_U0_Sl1_Ready_UNCONNECTED),
        .Sl1_UE(NLW_U0_Sl1_UE_UNCONNECTED),
        .Sl1_Wait(NLW_U0_Sl1_Wait_UNCONNECTED),
        .Sl2_CE(NLW_U0_Sl2_CE_UNCONNECTED),
        .Sl2_DBus(NLW_U0_Sl2_DBus_UNCONNECTED[0:31]),
        .Sl2_Ready(NLW_U0_Sl2_Ready_UNCONNECTED),
        .Sl2_UE(NLW_U0_Sl2_UE_UNCONNECTED),
        .Sl2_Wait(NLW_U0_Sl2_Wait_UNCONNECTED),
        .Sl3_CE(NLW_U0_Sl3_CE_UNCONNECTED),
        .Sl3_DBus(NLW_U0_Sl3_DBus_UNCONNECTED[0:31]),
        .Sl3_Ready(NLW_U0_Sl3_Ready_UNCONNECTED),
        .Sl3_UE(NLW_U0_Sl3_UE_UNCONNECTED),
        .Sl3_Wait(NLW_U0_Sl3_Wait_UNCONNECTED),
        .Sl_CE(1'b0),
        .Sl_DBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Sl_Ready(1'b0),
        .Sl_UE(1'b0),
        .Sl_Wait(1'b0),
        .TMR_Disable(1'b0),
        .Test_Comparator({1'b0,1'b0}),
        .Trace1_DCache_Hit(1'b0),
        .Trace1_DCache_Rdy(1'b0),
        .Trace1_DCache_Read(1'b0),
        .Trace1_DCache_Req(1'b0),
        .Trace1_Data_Access(1'b0),
        .Trace1_Data_Address({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Trace1_Data_Byte_Enable({1'b0,1'b0,1'b0,1'b0}),
        .Trace1_Data_Read(1'b0),
        .Trace1_Data_Write(1'b0),
        .Trace1_Data_Write_Value({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Trace1_Delay_Slot(1'b0),
        .Trace1_EX_PipeRun(1'b0),
        .Trace1_Exception_Kind({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Trace1_Exception_Taken(1'b0),
        .Trace1_ICache_Hit(1'b0),
        .Trace1_ICache_Rdy(1'b0),
        .Trace1_ICache_Req(1'b0),
        .Trace1_Instruction({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Trace1_Jump_Hit(1'b0),
        .Trace1_Jump_Taken(1'b0),
        .Trace1_MB_Halted(1'b0),
        .Trace1_MEM_PipeRun(1'b0),
        .Trace1_MSR_Reg({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Trace1_New_Reg_Value({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Trace1_OF_PipeRun(1'b0),
        .Trace1_PC({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Trace1_PID_Reg({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Trace1_Reg_Addr({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Trace1_Reg_Write(1'b0),
        .Trace1_Valid_Instr(1'b0),
        .Trace2_DCache_Hit(1'b0),
        .Trace2_DCache_Rdy(1'b0),
        .Trace2_DCache_Read(1'b0),
        .Trace2_DCache_Req(1'b0),
        .Trace2_Data_Access(1'b0),
        .Trace2_Data_Address({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Trace2_Data_Byte_Enable({1'b0,1'b0,1'b0,1'b0}),
        .Trace2_Data_Read(1'b0),
        .Trace2_Data_Write(1'b0),
        .Trace2_Data_Write_Value({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Trace2_Delay_Slot(1'b0),
        .Trace2_EX_PipeRun(1'b0),
        .Trace2_Exception_Kind({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Trace2_Exception_Taken(1'b0),
        .Trace2_ICache_Hit(1'b0),
        .Trace2_ICache_Rdy(1'b0),
        .Trace2_ICache_Req(1'b0),
        .Trace2_Instruction({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Trace2_Jump_Hit(1'b0),
        .Trace2_Jump_Taken(1'b0),
        .Trace2_MB_Halted(1'b0),
        .Trace2_MEM_PipeRun(1'b0),
        .Trace2_MSR_Reg({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Trace2_New_Reg_Value({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Trace2_OF_PipeRun(1'b0),
        .Trace2_PC({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Trace2_PID_Reg({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Trace2_Reg_Addr({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Trace2_Reg_Write(1'b0),
        .Trace2_Valid_Instr(1'b0),
        .Trace3_DCache_Hit(1'b0),
        .Trace3_DCache_Rdy(1'b0),
        .Trace3_DCache_Read(1'b0),
        .Trace3_DCache_Req(1'b0),
        .Trace3_Data_Access(1'b0),
        .Trace3_Data_Address({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Trace3_Data_Byte_Enable({1'b0,1'b0,1'b0,1'b0}),
        .Trace3_Data_Read(1'b0),
        .Trace3_Data_Write(1'b0),
        .Trace3_Data_Write_Value({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Trace3_Delay_Slot(1'b0),
        .Trace3_EX_PipeRun(1'b0),
        .Trace3_Exception_Kind({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Trace3_Exception_Taken(1'b0),
        .Trace3_ICache_Hit(1'b0),
        .Trace3_ICache_Rdy(1'b0),
        .Trace3_ICache_Req(1'b0),
        .Trace3_Instruction({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Trace3_Jump_Hit(1'b0),
        .Trace3_Jump_Taken(1'b0),
        .Trace3_MB_Halted(1'b0),
        .Trace3_MEM_PipeRun(1'b0),
        .Trace3_MSR_Reg({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Trace3_New_Reg_Value({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Trace3_OF_PipeRun(1'b0),
        .Trace3_PC({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Trace3_PID_Reg({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Trace3_Reg_Addr({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Trace3_Reg_Write(1'b0),
        .Trace3_Valid_Instr(1'b0),
        .Trace_DCache_Hit(NLW_U0_Trace_DCache_Hit_UNCONNECTED),
        .Trace_DCache_Rdy(NLW_U0_Trace_DCache_Rdy_UNCONNECTED),
        .Trace_DCache_Read(NLW_U0_Trace_DCache_Read_UNCONNECTED),
        .Trace_DCache_Req(NLW_U0_Trace_DCache_Req_UNCONNECTED),
        .Trace_Data_Access(NLW_U0_Trace_Data_Access_UNCONNECTED),
        .Trace_Data_Address(NLW_U0_Trace_Data_Address_UNCONNECTED[0:31]),
        .Trace_Data_Byte_Enable(NLW_U0_Trace_Data_Byte_Enable_UNCONNECTED[0:3]),
        .Trace_Data_Read(NLW_U0_Trace_Data_Read_UNCONNECTED),
        .Trace_Data_Write(NLW_U0_Trace_Data_Write_UNCONNECTED),
        .Trace_Data_Write_Value(NLW_U0_Trace_Data_Write_Value_UNCONNECTED[0:31]),
        .Trace_Delay_Slot(NLW_U0_Trace_Delay_Slot_UNCONNECTED),
        .Trace_EX_PipeRun(NLW_U0_Trace_EX_PipeRun_UNCONNECTED),
        .Trace_Exception_Kind(NLW_U0_Trace_Exception_Kind_UNCONNECTED[0:4]),
        .Trace_Exception_Taken(NLW_U0_Trace_Exception_Taken_UNCONNECTED),
        .Trace_ICache_Hit(NLW_U0_Trace_ICache_Hit_UNCONNECTED),
        .Trace_ICache_Rdy(NLW_U0_Trace_ICache_Rdy_UNCONNECTED),
        .Trace_ICache_Req(NLW_U0_Trace_ICache_Req_UNCONNECTED),
        .Trace_Instruction(NLW_U0_Trace_Instruction_UNCONNECTED[0:31]),
        .Trace_Jump_Hit(NLW_U0_Trace_Jump_Hit_UNCONNECTED),
        .Trace_Jump_Taken(NLW_U0_Trace_Jump_Taken_UNCONNECTED),
        .Trace_MB_Halted(NLW_U0_Trace_MB_Halted_UNCONNECTED),
        .Trace_MEM_PipeRun(NLW_U0_Trace_MEM_PipeRun_UNCONNECTED),
        .Trace_MSR_Reg(NLW_U0_Trace_MSR_Reg_UNCONNECTED[0:14]),
        .Trace_New_Reg_Value(NLW_U0_Trace_New_Reg_Value_UNCONNECTED[0:31]),
        .Trace_OF_PipeRun(NLW_U0_Trace_OF_PipeRun_UNCONNECTED),
        .Trace_PC(NLW_U0_Trace_PC_UNCONNECTED[0:31]),
        .Trace_PID_Reg(NLW_U0_Trace_PID_Reg_UNCONNECTED[0:7]),
        .Trace_Reg_Addr(NLW_U0_Trace_Reg_Addr_UNCONNECTED[0:4]),
        .Trace_Reg_Write(NLW_U0_Trace_Reg_Write_UNCONNECTED),
        .Trace_Valid_Instr(NLW_U0_Trace_Valid_Instr_UNCONNECTED),
        .UART1_BAUDOUTn(1'b0),
        .UART1_CTSn(NLW_U0_UART1_CTSn_UNCONNECTED),
        .UART1_DCDn(NLW_U0_UART1_DCDn_UNCONNECTED),
        .UART1_DDIS(1'b0),
        .UART1_DSRn(NLW_U0_UART1_DSRn_UNCONNECTED),
        .UART1_DTRn(1'b0),
        .UART1_OUT1n(1'b0),
        .UART1_OUT2n(1'b0),
        .UART1_RCLK(NLW_U0_UART1_RCLK_UNCONNECTED),
        .UART1_RI(NLW_U0_UART1_RI_UNCONNECTED),
        .UART1_RTSn(1'b0),
        .UART1_RXRDYn(1'b0),
        .UART1_RxD(NLW_U0_UART1_RxD_UNCONNECTED),
        .UART1_TXRDYn(1'b0),
        .UART1_TxD(1'b0),
        .UART1_XIN(NLW_U0_UART1_XIN_UNCONNECTED),
        .UART1_XOUT(1'b0),
        .UART2_BAUDOUTn(1'b0),
        .UART2_CTSn(NLW_U0_UART2_CTSn_UNCONNECTED),
        .UART2_DCDn(NLW_U0_UART2_DCDn_UNCONNECTED),
        .UART2_DDIS(1'b0),
        .UART2_DSRn(NLW_U0_UART2_DSRn_UNCONNECTED),
        .UART2_DTRn(1'b0),
        .UART2_OUT1n(1'b0),
        .UART2_OUT2n(1'b0),
        .UART2_RCLK(NLW_U0_UART2_RCLK_UNCONNECTED),
        .UART2_RI(NLW_U0_UART2_RI_UNCONNECTED),
        .UART2_RTSn(1'b0),
        .UART2_RXRDYn(1'b0),
        .UART2_RxD(NLW_U0_UART2_RxD_UNCONNECTED),
        .UART2_TXRDYn(1'b0),
        .UART2_TxD(1'b0),
        .UART2_XIN(NLW_U0_UART2_XIN_UNCONNECTED),
        .UART2_XOUT(1'b0),
        .UART3_BAUDOUTn(1'b0),
        .UART3_CTSn(NLW_U0_UART3_CTSn_UNCONNECTED),
        .UART3_DCDn(NLW_U0_UART3_DCDn_UNCONNECTED),
        .UART3_DDIS(1'b0),
        .UART3_DSRn(NLW_U0_UART3_DSRn_UNCONNECTED),
        .UART3_DTRn(1'b0),
        .UART3_OUT1n(1'b0),
        .UART3_OUT2n(1'b0),
        .UART3_RCLK(NLW_U0_UART3_RCLK_UNCONNECTED),
        .UART3_RI(NLW_U0_UART3_RI_UNCONNECTED),
        .UART3_RTSn(1'b0),
        .UART3_RXRDYn(1'b0),
        .UART3_RxD(NLW_U0_UART3_RxD_UNCONNECTED),
        .UART3_TXRDYn(1'b0),
        .UART3_TxD(1'b0),
        .UART3_XIN(NLW_U0_UART3_XIN_UNCONNECTED),
        .UART3_XOUT(1'b0),
        .UART_BAUDOUTn(NLW_U0_UART_BAUDOUTn_UNCONNECTED),
        .UART_CTSn(1'b0),
        .UART_DCDn(1'b0),
        .UART_DDIS(NLW_U0_UART_DDIS_UNCONNECTED),
        .UART_DSRn(1'b0),
        .UART_DTRn(NLW_U0_UART_DTRn_UNCONNECTED),
        .UART_OUT1n(NLW_U0_UART_OUT1n_UNCONNECTED),
        .UART_OUT2n(NLW_U0_UART_OUT2n_UNCONNECTED),
        .UART_RCLK(1'b0),
        .UART_RI(1'b0),
        .UART_RTSn(NLW_U0_UART_RTSn_UNCONNECTED),
        .UART_RXRDYn(NLW_U0_UART_RXRDYn_UNCONNECTED),
        .UART_RxD(1'b0),
        .UART_TXRDYn(NLW_U0_UART_TXRDYn_UNCONNECTED),
        .UART_TxD(NLW_U0_UART_TxD_UNCONNECTED),
        .UART_XIN(1'b0),
        .UART_XOUT(NLW_U0_UART_XOUT_UNCONNECTED));
endmodule

module bd_hybrid_tmr_ecc_tmr_voter_0_1_s_axi_voter
   (S_AXI_RVALID,
    S_AXI_RRESP,
    S_AXI_RDATA,
    S_AXI_ARREADY,
    S_AXI_BVALID,
    S_AXI_BRESP,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    M_AXI1_RVALID,
    M_AXI3_RVALID,
    M_AXI2_RVALID,
    M_AXI1_RRESP,
    M_AXI3_RRESP,
    M_AXI2_RRESP,
    M_AXI1_RDATA,
    M_AXI3_RDATA,
    M_AXI2_RDATA,
    M_AXI1_ARREADY,
    M_AXI3_ARREADY,
    M_AXI2_ARREADY,
    M_AXI1_BVALID,
    M_AXI3_BVALID,
    M_AXI2_BVALID,
    M_AXI1_BRESP,
    M_AXI3_BRESP,
    M_AXI2_BRESP,
    M_AXI1_WREADY,
    M_AXI3_WREADY,
    M_AXI2_WREADY,
    M_AXI1_AWREADY,
    M_AXI3_AWREADY,
    M_AXI2_AWREADY);
  output S_AXI_RVALID;
  output [1:0]S_AXI_RRESP;
  output [31:0]S_AXI_RDATA;
  output S_AXI_ARREADY;
  output S_AXI_BVALID;
  output [1:0]S_AXI_BRESP;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  input M_AXI1_RVALID;
  input M_AXI3_RVALID;
  input M_AXI2_RVALID;
  input [1:0]M_AXI1_RRESP;
  input [1:0]M_AXI3_RRESP;
  input [1:0]M_AXI2_RRESP;
  input [31:0]M_AXI1_RDATA;
  input [31:0]M_AXI3_RDATA;
  input [31:0]M_AXI2_RDATA;
  input M_AXI1_ARREADY;
  input M_AXI3_ARREADY;
  input M_AXI2_ARREADY;
  input M_AXI1_BVALID;
  input M_AXI3_BVALID;
  input M_AXI2_BVALID;
  input [1:0]M_AXI1_BRESP;
  input [1:0]M_AXI3_BRESP;
  input [1:0]M_AXI2_BRESP;
  input M_AXI1_WREADY;
  input M_AXI3_WREADY;
  input M_AXI2_WREADY;
  input M_AXI1_AWREADY;
  input M_AXI3_AWREADY;
  input M_AXI2_AWREADY;

  wire M_AXI1_ARREADY;
  wire M_AXI1_AWREADY;
  wire [1:0]M_AXI1_BRESP;
  wire M_AXI1_BVALID;
  wire [31:0]M_AXI1_RDATA;
  wire [1:0]M_AXI1_RRESP;
  wire M_AXI1_RVALID;
  wire M_AXI1_WREADY;
  wire M_AXI2_ARREADY;
  wire M_AXI2_AWREADY;
  wire [1:0]M_AXI2_BRESP;
  wire M_AXI2_BVALID;
  wire [31:0]M_AXI2_RDATA;
  wire [1:0]M_AXI2_RRESP;
  wire M_AXI2_RVALID;
  wire M_AXI2_WREADY;
  wire M_AXI3_ARREADY;
  wire M_AXI3_AWREADY;
  wire [1:0]M_AXI3_BRESP;
  wire M_AXI3_BVALID;
  wire [31:0]M_AXI3_RDATA;
  wire [1:0]M_AXI3_RRESP;
  wire M_AXI3_RVALID;
  wire M_AXI3_WREADY;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire [1:0]S_AXI_BRESP;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire [1:0]S_AXI_RRESP;
  wire S_AXI_RVALID;
  wire S_AXI_WREADY;

  bd_hybrid_tmr_ecc_tmr_voter_0_1_Voter vote_I
       (.M_AXI1_ARREADY(M_AXI1_ARREADY),
        .M_AXI1_AWREADY(M_AXI1_AWREADY),
        .M_AXI1_BRESP(M_AXI1_BRESP),
        .M_AXI1_BVALID(M_AXI1_BVALID),
        .M_AXI1_RDATA(M_AXI1_RDATA),
        .M_AXI1_RRESP(M_AXI1_RRESP),
        .M_AXI1_RVALID(M_AXI1_RVALID),
        .M_AXI1_WREADY(M_AXI1_WREADY),
        .M_AXI2_ARREADY(M_AXI2_ARREADY),
        .M_AXI2_AWREADY(M_AXI2_AWREADY),
        .M_AXI2_BRESP(M_AXI2_BRESP),
        .M_AXI2_BVALID(M_AXI2_BVALID),
        .M_AXI2_RDATA(M_AXI2_RDATA),
        .M_AXI2_RRESP(M_AXI2_RRESP),
        .M_AXI2_RVALID(M_AXI2_RVALID),
        .M_AXI2_WREADY(M_AXI2_WREADY),
        .M_AXI3_ARREADY(M_AXI3_ARREADY),
        .M_AXI3_AWREADY(M_AXI3_AWREADY),
        .M_AXI3_BRESP(M_AXI3_BRESP),
        .M_AXI3_BVALID(M_AXI3_BVALID),
        .M_AXI3_RDATA(M_AXI3_RDATA),
        .M_AXI3_RRESP(M_AXI3_RRESP),
        .M_AXI3_RVALID(M_AXI3_RVALID),
        .M_AXI3_WREADY(M_AXI3_WREADY),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_BRESP(S_AXI_BRESP),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RRESP(S_AXI_RRESP),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WREADY(S_AXI_WREADY));
endmodule

(* C_ADDR_SIZE = "32" *) (* C_AXIS_DATA_WIDTH = "32" *) (* C_AXIS_DEST_WIDTH = "1" *) 
(* C_AXIS_ID_WIDTH = "1" *) (* C_AXIS_USER_WIDTH = "1" *) (* C_AXI_ADDR_WIDTH = "6" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "32" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_RUSER_WIDTH = "1" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMPARATOR = "0" *) (* C_DATA_SIZE = "32" *) 
(* C_DISCRETE_WIDTH = "1" *) (* C_ECC = "0" *) (* C_GPI_SIZE = "32" *) 
(* C_GPO_SIZE = "32" *) (* C_INCLUDE_MASK = "64'b1111111111111111111111111111111111111111111110000001101101111011" *) (* C_INPUT_REGISTER = "0" *) 
(* C_INTERFACE = "16" *) (* C_LMB_AWIDTH = "32" *) (* C_LMB_DWIDTH = "32" *) 
(* C_LMB_PROTOCOL = "0" *) (* C_LOW_LATENCY = "0" *) (* C_TEMPORAL_DEPTH1 = "0" *) 
(* C_TEMPORAL_DEPTH2 = "0" *) (* C_TEST_AXIS_DATA_WIDTH = "32" *) (* C_TEST_COMPARATOR = "0" *) 
(* C_TEST_LAST_INTERFACE = "0" *) (* C_TMR = "1" *) (* C_USE_TMR_DISABLE = "0" *) 
(* C_VOTER_CHECK = "0" *) 
module bd_hybrid_tmr_ecc_tmr_voter_0_1_tmr_voter
   (TMR_Disable,
    Clk,
    Rst,
    Test_Comparator,
    S_AXIS_TLAST_Test,
    S_AXIS_TDATA_Test,
    S_AXIS_TVALID_Test,
    S_AXIS_TREADY_Test,
    M_AXIS_TLAST_Test,
    M_AXIS_TDATA_Test,
    M_AXIS_TVALID_Test,
    M_AXIS_TREADY_Test,
    Discrete1,
    Discrete2,
    Discrete3,
    Discrete,
    LMB1_ABus,
    LMB1_WriteDBus,
    LMB1_AddrStrobe,
    LMB1_ReadStrobe,
    LMB1_WriteStrobe,
    LMB1_BE,
    Sl1_DBus,
    Sl1_Ready,
    Sl1_Wait,
    Sl1_UE,
    Sl1_CE,
    LMB2_ABus,
    LMB2_WriteDBus,
    LMB2_AddrStrobe,
    LMB2_ReadStrobe,
    LMB2_WriteStrobe,
    LMB2_BE,
    Sl2_DBus,
    Sl2_Ready,
    Sl2_Wait,
    Sl2_UE,
    Sl2_CE,
    LMB3_ABus,
    LMB3_WriteDBus,
    LMB3_AddrStrobe,
    LMB3_ReadStrobe,
    LMB3_WriteStrobe,
    LMB3_BE,
    Sl3_DBus,
    Sl3_Ready,
    Sl3_Wait,
    Sl3_UE,
    Sl3_CE,
    LMB_ABus,
    LMB_WriteDBus,
    LMB_AddrStrobe,
    LMB_ReadStrobe,
    LMB_WriteStrobe,
    LMB_BE,
    Sl_DBus,
    Sl_Ready,
    Sl_Wait,
    Sl_UE,
    Sl_CE,
    S_LMB1_ABus,
    S_LMB1_WriteDBus,
    S_LMB1_AddrStrobe,
    S_LMB1_ReadStrobe,
    S_LMB1_WriteStrobe,
    S_LMB1_BE,
    S_Sl1_DBus,
    S_Sl1_Ready,
    S_Sl1_Wait,
    S_Sl1_UE,
    S_Sl1_CE,
    S_LMB2_ABus,
    S_LMB2_WriteDBus,
    S_LMB2_AddrStrobe,
    S_LMB2_ReadStrobe,
    S_LMB2_WriteStrobe,
    S_LMB2_BE,
    S_Sl2_DBus,
    S_Sl2_Ready,
    S_Sl2_Wait,
    S_Sl2_UE,
    S_Sl2_CE,
    S_LMB3_ABus,
    S_LMB3_WriteDBus,
    S_LMB3_AddrStrobe,
    S_LMB3_ReadStrobe,
    S_LMB3_WriteStrobe,
    S_LMB3_BE,
    S_Sl3_DBus,
    S_Sl3_Ready,
    S_Sl3_Wait,
    S_Sl3_UE,
    S_Sl3_CE,
    S_LMB_ABus,
    S_LMB_WriteDBus,
    S_LMB_AddrStrobe,
    S_LMB_ReadStrobe,
    S_LMB_WriteStrobe,
    S_LMB_BE,
    S_Sl_DBus,
    S_Sl_Ready,
    S_Sl_Wait,
    S_Sl_UE,
    S_Sl_CE,
    BRAM1_Rst,
    BRAM1_Clk,
    BRAM1_Addr,
    BRAM1_EN,
    BRAM1_WE,
    BRAM1_Dout,
    BRAM1_Din,
    BRAM2_Rst,
    BRAM2_Clk,
    BRAM2_Addr,
    BRAM2_EN,
    BRAM2_WE,
    BRAM2_Dout,
    BRAM2_Din,
    BRAM3_Rst,
    BRAM3_Clk,
    BRAM3_Addr,
    BRAM3_EN,
    BRAM3_WE,
    BRAM3_Dout,
    BRAM3_Din,
    BRAM_Rst,
    BRAM_Clk,
    BRAM_Addr,
    BRAM_EN,
    BRAM_WE,
    BRAM_Dout,
    BRAM_Din,
    M_BRAM1_Rst,
    M_BRAM1_Clk,
    M_BRAM1_Addr,
    M_BRAM1_EN,
    M_BRAM1_WE,
    M_BRAM1_Dout,
    M_BRAM1_Din,
    M_BRAM2_Rst,
    M_BRAM2_Clk,
    M_BRAM2_Addr,
    M_BRAM2_EN,
    M_BRAM2_WE,
    M_BRAM2_Dout,
    M_BRAM2_Din,
    M_BRAM3_Rst,
    M_BRAM3_Clk,
    M_BRAM3_Addr,
    M_BRAM3_EN,
    M_BRAM3_WE,
    M_BRAM3_Dout,
    M_BRAM3_Din,
    S_BRAM_Rst,
    S_BRAM_Clk,
    S_BRAM_Addr,
    S_BRAM_EN,
    S_BRAM_WE,
    S_BRAM_Dout,
    S_BRAM_Din,
    S_AXI1_AWID,
    S_AXI1_AWADDR,
    S_AXI1_AWLEN,
    S_AXI1_AWSIZE,
    S_AXI1_AWBURST,
    S_AXI1_AWLOCK,
    S_AXI1_AWCACHE,
    S_AXI1_AWPROT,
    S_AXI1_AWQOS,
    S_AXI1_AWVALID,
    S_AXI1_AWREADY,
    S_AXI1_AWUSER,
    S_AXI1_AWDOMAIN,
    S_AXI1_AWSNOOP,
    S_AXI1_AWBAR,
    S_AXI1_WDATA,
    S_AXI1_WSTRB,
    S_AXI1_WLAST,
    S_AXI1_WVALID,
    S_AXI1_WREADY,
    S_AXI1_WUSER,
    S_AXI1_BID,
    S_AXI1_BRESP,
    S_AXI1_BVALID,
    S_AXI1_BREADY,
    S_AXI1_BUSER,
    S_AXI1_WACK,
    S_AXI1_ARID,
    S_AXI1_ARADDR,
    S_AXI1_ARLEN,
    S_AXI1_ARSIZE,
    S_AXI1_ARBURST,
    S_AXI1_ARLOCK,
    S_AXI1_ARCACHE,
    S_AXI1_ARPROT,
    S_AXI1_ARQOS,
    S_AXI1_ARVALID,
    S_AXI1_ARREADY,
    S_AXI1_ARUSER,
    S_AXI1_ARDOMAIN,
    S_AXI1_ARSNOOP,
    S_AXI1_ARBAR,
    S_AXI1_RID,
    S_AXI1_RDATA,
    S_AXI1_RRESP,
    S_AXI1_RLAST,
    S_AXI1_RVALID,
    S_AXI1_RREADY,
    S_AXI1_RUSER,
    S_AXI1_RACK,
    S_AXI1_ACVALID,
    S_AXI1_ACADDR,
    S_AXI1_ACSNOOP,
    S_AXI1_ACPROT,
    S_AXI1_ACREADY,
    S_AXI1_CRVALID,
    S_AXI1_CRRESP,
    S_AXI1_CRREADY,
    S_AXI1_CDVALID,
    S_AXI1_CDDATA,
    S_AXI1_CDLAST,
    S_AXI1_CDREADY,
    S_AXI2_AWID,
    S_AXI2_AWADDR,
    S_AXI2_AWLEN,
    S_AXI2_AWSIZE,
    S_AXI2_AWBURST,
    S_AXI2_AWLOCK,
    S_AXI2_AWCACHE,
    S_AXI2_AWPROT,
    S_AXI2_AWQOS,
    S_AXI2_AWVALID,
    S_AXI2_AWREADY,
    S_AXI2_AWUSER,
    S_AXI2_AWDOMAIN,
    S_AXI2_AWSNOOP,
    S_AXI2_AWBAR,
    S_AXI2_WDATA,
    S_AXI2_WSTRB,
    S_AXI2_WLAST,
    S_AXI2_WVALID,
    S_AXI2_WREADY,
    S_AXI2_WUSER,
    S_AXI2_BID,
    S_AXI2_BRESP,
    S_AXI2_BVALID,
    S_AXI2_BREADY,
    S_AXI2_BUSER,
    S_AXI2_WACK,
    S_AXI2_ARID,
    S_AXI2_ARADDR,
    S_AXI2_ARLEN,
    S_AXI2_ARSIZE,
    S_AXI2_ARBURST,
    S_AXI2_ARLOCK,
    S_AXI2_ARCACHE,
    S_AXI2_ARPROT,
    S_AXI2_ARQOS,
    S_AXI2_ARVALID,
    S_AXI2_ARREADY,
    S_AXI2_ARUSER,
    S_AXI2_ARDOMAIN,
    S_AXI2_ARSNOOP,
    S_AXI2_ARBAR,
    S_AXI2_RID,
    S_AXI2_RDATA,
    S_AXI2_RRESP,
    S_AXI2_RLAST,
    S_AXI2_RVALID,
    S_AXI2_RREADY,
    S_AXI2_RUSER,
    S_AXI2_RACK,
    S_AXI2_ACVALID,
    S_AXI2_ACADDR,
    S_AXI2_ACSNOOP,
    S_AXI2_ACPROT,
    S_AXI2_ACREADY,
    S_AXI2_CRVALID,
    S_AXI2_CRRESP,
    S_AXI2_CRREADY,
    S_AXI2_CDVALID,
    S_AXI2_CDDATA,
    S_AXI2_CDLAST,
    S_AXI2_CDREADY,
    S_AXI3_AWID,
    S_AXI3_AWADDR,
    S_AXI3_AWLEN,
    S_AXI3_AWSIZE,
    S_AXI3_AWBURST,
    S_AXI3_AWLOCK,
    S_AXI3_AWCACHE,
    S_AXI3_AWPROT,
    S_AXI3_AWQOS,
    S_AXI3_AWVALID,
    S_AXI3_AWREADY,
    S_AXI3_AWDOMAIN,
    S_AXI3_AWSNOOP,
    S_AXI3_AWBAR,
    S_AXI3_AWUSER,
    S_AXI3_WDATA,
    S_AXI3_WSTRB,
    S_AXI3_WLAST,
    S_AXI3_WVALID,
    S_AXI3_WREADY,
    S_AXI3_WUSER,
    S_AXI3_BID,
    S_AXI3_BRESP,
    S_AXI3_BVALID,
    S_AXI3_BREADY,
    S_AXI3_BUSER,
    S_AXI3_WACK,
    S_AXI3_ARID,
    S_AXI3_ARADDR,
    S_AXI3_ARLEN,
    S_AXI3_ARSIZE,
    S_AXI3_ARBURST,
    S_AXI3_ARLOCK,
    S_AXI3_ARCACHE,
    S_AXI3_ARPROT,
    S_AXI3_ARQOS,
    S_AXI3_ARVALID,
    S_AXI3_ARREADY,
    S_AXI3_ARUSER,
    S_AXI3_ARDOMAIN,
    S_AXI3_ARSNOOP,
    S_AXI3_ARBAR,
    S_AXI3_RID,
    S_AXI3_RDATA,
    S_AXI3_RRESP,
    S_AXI3_RLAST,
    S_AXI3_RVALID,
    S_AXI3_RREADY,
    S_AXI3_RUSER,
    S_AXI3_RACK,
    S_AXI3_ACVALID,
    S_AXI3_ACADDR,
    S_AXI3_ACSNOOP,
    S_AXI3_ACPROT,
    S_AXI3_ACREADY,
    S_AXI3_CRVALID,
    S_AXI3_CRRESP,
    S_AXI3_CRREADY,
    S_AXI3_CDVALID,
    S_AXI3_CDDATA,
    S_AXI3_CDLAST,
    S_AXI3_CDREADY,
    M_AXI_AWID,
    M_AXI_AWADDR,
    M_AXI_AWLEN,
    M_AXI_AWSIZE,
    M_AXI_AWBURST,
    M_AXI_AWLOCK,
    M_AXI_AWCACHE,
    M_AXI_AWPROT,
    M_AXI_AWQOS,
    M_AXI_AWVALID,
    M_AXI_AWREADY,
    M_AXI_AWUSER,
    M_AXI_AWDOMAIN,
    M_AXI_AWSNOOP,
    M_AXI_AWBAR,
    M_AXI_WDATA,
    M_AXI_WSTRB,
    M_AXI_WLAST,
    M_AXI_WVALID,
    M_AXI_WREADY,
    M_AXI_WUSER,
    M_AXI_BID,
    M_AXI_BRESP,
    M_AXI_BVALID,
    M_AXI_BREADY,
    M_AXI_BUSER,
    M_AXI_WACK,
    M_AXI_ARID,
    M_AXI_ARADDR,
    M_AXI_ARLEN,
    M_AXI_ARSIZE,
    M_AXI_ARBURST,
    M_AXI_ARLOCK,
    M_AXI_ARCACHE,
    M_AXI_ARPROT,
    M_AXI_ARQOS,
    M_AXI_ARVALID,
    M_AXI_ARREADY,
    M_AXI_ARUSER,
    M_AXI_ARDOMAIN,
    M_AXI_ARSNOOP,
    M_AXI_ARBAR,
    M_AXI_RID,
    M_AXI_RDATA,
    M_AXI_RRESP,
    M_AXI_RLAST,
    M_AXI_RVALID,
    M_AXI_RREADY,
    M_AXI_RUSER,
    M_AXI_RACK,
    M_AXI_ACVALID,
    M_AXI_ACADDR,
    M_AXI_ACSNOOP,
    M_AXI_ACPROT,
    M_AXI_ACREADY,
    M_AXI_CRVALID,
    M_AXI_CRRESP,
    M_AXI_CRREADY,
    M_AXI_CDVALID,
    M_AXI_CDDATA,
    M_AXI_CDLAST,
    M_AXI_CDREADY,
    M_AXI1_AWID,
    M_AXI1_AWADDR,
    M_AXI1_AWLEN,
    M_AXI1_AWSIZE,
    M_AXI1_AWBURST,
    M_AXI1_AWLOCK,
    M_AXI1_AWCACHE,
    M_AXI1_AWPROT,
    M_AXI1_AWQOS,
    M_AXI1_AWVALID,
    M_AXI1_AWREADY,
    M_AXI1_AWUSER,
    M_AXI1_AWDOMAIN,
    M_AXI1_AWSNOOP,
    M_AXI1_AWBAR,
    M_AXI1_WDATA,
    M_AXI1_WSTRB,
    M_AXI1_WLAST,
    M_AXI1_WVALID,
    M_AXI1_WREADY,
    M_AXI1_WUSER,
    M_AXI1_BID,
    M_AXI1_BRESP,
    M_AXI1_BVALID,
    M_AXI1_BREADY,
    M_AXI1_BUSER,
    M_AXI1_WACK,
    M_AXI1_ARID,
    M_AXI1_ARADDR,
    M_AXI1_ARLEN,
    M_AXI1_ARSIZE,
    M_AXI1_ARBURST,
    M_AXI1_ARLOCK,
    M_AXI1_ARCACHE,
    M_AXI1_ARPROT,
    M_AXI1_ARQOS,
    M_AXI1_ARVALID,
    M_AXI1_ARREADY,
    M_AXI1_ARUSER,
    M_AXI1_ARDOMAIN,
    M_AXI1_ARSNOOP,
    M_AXI1_ARBAR,
    M_AXI1_RID,
    M_AXI1_RDATA,
    M_AXI1_RRESP,
    M_AXI1_RLAST,
    M_AXI1_RVALID,
    M_AXI1_RREADY,
    M_AXI1_RUSER,
    M_AXI1_RACK,
    M_AXI1_ACVALID,
    M_AXI1_ACADDR,
    M_AXI1_ACSNOOP,
    M_AXI1_ACPROT,
    M_AXI1_ACREADY,
    M_AXI1_CRVALID,
    M_AXI1_CRRESP,
    M_AXI1_CRREADY,
    M_AXI1_CDVALID,
    M_AXI1_CDDATA,
    M_AXI1_CDLAST,
    M_AXI1_CDREADY,
    M_AXI2_AWID,
    M_AXI2_AWADDR,
    M_AXI2_AWLEN,
    M_AXI2_AWSIZE,
    M_AXI2_AWBURST,
    M_AXI2_AWLOCK,
    M_AXI2_AWCACHE,
    M_AXI2_AWPROT,
    M_AXI2_AWQOS,
    M_AXI2_AWVALID,
    M_AXI2_AWREADY,
    M_AXI2_AWUSER,
    M_AXI2_AWDOMAIN,
    M_AXI2_AWSNOOP,
    M_AXI2_AWBAR,
    M_AXI2_WDATA,
    M_AXI2_WSTRB,
    M_AXI2_WLAST,
    M_AXI2_WVALID,
    M_AXI2_WREADY,
    M_AXI2_WUSER,
    M_AXI2_BID,
    M_AXI2_BRESP,
    M_AXI2_BVALID,
    M_AXI2_BREADY,
    M_AXI2_BUSER,
    M_AXI2_WACK,
    M_AXI2_ARID,
    M_AXI2_ARADDR,
    M_AXI2_ARLEN,
    M_AXI2_ARSIZE,
    M_AXI2_ARBURST,
    M_AXI2_ARLOCK,
    M_AXI2_ARCACHE,
    M_AXI2_ARPROT,
    M_AXI2_ARQOS,
    M_AXI2_ARVALID,
    M_AXI2_ARREADY,
    M_AXI2_ARUSER,
    M_AXI2_ARDOMAIN,
    M_AXI2_ARSNOOP,
    M_AXI2_ARBAR,
    M_AXI2_RID,
    M_AXI2_RDATA,
    M_AXI2_RRESP,
    M_AXI2_RLAST,
    M_AXI2_RVALID,
    M_AXI2_RREADY,
    M_AXI2_RUSER,
    M_AXI2_RACK,
    M_AXI2_ACVALID,
    M_AXI2_ACADDR,
    M_AXI2_ACSNOOP,
    M_AXI2_ACPROT,
    M_AXI2_ACREADY,
    M_AXI2_CRVALID,
    M_AXI2_CRRESP,
    M_AXI2_CRREADY,
    M_AXI2_CDVALID,
    M_AXI2_CDDATA,
    M_AXI2_CDLAST,
    M_AXI2_CDREADY,
    M_AXI3_AWID,
    M_AXI3_AWADDR,
    M_AXI3_AWLEN,
    M_AXI3_AWSIZE,
    M_AXI3_AWBURST,
    M_AXI3_AWLOCK,
    M_AXI3_AWCACHE,
    M_AXI3_AWPROT,
    M_AXI3_AWQOS,
    M_AXI3_AWVALID,
    M_AXI3_AWREADY,
    M_AXI3_AWDOMAIN,
    M_AXI3_AWSNOOP,
    M_AXI3_AWBAR,
    M_AXI3_AWUSER,
    M_AXI3_WDATA,
    M_AXI3_WSTRB,
    M_AXI3_WLAST,
    M_AXI3_WVALID,
    M_AXI3_WREADY,
    M_AXI3_WUSER,
    M_AXI3_BID,
    M_AXI3_BRESP,
    M_AXI3_BVALID,
    M_AXI3_BREADY,
    M_AXI3_BUSER,
    M_AXI3_WACK,
    M_AXI3_ARID,
    M_AXI3_ARADDR,
    M_AXI3_ARLEN,
    M_AXI3_ARSIZE,
    M_AXI3_ARBURST,
    M_AXI3_ARLOCK,
    M_AXI3_ARCACHE,
    M_AXI3_ARPROT,
    M_AXI3_ARQOS,
    M_AXI3_ARVALID,
    M_AXI3_ARREADY,
    M_AXI3_ARUSER,
    M_AXI3_ARDOMAIN,
    M_AXI3_ARSNOOP,
    M_AXI3_ARBAR,
    M_AXI3_RID,
    M_AXI3_RDATA,
    M_AXI3_RRESP,
    M_AXI3_RLAST,
    M_AXI3_RVALID,
    M_AXI3_RREADY,
    M_AXI3_RUSER,
    M_AXI3_RACK,
    M_AXI3_ACVALID,
    M_AXI3_ACADDR,
    M_AXI3_ACSNOOP,
    M_AXI3_ACPROT,
    M_AXI3_ACREADY,
    M_AXI3_CRVALID,
    M_AXI3_CRRESP,
    M_AXI3_CRREADY,
    M_AXI3_CDVALID,
    M_AXI3_CDDATA,
    M_AXI3_CDLAST,
    M_AXI3_CDREADY,
    S_AXI_AWID,
    S_AXI_AWADDR,
    S_AXI_AWLEN,
    S_AXI_AWSIZE,
    S_AXI_AWBURST,
    S_AXI_AWLOCK,
    S_AXI_AWCACHE,
    S_AXI_AWPROT,
    S_AXI_AWQOS,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_AWUSER,
    S_AXI_AWDOMAIN,
    S_AXI_AWSNOOP,
    S_AXI_AWBAR,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WLAST,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_WUSER,
    S_AXI_BID,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_BUSER,
    S_AXI_WACK,
    S_AXI_ARID,
    S_AXI_ARADDR,
    S_AXI_ARLEN,
    S_AXI_ARSIZE,
    S_AXI_ARBURST,
    S_AXI_ARLOCK,
    S_AXI_ARCACHE,
    S_AXI_ARPROT,
    S_AXI_ARQOS,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_ARUSER,
    S_AXI_ARDOMAIN,
    S_AXI_ARSNOOP,
    S_AXI_ARBAR,
    S_AXI_RID,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RLAST,
    S_AXI_RVALID,
    S_AXI_RREADY,
    S_AXI_RUSER,
    S_AXI_RACK,
    S_AXI_ACVALID,
    S_AXI_ACADDR,
    S_AXI_ACSNOOP,
    S_AXI_ACPROT,
    S_AXI_ACREADY,
    S_AXI_CRVALID,
    S_AXI_CRRESP,
    S_AXI_CRREADY,
    S_AXI_CDVALID,
    S_AXI_CDDATA,
    S_AXI_CDLAST,
    S_AXI_CDREADY,
    S_AXIS1_TLAST,
    S_AXIS1_TDATA,
    S_AXIS1_TVALID,
    S_AXIS1_TREADY,
    S_AXIS1_TSTRB,
    S_AXIS1_TKEEP,
    S_AXIS1_TID,
    S_AXIS1_TDEST,
    S_AXIS1_TUSER,
    S_AXIS2_TLAST,
    S_AXIS2_TDATA,
    S_AXIS2_TVALID,
    S_AXIS2_TREADY,
    S_AXIS2_TSTRB,
    S_AXIS2_TKEEP,
    S_AXIS2_TID,
    S_AXIS2_TDEST,
    S_AXIS2_TUSER,
    S_AXIS3_TLAST,
    S_AXIS3_TDATA,
    S_AXIS3_TVALID,
    S_AXIS3_TREADY,
    S_AXIS3_TSTRB,
    S_AXIS3_TKEEP,
    S_AXIS3_TID,
    S_AXIS3_TDEST,
    S_AXIS3_TUSER,
    M_AXIS_TLAST,
    M_AXIS_TDATA,
    M_AXIS_TVALID,
    M_AXIS_TREADY,
    M_AXIS_TSTRB,
    M_AXIS_TKEEP,
    M_AXIS_TID,
    M_AXIS_TDEST,
    M_AXIS_TUSER,
    M_AXIS1_TLAST,
    M_AXIS1_TDATA,
    M_AXIS1_TVALID,
    M_AXIS1_TREADY,
    M_AXIS1_TSTRB,
    M_AXIS1_TKEEP,
    M_AXIS1_TID,
    M_AXIS1_TDEST,
    M_AXIS1_TUSER,
    M_AXIS2_TLAST,
    M_AXIS2_TDATA,
    M_AXIS2_TVALID,
    M_AXIS2_TREADY,
    M_AXIS2_TSTRB,
    M_AXIS2_TKEEP,
    M_AXIS2_TID,
    M_AXIS2_TDEST,
    M_AXIS2_TUSER,
    M_AXIS3_TLAST,
    M_AXIS3_TDATA,
    M_AXIS3_TVALID,
    M_AXIS3_TREADY,
    M_AXIS3_TSTRB,
    M_AXIS3_TKEEP,
    M_AXIS3_TID,
    M_AXIS3_TDEST,
    M_AXIS3_TUSER,
    S_AXIS_TLAST,
    S_AXIS_TDATA,
    S_AXIS_TVALID,
    S_AXIS_TREADY,
    S_AXIS_TSTRB,
    S_AXIS_TKEEP,
    S_AXIS_TID,
    S_AXIS_TDEST,
    S_AXIS_TUSER,
    Trace1_Instruction,
    Trace1_Valid_Instr,
    Trace1_PC,
    Trace1_Reg_Write,
    Trace1_Reg_Addr,
    Trace1_MSR_Reg,
    Trace1_PID_Reg,
    Trace1_New_Reg_Value,
    Trace1_Exception_Taken,
    Trace1_Exception_Kind,
    Trace1_Jump_Taken,
    Trace1_Delay_Slot,
    Trace1_Data_Address,
    Trace1_Data_Write_Value,
    Trace1_Data_Byte_Enable,
    Trace1_Data_Access,
    Trace1_Data_Read,
    Trace1_Data_Write,
    Trace1_DCache_Req,
    Trace1_DCache_Hit,
    Trace1_DCache_Rdy,
    Trace1_DCache_Read,
    Trace1_ICache_Req,
    Trace1_ICache_Hit,
    Trace1_ICache_Rdy,
    Trace1_OF_PipeRun,
    Trace1_EX_PipeRun,
    Trace1_MEM_PipeRun,
    Trace1_MB_Halted,
    Trace1_Jump_Hit,
    Trace2_Instruction,
    Trace2_Valid_Instr,
    Trace2_PC,
    Trace2_Reg_Write,
    Trace2_Reg_Addr,
    Trace2_MSR_Reg,
    Trace2_PID_Reg,
    Trace2_New_Reg_Value,
    Trace2_Exception_Taken,
    Trace2_Exception_Kind,
    Trace2_Jump_Taken,
    Trace2_Delay_Slot,
    Trace2_Data_Address,
    Trace2_Data_Write_Value,
    Trace2_Data_Byte_Enable,
    Trace2_Data_Access,
    Trace2_Data_Read,
    Trace2_Data_Write,
    Trace2_DCache_Req,
    Trace2_DCache_Hit,
    Trace2_DCache_Rdy,
    Trace2_DCache_Read,
    Trace2_ICache_Req,
    Trace2_ICache_Hit,
    Trace2_ICache_Rdy,
    Trace2_OF_PipeRun,
    Trace2_EX_PipeRun,
    Trace2_MEM_PipeRun,
    Trace2_MB_Halted,
    Trace2_Jump_Hit,
    Trace3_Instruction,
    Trace3_Valid_Instr,
    Trace3_PC,
    Trace3_Reg_Write,
    Trace3_Reg_Addr,
    Trace3_MSR_Reg,
    Trace3_PID_Reg,
    Trace3_New_Reg_Value,
    Trace3_Exception_Taken,
    Trace3_Exception_Kind,
    Trace3_Jump_Taken,
    Trace3_Delay_Slot,
    Trace3_Data_Address,
    Trace3_Data_Write_Value,
    Trace3_Data_Byte_Enable,
    Trace3_Data_Access,
    Trace3_Data_Read,
    Trace3_Data_Write,
    Trace3_DCache_Req,
    Trace3_DCache_Hit,
    Trace3_DCache_Rdy,
    Trace3_DCache_Read,
    Trace3_ICache_Req,
    Trace3_ICache_Hit,
    Trace3_ICache_Rdy,
    Trace3_OF_PipeRun,
    Trace3_EX_PipeRun,
    Trace3_MEM_PipeRun,
    Trace3_MB_Halted,
    Trace3_Jump_Hit,
    Trace_Instruction,
    Trace_Valid_Instr,
    Trace_PC,
    Trace_Reg_Write,
    Trace_Reg_Addr,
    Trace_MSR_Reg,
    Trace_PID_Reg,
    Trace_New_Reg_Value,
    Trace_Exception_Taken,
    Trace_Exception_Kind,
    Trace_Jump_Taken,
    Trace_Delay_Slot,
    Trace_Data_Address,
    Trace_Data_Write_Value,
    Trace_Data_Byte_Enable,
    Trace_Data_Access,
    Trace_Data_Read,
    Trace_Data_Write,
    Trace_DCache_Req,
    Trace_DCache_Hit,
    Trace_DCache_Rdy,
    Trace_DCache_Read,
    Trace_ICache_Req,
    Trace_ICache_Hit,
    Trace_ICache_Rdy,
    Trace_OF_PipeRun,
    Trace_EX_PipeRun,
    Trace_MEM_PipeRun,
    Trace_MB_Halted,
    Trace_Jump_Hit,
    IRQ1,
    IRQ1_Address,
    IRQ1_Ack,
    IRQ2,
    IRQ2_Address,
    IRQ2_Ack,
    IRQ3,
    IRQ3_Address,
    IRQ3_Ack,
    IRQ,
    IRQ_Address,
    IRQ_Ack,
    S_IRQ1,
    S_IRQ1_Address,
    S_IRQ1_Ack,
    S_IRQ2,
    S_IRQ2_Address,
    S_IRQ2_Ack,
    S_IRQ3,
    S_IRQ3_Address,
    S_IRQ3_Ack,
    M_IRQ,
    M_IRQ_Address,
    M_IRQ_Ack,
    IO1_Addr_Strobe,
    IO1_Read_Strobe,
    IO1_Write_Strobe,
    IO1_Address,
    IO1_Byte_Enable,
    IO1_Write_Data,
    IO1_Read_Data,
    IO1_Ready,
    IO2_Addr_Strobe,
    IO2_Read_Strobe,
    IO2_Write_Strobe,
    IO2_Address,
    IO2_Byte_Enable,
    IO2_Write_Data,
    IO2_Read_Data,
    IO2_Ready,
    IO3_Addr_Strobe,
    IO3_Read_Strobe,
    IO3_Write_Strobe,
    IO3_Address,
    IO3_Byte_Enable,
    IO3_Write_Data,
    IO3_Read_Data,
    IO3_Ready,
    IO_Addr_Strobe,
    IO_Read_Strobe,
    IO_Write_Strobe,
    IO_Address,
    IO_Byte_Enable,
    IO_Write_Data,
    IO_Read_Data,
    IO_Ready,
    GPO1,
    GPT1,
    GPI1,
    GPO2,
    GPT2,
    GPI2,
    GPO3,
    GPT3,
    GPI3,
    GPO,
    GPT,
    GPI,
    UART1_TxD,
    UART1_RxD,
    UART1_RTSn,
    UART1_CTSn,
    UART1_DTRn,
    UART1_DSRn,
    UART1_BAUDOUTn,
    UART1_RCLK,
    UART1_XIN,
    UART1_XOUT,
    UART1_DCDn,
    UART1_DDIS,
    UART1_OUT1n,
    UART1_OUT2n,
    UART1_TXRDYn,
    UART1_RXRDYn,
    UART1_RI,
    UART2_TxD,
    UART2_RxD,
    UART2_RTSn,
    UART2_CTSn,
    UART2_DTRn,
    UART2_DSRn,
    UART2_BAUDOUTn,
    UART2_RCLK,
    UART2_XIN,
    UART2_XOUT,
    UART2_DCDn,
    UART2_DDIS,
    UART2_OUT1n,
    UART2_OUT2n,
    UART2_TXRDYn,
    UART2_RXRDYn,
    UART2_RI,
    UART3_TxD,
    UART3_RxD,
    UART3_RTSn,
    UART3_CTSn,
    UART3_DTRn,
    UART3_DSRn,
    UART3_BAUDOUTn,
    UART3_RCLK,
    UART3_XIN,
    UART3_XOUT,
    UART3_DCDn,
    UART3_DDIS,
    UART3_OUT1n,
    UART3_OUT2n,
    UART3_TXRDYn,
    UART3_RXRDYn,
    UART3_RI,
    UART_TxD,
    UART_RxD,
    UART_RTSn,
    UART_CTSn,
    UART_DTRn,
    UART_DSRn,
    UART_BAUDOUTn,
    UART_RCLK,
    UART_XIN,
    UART_XOUT,
    UART_DCDn,
    UART_DDIS,
    UART_OUT1n,
    UART_OUT2n,
    UART_TXRDYn,
    UART_RXRDYn,
    UART_RI,
    IIC1_scl_i,
    IIC1_scl_o,
    IIC1_scl_t,
    IIC1_sda_i,
    IIC1_sda_o,
    IIC1_sda_t,
    IIC2_scl_i,
    IIC2_scl_o,
    IIC2_scl_t,
    IIC2_sda_i,
    IIC2_sda_o,
    IIC2_sda_t,
    IIC3_scl_i,
    IIC3_scl_o,
    IIC3_scl_t,
    IIC3_sda_i,
    IIC3_sda_o,
    IIC3_sda_t,
    IIC_scl_i,
    IIC_scl_o,
    IIC_scl_t,
    IIC_sda_i,
    IIC_sda_o,
    IIC_sda_t,
    Compare,
    M_BRAM_MisMatch);
  input TMR_Disable;
  input Clk;
  input Rst;
  input [1:0]Test_Comparator;
  input S_AXIS_TLAST_Test;
  input [31:0]S_AXIS_TDATA_Test;
  input S_AXIS_TVALID_Test;
  output S_AXIS_TREADY_Test;
  output M_AXIS_TLAST_Test;
  output [31:0]M_AXIS_TDATA_Test;
  output M_AXIS_TVALID_Test;
  input M_AXIS_TREADY_Test;
  input [0:0]Discrete1;
  input [0:0]Discrete2;
  input [0:0]Discrete3;
  output [0:0]Discrete;
  input [0:31]LMB1_ABus;
  input [0:31]LMB1_WriteDBus;
  input LMB1_AddrStrobe;
  input LMB1_ReadStrobe;
  input LMB1_WriteStrobe;
  input [0:3]LMB1_BE;
  output [0:31]Sl1_DBus;
  output Sl1_Ready;
  output Sl1_Wait;
  output Sl1_UE;
  output Sl1_CE;
  input [0:31]LMB2_ABus;
  input [0:31]LMB2_WriteDBus;
  input LMB2_AddrStrobe;
  input LMB2_ReadStrobe;
  input LMB2_WriteStrobe;
  input [0:3]LMB2_BE;
  output [0:31]Sl2_DBus;
  output Sl2_Ready;
  output Sl2_Wait;
  output Sl2_UE;
  output Sl2_CE;
  input [0:31]LMB3_ABus;
  input [0:31]LMB3_WriteDBus;
  input LMB3_AddrStrobe;
  input LMB3_ReadStrobe;
  input LMB3_WriteStrobe;
  input [0:3]LMB3_BE;
  output [0:31]Sl3_DBus;
  output Sl3_Ready;
  output Sl3_Wait;
  output Sl3_UE;
  output Sl3_CE;
  output [0:31]LMB_ABus;
  output [0:31]LMB_WriteDBus;
  output LMB_AddrStrobe;
  output LMB_ReadStrobe;
  output LMB_WriteStrobe;
  output [0:3]LMB_BE;
  input [0:31]Sl_DBus;
  input Sl_Ready;
  input Sl_Wait;
  input Sl_UE;
  input Sl_CE;
  output [0:31]S_LMB1_ABus;
  output [0:31]S_LMB1_WriteDBus;
  output S_LMB1_AddrStrobe;
  output S_LMB1_ReadStrobe;
  output S_LMB1_WriteStrobe;
  output [0:3]S_LMB1_BE;
  input [0:31]S_Sl1_DBus;
  input S_Sl1_Ready;
  input S_Sl1_Wait;
  input S_Sl1_UE;
  input S_Sl1_CE;
  output [0:31]S_LMB2_ABus;
  output [0:31]S_LMB2_WriteDBus;
  output S_LMB2_AddrStrobe;
  output S_LMB2_ReadStrobe;
  output S_LMB2_WriteStrobe;
  output [0:3]S_LMB2_BE;
  input [0:31]S_Sl2_DBus;
  input S_Sl2_Ready;
  input S_Sl2_Wait;
  input S_Sl2_UE;
  input S_Sl2_CE;
  output [0:31]S_LMB3_ABus;
  output [0:31]S_LMB3_WriteDBus;
  output S_LMB3_AddrStrobe;
  output S_LMB3_ReadStrobe;
  output S_LMB3_WriteStrobe;
  output [0:3]S_LMB3_BE;
  input [0:31]S_Sl3_DBus;
  input S_Sl3_Ready;
  input S_Sl3_Wait;
  input S_Sl3_UE;
  input S_Sl3_CE;
  input [0:31]S_LMB_ABus;
  input [0:31]S_LMB_WriteDBus;
  input S_LMB_AddrStrobe;
  input S_LMB_ReadStrobe;
  input S_LMB_WriteStrobe;
  input [0:3]S_LMB_BE;
  output [0:31]S_Sl_DBus;
  output S_Sl_Ready;
  output S_Sl_Wait;
  output S_Sl_UE;
  output S_Sl_CE;
  input BRAM1_Rst;
  input BRAM1_Clk;
  input [0:31]BRAM1_Addr;
  input BRAM1_EN;
  input [0:3]BRAM1_WE;
  input [0:31]BRAM1_Dout;
  output [0:31]BRAM1_Din;
  input BRAM2_Rst;
  input BRAM2_Clk;
  input [0:31]BRAM2_Addr;
  input BRAM2_EN;
  input [0:3]BRAM2_WE;
  input [0:31]BRAM2_Dout;
  output [0:31]BRAM2_Din;
  input BRAM3_Rst;
  input BRAM3_Clk;
  input [0:31]BRAM3_Addr;
  input BRAM3_EN;
  input [0:3]BRAM3_WE;
  input [0:31]BRAM3_Dout;
  output [0:31]BRAM3_Din;
  output BRAM_Rst;
  output BRAM_Clk;
  output [0:31]BRAM_Addr;
  output BRAM_EN;
  output [0:3]BRAM_WE;
  output [0:31]BRAM_Dout;
  input [0:31]BRAM_Din;
  output M_BRAM1_Rst;
  output M_BRAM1_Clk;
  output [0:31]M_BRAM1_Addr;
  output M_BRAM1_EN;
  output [0:3]M_BRAM1_WE;
  output [0:31]M_BRAM1_Dout;
  input [0:31]M_BRAM1_Din;
  input M_BRAM2_Rst;
  input M_BRAM2_Clk;
  input [0:31]M_BRAM2_Addr;
  input M_BRAM2_EN;
  input [0:3]M_BRAM2_WE;
  input [0:31]M_BRAM2_Dout;
  input [0:31]M_BRAM2_Din;
  input M_BRAM3_Rst;
  input M_BRAM3_Clk;
  input [0:31]M_BRAM3_Addr;
  input M_BRAM3_EN;
  input [0:3]M_BRAM3_WE;
  input [0:31]M_BRAM3_Dout;
  input [0:31]M_BRAM3_Din;
  input S_BRAM_Rst;
  input S_BRAM_Clk;
  input [0:31]S_BRAM_Addr;
  input S_BRAM_EN;
  input [0:3]S_BRAM_WE;
  input [0:31]S_BRAM_Dout;
  output [0:31]S_BRAM_Din;
  input [0:0]S_AXI1_AWID;
  input [5:0]S_AXI1_AWADDR;
  input [7:0]S_AXI1_AWLEN;
  input [2:0]S_AXI1_AWSIZE;
  input [1:0]S_AXI1_AWBURST;
  input S_AXI1_AWLOCK;
  input [3:0]S_AXI1_AWCACHE;
  input [2:0]S_AXI1_AWPROT;
  input [3:0]S_AXI1_AWQOS;
  input S_AXI1_AWVALID;
  output S_AXI1_AWREADY;
  input [0:0]S_AXI1_AWUSER;
  input [1:0]S_AXI1_AWDOMAIN;
  input [2:0]S_AXI1_AWSNOOP;
  input [1:0]S_AXI1_AWBAR;
  input [31:0]S_AXI1_WDATA;
  input [3:0]S_AXI1_WSTRB;
  input S_AXI1_WLAST;
  input S_AXI1_WVALID;
  output S_AXI1_WREADY;
  input [0:0]S_AXI1_WUSER;
  output [0:0]S_AXI1_BID;
  output [1:0]S_AXI1_BRESP;
  output S_AXI1_BVALID;
  input S_AXI1_BREADY;
  output [0:0]S_AXI1_BUSER;
  input S_AXI1_WACK;
  input [0:0]S_AXI1_ARID;
  input [5:0]S_AXI1_ARADDR;
  input [7:0]S_AXI1_ARLEN;
  input [2:0]S_AXI1_ARSIZE;
  input [1:0]S_AXI1_ARBURST;
  input S_AXI1_ARLOCK;
  input [3:0]S_AXI1_ARCACHE;
  input [2:0]S_AXI1_ARPROT;
  input [3:0]S_AXI1_ARQOS;
  input S_AXI1_ARVALID;
  output S_AXI1_ARREADY;
  input [0:0]S_AXI1_ARUSER;
  input [1:0]S_AXI1_ARDOMAIN;
  input [3:0]S_AXI1_ARSNOOP;
  input [1:0]S_AXI1_ARBAR;
  output [0:0]S_AXI1_RID;
  output [31:0]S_AXI1_RDATA;
  output [1:0]S_AXI1_RRESP;
  output S_AXI1_RLAST;
  output S_AXI1_RVALID;
  input S_AXI1_RREADY;
  output [0:0]S_AXI1_RUSER;
  input S_AXI1_RACK;
  output S_AXI1_ACVALID;
  output [5:0]S_AXI1_ACADDR;
  output [3:0]S_AXI1_ACSNOOP;
  output [2:0]S_AXI1_ACPROT;
  input S_AXI1_ACREADY;
  input S_AXI1_CRVALID;
  input [4:0]S_AXI1_CRRESP;
  output S_AXI1_CRREADY;
  input S_AXI1_CDVALID;
  input [31:0]S_AXI1_CDDATA;
  input S_AXI1_CDLAST;
  output S_AXI1_CDREADY;
  input [0:0]S_AXI2_AWID;
  input [5:0]S_AXI2_AWADDR;
  input [7:0]S_AXI2_AWLEN;
  input [2:0]S_AXI2_AWSIZE;
  input [1:0]S_AXI2_AWBURST;
  input S_AXI2_AWLOCK;
  input [3:0]S_AXI2_AWCACHE;
  input [2:0]S_AXI2_AWPROT;
  input [3:0]S_AXI2_AWQOS;
  input S_AXI2_AWVALID;
  output S_AXI2_AWREADY;
  input [0:0]S_AXI2_AWUSER;
  input [1:0]S_AXI2_AWDOMAIN;
  input [2:0]S_AXI2_AWSNOOP;
  input [1:0]S_AXI2_AWBAR;
  input [31:0]S_AXI2_WDATA;
  input [3:0]S_AXI2_WSTRB;
  input S_AXI2_WLAST;
  input S_AXI2_WVALID;
  output S_AXI2_WREADY;
  input [0:0]S_AXI2_WUSER;
  output [0:0]S_AXI2_BID;
  output [1:0]S_AXI2_BRESP;
  output S_AXI2_BVALID;
  input S_AXI2_BREADY;
  output [0:0]S_AXI2_BUSER;
  input S_AXI2_WACK;
  input [0:0]S_AXI2_ARID;
  input [5:0]S_AXI2_ARADDR;
  input [7:0]S_AXI2_ARLEN;
  input [2:0]S_AXI2_ARSIZE;
  input [1:0]S_AXI2_ARBURST;
  input S_AXI2_ARLOCK;
  input [3:0]S_AXI2_ARCACHE;
  input [2:0]S_AXI2_ARPROT;
  input [3:0]S_AXI2_ARQOS;
  input S_AXI2_ARVALID;
  output S_AXI2_ARREADY;
  input [0:0]S_AXI2_ARUSER;
  input [1:0]S_AXI2_ARDOMAIN;
  input [3:0]S_AXI2_ARSNOOP;
  input [1:0]S_AXI2_ARBAR;
  output [0:0]S_AXI2_RID;
  output [31:0]S_AXI2_RDATA;
  output [1:0]S_AXI2_RRESP;
  output S_AXI2_RLAST;
  output S_AXI2_RVALID;
  input S_AXI2_RREADY;
  output [0:0]S_AXI2_RUSER;
  input S_AXI2_RACK;
  output S_AXI2_ACVALID;
  output [5:0]S_AXI2_ACADDR;
  output [3:0]S_AXI2_ACSNOOP;
  output [2:0]S_AXI2_ACPROT;
  input S_AXI2_ACREADY;
  input S_AXI2_CRVALID;
  input [4:0]S_AXI2_CRRESP;
  output S_AXI2_CRREADY;
  input S_AXI2_CDVALID;
  input [31:0]S_AXI2_CDDATA;
  input S_AXI2_CDLAST;
  output S_AXI2_CDREADY;
  input [0:0]S_AXI3_AWID;
  input [5:0]S_AXI3_AWADDR;
  input [7:0]S_AXI3_AWLEN;
  input [2:0]S_AXI3_AWSIZE;
  input [1:0]S_AXI3_AWBURST;
  input S_AXI3_AWLOCK;
  input [3:0]S_AXI3_AWCACHE;
  input [2:0]S_AXI3_AWPROT;
  input [3:0]S_AXI3_AWQOS;
  input S_AXI3_AWVALID;
  output S_AXI3_AWREADY;
  input [1:0]S_AXI3_AWDOMAIN;
  input [2:0]S_AXI3_AWSNOOP;
  input [1:0]S_AXI3_AWBAR;
  input [0:0]S_AXI3_AWUSER;
  input [31:0]S_AXI3_WDATA;
  input [3:0]S_AXI3_WSTRB;
  input S_AXI3_WLAST;
  input S_AXI3_WVALID;
  output S_AXI3_WREADY;
  input [0:0]S_AXI3_WUSER;
  output [0:0]S_AXI3_BID;
  output [1:0]S_AXI3_BRESP;
  output S_AXI3_BVALID;
  input S_AXI3_BREADY;
  output [0:0]S_AXI3_BUSER;
  input S_AXI3_WACK;
  input [0:0]S_AXI3_ARID;
  input [5:0]S_AXI3_ARADDR;
  input [7:0]S_AXI3_ARLEN;
  input [2:0]S_AXI3_ARSIZE;
  input [1:0]S_AXI3_ARBURST;
  input S_AXI3_ARLOCK;
  input [3:0]S_AXI3_ARCACHE;
  input [2:0]S_AXI3_ARPROT;
  input [3:0]S_AXI3_ARQOS;
  input S_AXI3_ARVALID;
  output S_AXI3_ARREADY;
  input [0:0]S_AXI3_ARUSER;
  input [1:0]S_AXI3_ARDOMAIN;
  input [3:0]S_AXI3_ARSNOOP;
  input [1:0]S_AXI3_ARBAR;
  output [0:0]S_AXI3_RID;
  output [31:0]S_AXI3_RDATA;
  output [1:0]S_AXI3_RRESP;
  output S_AXI3_RLAST;
  output S_AXI3_RVALID;
  input S_AXI3_RREADY;
  output [0:0]S_AXI3_RUSER;
  input S_AXI3_RACK;
  output S_AXI3_ACVALID;
  output [5:0]S_AXI3_ACADDR;
  output [3:0]S_AXI3_ACSNOOP;
  output [2:0]S_AXI3_ACPROT;
  input S_AXI3_ACREADY;
  input S_AXI3_CRVALID;
  input [4:0]S_AXI3_CRRESP;
  output S_AXI3_CRREADY;
  input S_AXI3_CDVALID;
  input [31:0]S_AXI3_CDDATA;
  input S_AXI3_CDLAST;
  output S_AXI3_CDREADY;
  output [0:0]M_AXI_AWID;
  output [5:0]M_AXI_AWADDR;
  output [7:0]M_AXI_AWLEN;
  output [2:0]M_AXI_AWSIZE;
  output [1:0]M_AXI_AWBURST;
  output M_AXI_AWLOCK;
  output [3:0]M_AXI_AWCACHE;
  output [2:0]M_AXI_AWPROT;
  output [3:0]M_AXI_AWQOS;
  output M_AXI_AWVALID;
  input M_AXI_AWREADY;
  output [0:0]M_AXI_AWUSER;
  output [1:0]M_AXI_AWDOMAIN;
  output [2:0]M_AXI_AWSNOOP;
  output [1:0]M_AXI_AWBAR;
  output [31:0]M_AXI_WDATA;
  output [3:0]M_AXI_WSTRB;
  output M_AXI_WLAST;
  output M_AXI_WVALID;
  input M_AXI_WREADY;
  output [0:0]M_AXI_WUSER;
  input [0:0]M_AXI_BID;
  input [1:0]M_AXI_BRESP;
  input M_AXI_BVALID;
  output M_AXI_BREADY;
  input [0:0]M_AXI_BUSER;
  output M_AXI_WACK;
  output [0:0]M_AXI_ARID;
  output [5:0]M_AXI_ARADDR;
  output [7:0]M_AXI_ARLEN;
  output [2:0]M_AXI_ARSIZE;
  output [1:0]M_AXI_ARBURST;
  output M_AXI_ARLOCK;
  output [3:0]M_AXI_ARCACHE;
  output [2:0]M_AXI_ARPROT;
  output [3:0]M_AXI_ARQOS;
  output M_AXI_ARVALID;
  input M_AXI_ARREADY;
  output [0:0]M_AXI_ARUSER;
  output [1:0]M_AXI_ARDOMAIN;
  output [3:0]M_AXI_ARSNOOP;
  output [1:0]M_AXI_ARBAR;
  input [0:0]M_AXI_RID;
  input [31:0]M_AXI_RDATA;
  input [1:0]M_AXI_RRESP;
  input M_AXI_RLAST;
  input M_AXI_RVALID;
  output M_AXI_RREADY;
  input [0:0]M_AXI_RUSER;
  output M_AXI_RACK;
  input M_AXI_ACVALID;
  input [5:0]M_AXI_ACADDR;
  input [3:0]M_AXI_ACSNOOP;
  input [2:0]M_AXI_ACPROT;
  output M_AXI_ACREADY;
  output M_AXI_CRVALID;
  output [4:0]M_AXI_CRRESP;
  input M_AXI_CRREADY;
  output M_AXI_CDVALID;
  output [31:0]M_AXI_CDDATA;
  output M_AXI_CDLAST;
  input M_AXI_CDREADY;
  output [0:0]M_AXI1_AWID;
  output [5:0]M_AXI1_AWADDR;
  output [7:0]M_AXI1_AWLEN;
  output [2:0]M_AXI1_AWSIZE;
  output [1:0]M_AXI1_AWBURST;
  output M_AXI1_AWLOCK;
  output [3:0]M_AXI1_AWCACHE;
  output [2:0]M_AXI1_AWPROT;
  output [3:0]M_AXI1_AWQOS;
  output M_AXI1_AWVALID;
  input M_AXI1_AWREADY;
  output [0:0]M_AXI1_AWUSER;
  output [1:0]M_AXI1_AWDOMAIN;
  output [2:0]M_AXI1_AWSNOOP;
  output [1:0]M_AXI1_AWBAR;
  output [31:0]M_AXI1_WDATA;
  output [3:0]M_AXI1_WSTRB;
  output M_AXI1_WLAST;
  output M_AXI1_WVALID;
  input M_AXI1_WREADY;
  output [0:0]M_AXI1_WUSER;
  input [0:0]M_AXI1_BID;
  input [1:0]M_AXI1_BRESP;
  input M_AXI1_BVALID;
  output M_AXI1_BREADY;
  input [0:0]M_AXI1_BUSER;
  output M_AXI1_WACK;
  output [0:0]M_AXI1_ARID;
  output [5:0]M_AXI1_ARADDR;
  output [7:0]M_AXI1_ARLEN;
  output [2:0]M_AXI1_ARSIZE;
  output [1:0]M_AXI1_ARBURST;
  output M_AXI1_ARLOCK;
  output [3:0]M_AXI1_ARCACHE;
  output [2:0]M_AXI1_ARPROT;
  output [3:0]M_AXI1_ARQOS;
  output M_AXI1_ARVALID;
  input M_AXI1_ARREADY;
  output [0:0]M_AXI1_ARUSER;
  output [1:0]M_AXI1_ARDOMAIN;
  output [3:0]M_AXI1_ARSNOOP;
  output [1:0]M_AXI1_ARBAR;
  input [0:0]M_AXI1_RID;
  input [31:0]M_AXI1_RDATA;
  input [1:0]M_AXI1_RRESP;
  input M_AXI1_RLAST;
  input M_AXI1_RVALID;
  output M_AXI1_RREADY;
  input [0:0]M_AXI1_RUSER;
  output M_AXI1_RACK;
  input M_AXI1_ACVALID;
  input [5:0]M_AXI1_ACADDR;
  input [3:0]M_AXI1_ACSNOOP;
  input [2:0]M_AXI1_ACPROT;
  output M_AXI1_ACREADY;
  output M_AXI1_CRVALID;
  output [4:0]M_AXI1_CRRESP;
  input M_AXI1_CRREADY;
  output M_AXI1_CDVALID;
  output [31:0]M_AXI1_CDDATA;
  output M_AXI1_CDLAST;
  input M_AXI1_CDREADY;
  output [0:0]M_AXI2_AWID;
  output [5:0]M_AXI2_AWADDR;
  output [7:0]M_AXI2_AWLEN;
  output [2:0]M_AXI2_AWSIZE;
  output [1:0]M_AXI2_AWBURST;
  output M_AXI2_AWLOCK;
  output [3:0]M_AXI2_AWCACHE;
  output [2:0]M_AXI2_AWPROT;
  output [3:0]M_AXI2_AWQOS;
  output M_AXI2_AWVALID;
  input M_AXI2_AWREADY;
  output [0:0]M_AXI2_AWUSER;
  output [1:0]M_AXI2_AWDOMAIN;
  output [2:0]M_AXI2_AWSNOOP;
  output [1:0]M_AXI2_AWBAR;
  output [31:0]M_AXI2_WDATA;
  output [3:0]M_AXI2_WSTRB;
  output M_AXI2_WLAST;
  output M_AXI2_WVALID;
  input M_AXI2_WREADY;
  output [0:0]M_AXI2_WUSER;
  input [0:0]M_AXI2_BID;
  input [1:0]M_AXI2_BRESP;
  input M_AXI2_BVALID;
  output M_AXI2_BREADY;
  input [0:0]M_AXI2_BUSER;
  output M_AXI2_WACK;
  output [0:0]M_AXI2_ARID;
  output [5:0]M_AXI2_ARADDR;
  output [7:0]M_AXI2_ARLEN;
  output [2:0]M_AXI2_ARSIZE;
  output [1:0]M_AXI2_ARBURST;
  output M_AXI2_ARLOCK;
  output [3:0]M_AXI2_ARCACHE;
  output [2:0]M_AXI2_ARPROT;
  output [3:0]M_AXI2_ARQOS;
  output M_AXI2_ARVALID;
  input M_AXI2_ARREADY;
  output [0:0]M_AXI2_ARUSER;
  output [1:0]M_AXI2_ARDOMAIN;
  output [3:0]M_AXI2_ARSNOOP;
  output [1:0]M_AXI2_ARBAR;
  input [0:0]M_AXI2_RID;
  input [31:0]M_AXI2_RDATA;
  input [1:0]M_AXI2_RRESP;
  input M_AXI2_RLAST;
  input M_AXI2_RVALID;
  output M_AXI2_RREADY;
  input [0:0]M_AXI2_RUSER;
  output M_AXI2_RACK;
  input M_AXI2_ACVALID;
  input [5:0]M_AXI2_ACADDR;
  input [3:0]M_AXI2_ACSNOOP;
  input [2:0]M_AXI2_ACPROT;
  output M_AXI2_ACREADY;
  output M_AXI2_CRVALID;
  output [4:0]M_AXI2_CRRESP;
  input M_AXI2_CRREADY;
  output M_AXI2_CDVALID;
  output [31:0]M_AXI2_CDDATA;
  output M_AXI2_CDLAST;
  input M_AXI2_CDREADY;
  output [0:0]M_AXI3_AWID;
  output [5:0]M_AXI3_AWADDR;
  output [7:0]M_AXI3_AWLEN;
  output [2:0]M_AXI3_AWSIZE;
  output [1:0]M_AXI3_AWBURST;
  output M_AXI3_AWLOCK;
  output [3:0]M_AXI3_AWCACHE;
  output [2:0]M_AXI3_AWPROT;
  output [3:0]M_AXI3_AWQOS;
  output M_AXI3_AWVALID;
  input M_AXI3_AWREADY;
  output [1:0]M_AXI3_AWDOMAIN;
  output [2:0]M_AXI3_AWSNOOP;
  output [1:0]M_AXI3_AWBAR;
  output [0:0]M_AXI3_AWUSER;
  output [31:0]M_AXI3_WDATA;
  output [3:0]M_AXI3_WSTRB;
  output M_AXI3_WLAST;
  output M_AXI3_WVALID;
  input M_AXI3_WREADY;
  output [0:0]M_AXI3_WUSER;
  input [0:0]M_AXI3_BID;
  input [1:0]M_AXI3_BRESP;
  input M_AXI3_BVALID;
  output M_AXI3_BREADY;
  input [0:0]M_AXI3_BUSER;
  output M_AXI3_WACK;
  output [0:0]M_AXI3_ARID;
  output [5:0]M_AXI3_ARADDR;
  output [7:0]M_AXI3_ARLEN;
  output [2:0]M_AXI3_ARSIZE;
  output [1:0]M_AXI3_ARBURST;
  output M_AXI3_ARLOCK;
  output [3:0]M_AXI3_ARCACHE;
  output [2:0]M_AXI3_ARPROT;
  output [3:0]M_AXI3_ARQOS;
  output M_AXI3_ARVALID;
  input M_AXI3_ARREADY;
  output [0:0]M_AXI3_ARUSER;
  output [1:0]M_AXI3_ARDOMAIN;
  output [3:0]M_AXI3_ARSNOOP;
  output [1:0]M_AXI3_ARBAR;
  input [0:0]M_AXI3_RID;
  input [31:0]M_AXI3_RDATA;
  input [1:0]M_AXI3_RRESP;
  input M_AXI3_RLAST;
  input M_AXI3_RVALID;
  output M_AXI3_RREADY;
  input [0:0]M_AXI3_RUSER;
  output M_AXI3_RACK;
  input M_AXI3_ACVALID;
  input [5:0]M_AXI3_ACADDR;
  input [3:0]M_AXI3_ACSNOOP;
  input [2:0]M_AXI3_ACPROT;
  output M_AXI3_ACREADY;
  output M_AXI3_CRVALID;
  output [4:0]M_AXI3_CRRESP;
  input M_AXI3_CRREADY;
  output M_AXI3_CDVALID;
  output [31:0]M_AXI3_CDDATA;
  output M_AXI3_CDLAST;
  input M_AXI3_CDREADY;
  input [0:0]S_AXI_AWID;
  input [5:0]S_AXI_AWADDR;
  input [7:0]S_AXI_AWLEN;
  input [2:0]S_AXI_AWSIZE;
  input [1:0]S_AXI_AWBURST;
  input S_AXI_AWLOCK;
  input [3:0]S_AXI_AWCACHE;
  input [2:0]S_AXI_AWPROT;
  input [3:0]S_AXI_AWQOS;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [0:0]S_AXI_AWUSER;
  input [1:0]S_AXI_AWDOMAIN;
  input [2:0]S_AXI_AWSNOOP;
  input [1:0]S_AXI_AWBAR;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WLAST;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  input [0:0]S_AXI_WUSER;
  output [0:0]S_AXI_BID;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  output [0:0]S_AXI_BUSER;
  input S_AXI_WACK;
  input [0:0]S_AXI_ARID;
  input [5:0]S_AXI_ARADDR;
  input [7:0]S_AXI_ARLEN;
  input [2:0]S_AXI_ARSIZE;
  input [1:0]S_AXI_ARBURST;
  input S_AXI_ARLOCK;
  input [3:0]S_AXI_ARCACHE;
  input [2:0]S_AXI_ARPROT;
  input [3:0]S_AXI_ARQOS;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  input [0:0]S_AXI_ARUSER;
  input [1:0]S_AXI_ARDOMAIN;
  input [3:0]S_AXI_ARSNOOP;
  input [1:0]S_AXI_ARBAR;
  output [0:0]S_AXI_RID;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RLAST;
  output S_AXI_RVALID;
  input S_AXI_RREADY;
  output [0:0]S_AXI_RUSER;
  input S_AXI_RACK;
  output S_AXI_ACVALID;
  output [5:0]S_AXI_ACADDR;
  output [3:0]S_AXI_ACSNOOP;
  output [2:0]S_AXI_ACPROT;
  input S_AXI_ACREADY;
  input S_AXI_CRVALID;
  input [4:0]S_AXI_CRRESP;
  output S_AXI_CRREADY;
  input S_AXI_CDVALID;
  input [31:0]S_AXI_CDDATA;
  input S_AXI_CDLAST;
  output S_AXI_CDREADY;
  input S_AXIS1_TLAST;
  input [31:0]S_AXIS1_TDATA;
  input S_AXIS1_TVALID;
  output S_AXIS1_TREADY;
  input [3:0]S_AXIS1_TSTRB;
  input [3:0]S_AXIS1_TKEEP;
  input [0:0]S_AXIS1_TID;
  input [0:0]S_AXIS1_TDEST;
  input [0:0]S_AXIS1_TUSER;
  input S_AXIS2_TLAST;
  input [31:0]S_AXIS2_TDATA;
  input S_AXIS2_TVALID;
  output S_AXIS2_TREADY;
  input [3:0]S_AXIS2_TSTRB;
  input [3:0]S_AXIS2_TKEEP;
  input [0:0]S_AXIS2_TID;
  input [0:0]S_AXIS2_TDEST;
  input [0:0]S_AXIS2_TUSER;
  input S_AXIS3_TLAST;
  input [31:0]S_AXIS3_TDATA;
  input S_AXIS3_TVALID;
  output S_AXIS3_TREADY;
  input [3:0]S_AXIS3_TSTRB;
  input [3:0]S_AXIS3_TKEEP;
  input [0:0]S_AXIS3_TID;
  input [0:0]S_AXIS3_TDEST;
  input [0:0]S_AXIS3_TUSER;
  output M_AXIS_TLAST;
  output [31:0]M_AXIS_TDATA;
  output M_AXIS_TVALID;
  input M_AXIS_TREADY;
  output [3:0]M_AXIS_TSTRB;
  output [3:0]M_AXIS_TKEEP;
  output [0:0]M_AXIS_TID;
  output [0:0]M_AXIS_TDEST;
  output [0:0]M_AXIS_TUSER;
  output M_AXIS1_TLAST;
  output [31:0]M_AXIS1_TDATA;
  output M_AXIS1_TVALID;
  input M_AXIS1_TREADY;
  output [3:0]M_AXIS1_TSTRB;
  output [3:0]M_AXIS1_TKEEP;
  output [0:0]M_AXIS1_TID;
  output [0:0]M_AXIS1_TDEST;
  output [0:0]M_AXIS1_TUSER;
  output M_AXIS2_TLAST;
  output [31:0]M_AXIS2_TDATA;
  output M_AXIS2_TVALID;
  input M_AXIS2_TREADY;
  output [3:0]M_AXIS2_TSTRB;
  output [3:0]M_AXIS2_TKEEP;
  output [0:0]M_AXIS2_TID;
  output [0:0]M_AXIS2_TDEST;
  output [0:0]M_AXIS2_TUSER;
  output M_AXIS3_TLAST;
  output [31:0]M_AXIS3_TDATA;
  output M_AXIS3_TVALID;
  input M_AXIS3_TREADY;
  output [3:0]M_AXIS3_TSTRB;
  output [3:0]M_AXIS3_TKEEP;
  output [0:0]M_AXIS3_TID;
  output [0:0]M_AXIS3_TDEST;
  output [0:0]M_AXIS3_TUSER;
  input S_AXIS_TLAST;
  input [31:0]S_AXIS_TDATA;
  input S_AXIS_TVALID;
  output S_AXIS_TREADY;
  input [3:0]S_AXIS_TSTRB;
  input [3:0]S_AXIS_TKEEP;
  input [0:0]S_AXIS_TID;
  input [0:0]S_AXIS_TDEST;
  input [0:0]S_AXIS_TUSER;
  input [0:31]Trace1_Instruction;
  input Trace1_Valid_Instr;
  input [0:31]Trace1_PC;
  input Trace1_Reg_Write;
  input [0:4]Trace1_Reg_Addr;
  input [0:14]Trace1_MSR_Reg;
  input [0:7]Trace1_PID_Reg;
  input [0:31]Trace1_New_Reg_Value;
  input Trace1_Exception_Taken;
  input [0:4]Trace1_Exception_Kind;
  input Trace1_Jump_Taken;
  input Trace1_Delay_Slot;
  input [0:31]Trace1_Data_Address;
  input [0:31]Trace1_Data_Write_Value;
  input [0:3]Trace1_Data_Byte_Enable;
  input Trace1_Data_Access;
  input Trace1_Data_Read;
  input Trace1_Data_Write;
  input Trace1_DCache_Req;
  input Trace1_DCache_Hit;
  input Trace1_DCache_Rdy;
  input Trace1_DCache_Read;
  input Trace1_ICache_Req;
  input Trace1_ICache_Hit;
  input Trace1_ICache_Rdy;
  input Trace1_OF_PipeRun;
  input Trace1_EX_PipeRun;
  input Trace1_MEM_PipeRun;
  input Trace1_MB_Halted;
  input Trace1_Jump_Hit;
  input [0:31]Trace2_Instruction;
  input Trace2_Valid_Instr;
  input [0:31]Trace2_PC;
  input Trace2_Reg_Write;
  input [0:4]Trace2_Reg_Addr;
  input [0:14]Trace2_MSR_Reg;
  input [0:7]Trace2_PID_Reg;
  input [0:31]Trace2_New_Reg_Value;
  input Trace2_Exception_Taken;
  input [0:4]Trace2_Exception_Kind;
  input Trace2_Jump_Taken;
  input Trace2_Delay_Slot;
  input [0:31]Trace2_Data_Address;
  input [0:31]Trace2_Data_Write_Value;
  input [0:3]Trace2_Data_Byte_Enable;
  input Trace2_Data_Access;
  input Trace2_Data_Read;
  input Trace2_Data_Write;
  input Trace2_DCache_Req;
  input Trace2_DCache_Hit;
  input Trace2_DCache_Rdy;
  input Trace2_DCache_Read;
  input Trace2_ICache_Req;
  input Trace2_ICache_Hit;
  input Trace2_ICache_Rdy;
  input Trace2_OF_PipeRun;
  input Trace2_EX_PipeRun;
  input Trace2_MEM_PipeRun;
  input Trace2_MB_Halted;
  input Trace2_Jump_Hit;
  input [0:31]Trace3_Instruction;
  input Trace3_Valid_Instr;
  input [0:31]Trace3_PC;
  input Trace3_Reg_Write;
  input [0:4]Trace3_Reg_Addr;
  input [0:14]Trace3_MSR_Reg;
  input [0:7]Trace3_PID_Reg;
  input [0:31]Trace3_New_Reg_Value;
  input Trace3_Exception_Taken;
  input [0:4]Trace3_Exception_Kind;
  input Trace3_Jump_Taken;
  input Trace3_Delay_Slot;
  input [0:31]Trace3_Data_Address;
  input [0:31]Trace3_Data_Write_Value;
  input [0:3]Trace3_Data_Byte_Enable;
  input Trace3_Data_Access;
  input Trace3_Data_Read;
  input Trace3_Data_Write;
  input Trace3_DCache_Req;
  input Trace3_DCache_Hit;
  input Trace3_DCache_Rdy;
  input Trace3_DCache_Read;
  input Trace3_ICache_Req;
  input Trace3_ICache_Hit;
  input Trace3_ICache_Rdy;
  input Trace3_OF_PipeRun;
  input Trace3_EX_PipeRun;
  input Trace3_MEM_PipeRun;
  input Trace3_MB_Halted;
  input Trace3_Jump_Hit;
  output [0:31]Trace_Instruction;
  output Trace_Valid_Instr;
  output [0:31]Trace_PC;
  output Trace_Reg_Write;
  output [0:4]Trace_Reg_Addr;
  output [0:14]Trace_MSR_Reg;
  output [0:7]Trace_PID_Reg;
  output [0:31]Trace_New_Reg_Value;
  output Trace_Exception_Taken;
  output [0:4]Trace_Exception_Kind;
  output Trace_Jump_Taken;
  output Trace_Delay_Slot;
  output [0:31]Trace_Data_Address;
  output [0:31]Trace_Data_Write_Value;
  output [0:3]Trace_Data_Byte_Enable;
  output Trace_Data_Access;
  output Trace_Data_Read;
  output Trace_Data_Write;
  output Trace_DCache_Req;
  output Trace_DCache_Hit;
  output Trace_DCache_Rdy;
  output Trace_DCache_Read;
  output Trace_ICache_Req;
  output Trace_ICache_Hit;
  output Trace_ICache_Rdy;
  output Trace_OF_PipeRun;
  output Trace_EX_PipeRun;
  output Trace_MEM_PipeRun;
  output Trace_MB_Halted;
  output Trace_Jump_Hit;
  output IRQ1;
  output [0:31]IRQ1_Address;
  input [0:1]IRQ1_Ack;
  output IRQ2;
  output [0:31]IRQ2_Address;
  input [0:1]IRQ2_Ack;
  output IRQ3;
  output [0:31]IRQ3_Address;
  input [0:1]IRQ3_Ack;
  input IRQ;
  input [0:31]IRQ_Address;
  output [0:1]IRQ_Ack;
  input S_IRQ1;
  input [0:31]S_IRQ1_Address;
  output [0:1]S_IRQ1_Ack;
  input S_IRQ2;
  input [0:31]S_IRQ2_Address;
  output [0:1]S_IRQ2_Ack;
  input S_IRQ3;
  input [0:31]S_IRQ3_Address;
  output [0:1]S_IRQ3_Ack;
  output M_IRQ;
  output [0:31]M_IRQ_Address;
  input [0:1]M_IRQ_Ack;
  input IO1_Addr_Strobe;
  input IO1_Read_Strobe;
  input IO1_Write_Strobe;
  input [31:0]IO1_Address;
  input [3:0]IO1_Byte_Enable;
  input [31:0]IO1_Write_Data;
  output [31:0]IO1_Read_Data;
  output IO1_Ready;
  input IO2_Addr_Strobe;
  input IO2_Read_Strobe;
  input IO2_Write_Strobe;
  input [31:0]IO2_Address;
  input [3:0]IO2_Byte_Enable;
  input [31:0]IO2_Write_Data;
  output [31:0]IO2_Read_Data;
  output IO2_Ready;
  input IO3_Addr_Strobe;
  input IO3_Read_Strobe;
  input IO3_Write_Strobe;
  input [31:0]IO3_Address;
  input [3:0]IO3_Byte_Enable;
  input [31:0]IO3_Write_Data;
  output [31:0]IO3_Read_Data;
  output IO3_Ready;
  output IO_Addr_Strobe;
  output IO_Read_Strobe;
  output IO_Write_Strobe;
  output [31:0]IO_Address;
  output [3:0]IO_Byte_Enable;
  output [31:0]IO_Write_Data;
  input [31:0]IO_Read_Data;
  input IO_Ready;
  input [31:0]GPO1;
  input [31:0]GPT1;
  output [31:0]GPI1;
  input [31:0]GPO2;
  input [31:0]GPT2;
  output [31:0]GPI2;
  input [31:0]GPO3;
  input [31:0]GPT3;
  output [31:0]GPI3;
  output [31:0]GPO;
  output [31:0]GPT;
  input [31:0]GPI;
  input UART1_TxD;
  output UART1_RxD;
  input UART1_RTSn;
  output UART1_CTSn;
  input UART1_DTRn;
  output UART1_DSRn;
  input UART1_BAUDOUTn;
  output UART1_RCLK;
  output UART1_XIN;
  input UART1_XOUT;
  output UART1_DCDn;
  input UART1_DDIS;
  input UART1_OUT1n;
  input UART1_OUT2n;
  input UART1_TXRDYn;
  input UART1_RXRDYn;
  output UART1_RI;
  input UART2_TxD;
  output UART2_RxD;
  input UART2_RTSn;
  output UART2_CTSn;
  input UART2_DTRn;
  output UART2_DSRn;
  input UART2_BAUDOUTn;
  output UART2_RCLK;
  output UART2_XIN;
  input UART2_XOUT;
  output UART2_DCDn;
  input UART2_DDIS;
  input UART2_OUT1n;
  input UART2_OUT2n;
  input UART2_TXRDYn;
  input UART2_RXRDYn;
  output UART2_RI;
  input UART3_TxD;
  output UART3_RxD;
  input UART3_RTSn;
  output UART3_CTSn;
  input UART3_DTRn;
  output UART3_DSRn;
  input UART3_BAUDOUTn;
  output UART3_RCLK;
  output UART3_XIN;
  input UART3_XOUT;
  output UART3_DCDn;
  input UART3_DDIS;
  input UART3_OUT1n;
  input UART3_OUT2n;
  input UART3_TXRDYn;
  input UART3_RXRDYn;
  output UART3_RI;
  output UART_TxD;
  input UART_RxD;
  output UART_RTSn;
  input UART_CTSn;
  output UART_DTRn;
  input UART_DSRn;
  output UART_BAUDOUTn;
  input UART_RCLK;
  input UART_XIN;
  output UART_XOUT;
  input UART_DCDn;
  output UART_DDIS;
  output UART_OUT1n;
  output UART_OUT2n;
  output UART_TXRDYn;
  output UART_RXRDYn;
  input UART_RI;
  output IIC1_scl_i;
  input IIC1_scl_o;
  input IIC1_scl_t;
  output IIC1_sda_i;
  input IIC1_sda_o;
  input IIC1_sda_t;
  output IIC2_scl_i;
  input IIC2_scl_o;
  input IIC2_scl_t;
  output IIC2_sda_i;
  input IIC2_sda_o;
  input IIC2_sda_t;
  output IIC3_scl_i;
  input IIC3_scl_o;
  input IIC3_scl_t;
  output IIC3_sda_i;
  input IIC3_sda_o;
  input IIC3_sda_t;
  input IIC_scl_i;
  output IIC_scl_o;
  output IIC_scl_t;
  input IIC_sda_i;
  output IIC_sda_o;
  output IIC_sda_t;
  output [3:0]Compare;
  output M_BRAM_MisMatch;

  wire \<const0> ;
  wire M_AXI1_ARREADY;
  wire M_AXI1_AWREADY;
  wire [1:0]M_AXI1_BRESP;
  wire M_AXI1_BVALID;
  wire [31:0]M_AXI1_RDATA;
  wire [1:0]M_AXI1_RRESP;
  wire M_AXI1_RVALID;
  wire M_AXI1_WREADY;
  wire M_AXI2_ARREADY;
  wire M_AXI2_AWREADY;
  wire [1:0]M_AXI2_BRESP;
  wire M_AXI2_BVALID;
  wire [31:0]M_AXI2_RDATA;
  wire [1:0]M_AXI2_RRESP;
  wire M_AXI2_RVALID;
  wire M_AXI2_WREADY;
  wire M_AXI3_ARREADY;
  wire M_AXI3_AWREADY;
  wire [1:0]M_AXI3_BRESP;
  wire M_AXI3_BVALID;
  wire [31:0]M_AXI3_RDATA;
  wire [1:0]M_AXI3_RRESP;
  wire M_AXI3_RVALID;
  wire M_AXI3_WREADY;
  wire [5:0]S_AXI_ARADDR;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [5:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire [1:0]S_AXI_BRESP;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire [1:0]S_AXI_RRESP;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;

  assign BRAM1_Din[0] = \<const0> ;
  assign BRAM1_Din[1] = \<const0> ;
  assign BRAM1_Din[2] = \<const0> ;
  assign BRAM1_Din[3] = \<const0> ;
  assign BRAM1_Din[4] = \<const0> ;
  assign BRAM1_Din[5] = \<const0> ;
  assign BRAM1_Din[6] = \<const0> ;
  assign BRAM1_Din[7] = \<const0> ;
  assign BRAM1_Din[8] = \<const0> ;
  assign BRAM1_Din[9] = \<const0> ;
  assign BRAM1_Din[10] = \<const0> ;
  assign BRAM1_Din[11] = \<const0> ;
  assign BRAM1_Din[12] = \<const0> ;
  assign BRAM1_Din[13] = \<const0> ;
  assign BRAM1_Din[14] = \<const0> ;
  assign BRAM1_Din[15] = \<const0> ;
  assign BRAM1_Din[16] = \<const0> ;
  assign BRAM1_Din[17] = \<const0> ;
  assign BRAM1_Din[18] = \<const0> ;
  assign BRAM1_Din[19] = \<const0> ;
  assign BRAM1_Din[20] = \<const0> ;
  assign BRAM1_Din[21] = \<const0> ;
  assign BRAM1_Din[22] = \<const0> ;
  assign BRAM1_Din[23] = \<const0> ;
  assign BRAM1_Din[24] = \<const0> ;
  assign BRAM1_Din[25] = \<const0> ;
  assign BRAM1_Din[26] = \<const0> ;
  assign BRAM1_Din[27] = \<const0> ;
  assign BRAM1_Din[28] = \<const0> ;
  assign BRAM1_Din[29] = \<const0> ;
  assign BRAM1_Din[30] = \<const0> ;
  assign BRAM1_Din[31] = \<const0> ;
  assign BRAM2_Din[0] = \<const0> ;
  assign BRAM2_Din[1] = \<const0> ;
  assign BRAM2_Din[2] = \<const0> ;
  assign BRAM2_Din[3] = \<const0> ;
  assign BRAM2_Din[4] = \<const0> ;
  assign BRAM2_Din[5] = \<const0> ;
  assign BRAM2_Din[6] = \<const0> ;
  assign BRAM2_Din[7] = \<const0> ;
  assign BRAM2_Din[8] = \<const0> ;
  assign BRAM2_Din[9] = \<const0> ;
  assign BRAM2_Din[10] = \<const0> ;
  assign BRAM2_Din[11] = \<const0> ;
  assign BRAM2_Din[12] = \<const0> ;
  assign BRAM2_Din[13] = \<const0> ;
  assign BRAM2_Din[14] = \<const0> ;
  assign BRAM2_Din[15] = \<const0> ;
  assign BRAM2_Din[16] = \<const0> ;
  assign BRAM2_Din[17] = \<const0> ;
  assign BRAM2_Din[18] = \<const0> ;
  assign BRAM2_Din[19] = \<const0> ;
  assign BRAM2_Din[20] = \<const0> ;
  assign BRAM2_Din[21] = \<const0> ;
  assign BRAM2_Din[22] = \<const0> ;
  assign BRAM2_Din[23] = \<const0> ;
  assign BRAM2_Din[24] = \<const0> ;
  assign BRAM2_Din[25] = \<const0> ;
  assign BRAM2_Din[26] = \<const0> ;
  assign BRAM2_Din[27] = \<const0> ;
  assign BRAM2_Din[28] = \<const0> ;
  assign BRAM2_Din[29] = \<const0> ;
  assign BRAM2_Din[30] = \<const0> ;
  assign BRAM2_Din[31] = \<const0> ;
  assign BRAM3_Din[0] = \<const0> ;
  assign BRAM3_Din[1] = \<const0> ;
  assign BRAM3_Din[2] = \<const0> ;
  assign BRAM3_Din[3] = \<const0> ;
  assign BRAM3_Din[4] = \<const0> ;
  assign BRAM3_Din[5] = \<const0> ;
  assign BRAM3_Din[6] = \<const0> ;
  assign BRAM3_Din[7] = \<const0> ;
  assign BRAM3_Din[8] = \<const0> ;
  assign BRAM3_Din[9] = \<const0> ;
  assign BRAM3_Din[10] = \<const0> ;
  assign BRAM3_Din[11] = \<const0> ;
  assign BRAM3_Din[12] = \<const0> ;
  assign BRAM3_Din[13] = \<const0> ;
  assign BRAM3_Din[14] = \<const0> ;
  assign BRAM3_Din[15] = \<const0> ;
  assign BRAM3_Din[16] = \<const0> ;
  assign BRAM3_Din[17] = \<const0> ;
  assign BRAM3_Din[18] = \<const0> ;
  assign BRAM3_Din[19] = \<const0> ;
  assign BRAM3_Din[20] = \<const0> ;
  assign BRAM3_Din[21] = \<const0> ;
  assign BRAM3_Din[22] = \<const0> ;
  assign BRAM3_Din[23] = \<const0> ;
  assign BRAM3_Din[24] = \<const0> ;
  assign BRAM3_Din[25] = \<const0> ;
  assign BRAM3_Din[26] = \<const0> ;
  assign BRAM3_Din[27] = \<const0> ;
  assign BRAM3_Din[28] = \<const0> ;
  assign BRAM3_Din[29] = \<const0> ;
  assign BRAM3_Din[30] = \<const0> ;
  assign BRAM3_Din[31] = \<const0> ;
  assign BRAM_Addr[0] = \<const0> ;
  assign BRAM_Addr[1] = \<const0> ;
  assign BRAM_Addr[2] = \<const0> ;
  assign BRAM_Addr[3] = \<const0> ;
  assign BRAM_Addr[4] = \<const0> ;
  assign BRAM_Addr[5] = \<const0> ;
  assign BRAM_Addr[6] = \<const0> ;
  assign BRAM_Addr[7] = \<const0> ;
  assign BRAM_Addr[8] = \<const0> ;
  assign BRAM_Addr[9] = \<const0> ;
  assign BRAM_Addr[10] = \<const0> ;
  assign BRAM_Addr[11] = \<const0> ;
  assign BRAM_Addr[12] = \<const0> ;
  assign BRAM_Addr[13] = \<const0> ;
  assign BRAM_Addr[14] = \<const0> ;
  assign BRAM_Addr[15] = \<const0> ;
  assign BRAM_Addr[16] = \<const0> ;
  assign BRAM_Addr[17] = \<const0> ;
  assign BRAM_Addr[18] = \<const0> ;
  assign BRAM_Addr[19] = \<const0> ;
  assign BRAM_Addr[20] = \<const0> ;
  assign BRAM_Addr[21] = \<const0> ;
  assign BRAM_Addr[22] = \<const0> ;
  assign BRAM_Addr[23] = \<const0> ;
  assign BRAM_Addr[24] = \<const0> ;
  assign BRAM_Addr[25] = \<const0> ;
  assign BRAM_Addr[26] = \<const0> ;
  assign BRAM_Addr[27] = \<const0> ;
  assign BRAM_Addr[28] = \<const0> ;
  assign BRAM_Addr[29] = \<const0> ;
  assign BRAM_Addr[30] = \<const0> ;
  assign BRAM_Addr[31] = \<const0> ;
  assign BRAM_Clk = \<const0> ;
  assign BRAM_Dout[0] = \<const0> ;
  assign BRAM_Dout[1] = \<const0> ;
  assign BRAM_Dout[2] = \<const0> ;
  assign BRAM_Dout[3] = \<const0> ;
  assign BRAM_Dout[4] = \<const0> ;
  assign BRAM_Dout[5] = \<const0> ;
  assign BRAM_Dout[6] = \<const0> ;
  assign BRAM_Dout[7] = \<const0> ;
  assign BRAM_Dout[8] = \<const0> ;
  assign BRAM_Dout[9] = \<const0> ;
  assign BRAM_Dout[10] = \<const0> ;
  assign BRAM_Dout[11] = \<const0> ;
  assign BRAM_Dout[12] = \<const0> ;
  assign BRAM_Dout[13] = \<const0> ;
  assign BRAM_Dout[14] = \<const0> ;
  assign BRAM_Dout[15] = \<const0> ;
  assign BRAM_Dout[16] = \<const0> ;
  assign BRAM_Dout[17] = \<const0> ;
  assign BRAM_Dout[18] = \<const0> ;
  assign BRAM_Dout[19] = \<const0> ;
  assign BRAM_Dout[20] = \<const0> ;
  assign BRAM_Dout[21] = \<const0> ;
  assign BRAM_Dout[22] = \<const0> ;
  assign BRAM_Dout[23] = \<const0> ;
  assign BRAM_Dout[24] = \<const0> ;
  assign BRAM_Dout[25] = \<const0> ;
  assign BRAM_Dout[26] = \<const0> ;
  assign BRAM_Dout[27] = \<const0> ;
  assign BRAM_Dout[28] = \<const0> ;
  assign BRAM_Dout[29] = \<const0> ;
  assign BRAM_Dout[30] = \<const0> ;
  assign BRAM_Dout[31] = \<const0> ;
  assign BRAM_EN = \<const0> ;
  assign BRAM_Rst = \<const0> ;
  assign BRAM_WE[0] = \<const0> ;
  assign BRAM_WE[1] = \<const0> ;
  assign BRAM_WE[2] = \<const0> ;
  assign BRAM_WE[3] = \<const0> ;
  assign Compare[3] = \<const0> ;
  assign Compare[2] = \<const0> ;
  assign Compare[1] = \<const0> ;
  assign Compare[0] = \<const0> ;
  assign Discrete[0] = \<const0> ;
  assign GPI1[31] = \<const0> ;
  assign GPI1[30] = \<const0> ;
  assign GPI1[29] = \<const0> ;
  assign GPI1[28] = \<const0> ;
  assign GPI1[27] = \<const0> ;
  assign GPI1[26] = \<const0> ;
  assign GPI1[25] = \<const0> ;
  assign GPI1[24] = \<const0> ;
  assign GPI1[23] = \<const0> ;
  assign GPI1[22] = \<const0> ;
  assign GPI1[21] = \<const0> ;
  assign GPI1[20] = \<const0> ;
  assign GPI1[19] = \<const0> ;
  assign GPI1[18] = \<const0> ;
  assign GPI1[17] = \<const0> ;
  assign GPI1[16] = \<const0> ;
  assign GPI1[15] = \<const0> ;
  assign GPI1[14] = \<const0> ;
  assign GPI1[13] = \<const0> ;
  assign GPI1[12] = \<const0> ;
  assign GPI1[11] = \<const0> ;
  assign GPI1[10] = \<const0> ;
  assign GPI1[9] = \<const0> ;
  assign GPI1[8] = \<const0> ;
  assign GPI1[7] = \<const0> ;
  assign GPI1[6] = \<const0> ;
  assign GPI1[5] = \<const0> ;
  assign GPI1[4] = \<const0> ;
  assign GPI1[3] = \<const0> ;
  assign GPI1[2] = \<const0> ;
  assign GPI1[1] = \<const0> ;
  assign GPI1[0] = \<const0> ;
  assign GPI2[31] = \<const0> ;
  assign GPI2[30] = \<const0> ;
  assign GPI2[29] = \<const0> ;
  assign GPI2[28] = \<const0> ;
  assign GPI2[27] = \<const0> ;
  assign GPI2[26] = \<const0> ;
  assign GPI2[25] = \<const0> ;
  assign GPI2[24] = \<const0> ;
  assign GPI2[23] = \<const0> ;
  assign GPI2[22] = \<const0> ;
  assign GPI2[21] = \<const0> ;
  assign GPI2[20] = \<const0> ;
  assign GPI2[19] = \<const0> ;
  assign GPI2[18] = \<const0> ;
  assign GPI2[17] = \<const0> ;
  assign GPI2[16] = \<const0> ;
  assign GPI2[15] = \<const0> ;
  assign GPI2[14] = \<const0> ;
  assign GPI2[13] = \<const0> ;
  assign GPI2[12] = \<const0> ;
  assign GPI2[11] = \<const0> ;
  assign GPI2[10] = \<const0> ;
  assign GPI2[9] = \<const0> ;
  assign GPI2[8] = \<const0> ;
  assign GPI2[7] = \<const0> ;
  assign GPI2[6] = \<const0> ;
  assign GPI2[5] = \<const0> ;
  assign GPI2[4] = \<const0> ;
  assign GPI2[3] = \<const0> ;
  assign GPI2[2] = \<const0> ;
  assign GPI2[1] = \<const0> ;
  assign GPI2[0] = \<const0> ;
  assign GPI3[31] = \<const0> ;
  assign GPI3[30] = \<const0> ;
  assign GPI3[29] = \<const0> ;
  assign GPI3[28] = \<const0> ;
  assign GPI3[27] = \<const0> ;
  assign GPI3[26] = \<const0> ;
  assign GPI3[25] = \<const0> ;
  assign GPI3[24] = \<const0> ;
  assign GPI3[23] = \<const0> ;
  assign GPI3[22] = \<const0> ;
  assign GPI3[21] = \<const0> ;
  assign GPI3[20] = \<const0> ;
  assign GPI3[19] = \<const0> ;
  assign GPI3[18] = \<const0> ;
  assign GPI3[17] = \<const0> ;
  assign GPI3[16] = \<const0> ;
  assign GPI3[15] = \<const0> ;
  assign GPI3[14] = \<const0> ;
  assign GPI3[13] = \<const0> ;
  assign GPI3[12] = \<const0> ;
  assign GPI3[11] = \<const0> ;
  assign GPI3[10] = \<const0> ;
  assign GPI3[9] = \<const0> ;
  assign GPI3[8] = \<const0> ;
  assign GPI3[7] = \<const0> ;
  assign GPI3[6] = \<const0> ;
  assign GPI3[5] = \<const0> ;
  assign GPI3[4] = \<const0> ;
  assign GPI3[3] = \<const0> ;
  assign GPI3[2] = \<const0> ;
  assign GPI3[1] = \<const0> ;
  assign GPI3[0] = \<const0> ;
  assign GPO[31] = \<const0> ;
  assign GPO[30] = \<const0> ;
  assign GPO[29] = \<const0> ;
  assign GPO[28] = \<const0> ;
  assign GPO[27] = \<const0> ;
  assign GPO[26] = \<const0> ;
  assign GPO[25] = \<const0> ;
  assign GPO[24] = \<const0> ;
  assign GPO[23] = \<const0> ;
  assign GPO[22] = \<const0> ;
  assign GPO[21] = \<const0> ;
  assign GPO[20] = \<const0> ;
  assign GPO[19] = \<const0> ;
  assign GPO[18] = \<const0> ;
  assign GPO[17] = \<const0> ;
  assign GPO[16] = \<const0> ;
  assign GPO[15] = \<const0> ;
  assign GPO[14] = \<const0> ;
  assign GPO[13] = \<const0> ;
  assign GPO[12] = \<const0> ;
  assign GPO[11] = \<const0> ;
  assign GPO[10] = \<const0> ;
  assign GPO[9] = \<const0> ;
  assign GPO[8] = \<const0> ;
  assign GPO[7] = \<const0> ;
  assign GPO[6] = \<const0> ;
  assign GPO[5] = \<const0> ;
  assign GPO[4] = \<const0> ;
  assign GPO[3] = \<const0> ;
  assign GPO[2] = \<const0> ;
  assign GPO[1] = \<const0> ;
  assign GPO[0] = \<const0> ;
  assign GPT[31] = \<const0> ;
  assign GPT[30] = \<const0> ;
  assign GPT[29] = \<const0> ;
  assign GPT[28] = \<const0> ;
  assign GPT[27] = \<const0> ;
  assign GPT[26] = \<const0> ;
  assign GPT[25] = \<const0> ;
  assign GPT[24] = \<const0> ;
  assign GPT[23] = \<const0> ;
  assign GPT[22] = \<const0> ;
  assign GPT[21] = \<const0> ;
  assign GPT[20] = \<const0> ;
  assign GPT[19] = \<const0> ;
  assign GPT[18] = \<const0> ;
  assign GPT[17] = \<const0> ;
  assign GPT[16] = \<const0> ;
  assign GPT[15] = \<const0> ;
  assign GPT[14] = \<const0> ;
  assign GPT[13] = \<const0> ;
  assign GPT[12] = \<const0> ;
  assign GPT[11] = \<const0> ;
  assign GPT[10] = \<const0> ;
  assign GPT[9] = \<const0> ;
  assign GPT[8] = \<const0> ;
  assign GPT[7] = \<const0> ;
  assign GPT[6] = \<const0> ;
  assign GPT[5] = \<const0> ;
  assign GPT[4] = \<const0> ;
  assign GPT[3] = \<const0> ;
  assign GPT[2] = \<const0> ;
  assign GPT[1] = \<const0> ;
  assign GPT[0] = \<const0> ;
  assign IIC1_scl_i = \<const0> ;
  assign IIC1_sda_i = \<const0> ;
  assign IIC2_scl_i = \<const0> ;
  assign IIC2_sda_i = \<const0> ;
  assign IIC3_scl_i = \<const0> ;
  assign IIC3_sda_i = \<const0> ;
  assign IIC_scl_o = \<const0> ;
  assign IIC_scl_t = \<const0> ;
  assign IIC_sda_o = \<const0> ;
  assign IIC_sda_t = \<const0> ;
  assign IO1_Read_Data[31] = \<const0> ;
  assign IO1_Read_Data[30] = \<const0> ;
  assign IO1_Read_Data[29] = \<const0> ;
  assign IO1_Read_Data[28] = \<const0> ;
  assign IO1_Read_Data[27] = \<const0> ;
  assign IO1_Read_Data[26] = \<const0> ;
  assign IO1_Read_Data[25] = \<const0> ;
  assign IO1_Read_Data[24] = \<const0> ;
  assign IO1_Read_Data[23] = \<const0> ;
  assign IO1_Read_Data[22] = \<const0> ;
  assign IO1_Read_Data[21] = \<const0> ;
  assign IO1_Read_Data[20] = \<const0> ;
  assign IO1_Read_Data[19] = \<const0> ;
  assign IO1_Read_Data[18] = \<const0> ;
  assign IO1_Read_Data[17] = \<const0> ;
  assign IO1_Read_Data[16] = \<const0> ;
  assign IO1_Read_Data[15] = \<const0> ;
  assign IO1_Read_Data[14] = \<const0> ;
  assign IO1_Read_Data[13] = \<const0> ;
  assign IO1_Read_Data[12] = \<const0> ;
  assign IO1_Read_Data[11] = \<const0> ;
  assign IO1_Read_Data[10] = \<const0> ;
  assign IO1_Read_Data[9] = \<const0> ;
  assign IO1_Read_Data[8] = \<const0> ;
  assign IO1_Read_Data[7] = \<const0> ;
  assign IO1_Read_Data[6] = \<const0> ;
  assign IO1_Read_Data[5] = \<const0> ;
  assign IO1_Read_Data[4] = \<const0> ;
  assign IO1_Read_Data[3] = \<const0> ;
  assign IO1_Read_Data[2] = \<const0> ;
  assign IO1_Read_Data[1] = \<const0> ;
  assign IO1_Read_Data[0] = \<const0> ;
  assign IO1_Ready = \<const0> ;
  assign IO2_Read_Data[31] = \<const0> ;
  assign IO2_Read_Data[30] = \<const0> ;
  assign IO2_Read_Data[29] = \<const0> ;
  assign IO2_Read_Data[28] = \<const0> ;
  assign IO2_Read_Data[27] = \<const0> ;
  assign IO2_Read_Data[26] = \<const0> ;
  assign IO2_Read_Data[25] = \<const0> ;
  assign IO2_Read_Data[24] = \<const0> ;
  assign IO2_Read_Data[23] = \<const0> ;
  assign IO2_Read_Data[22] = \<const0> ;
  assign IO2_Read_Data[21] = \<const0> ;
  assign IO2_Read_Data[20] = \<const0> ;
  assign IO2_Read_Data[19] = \<const0> ;
  assign IO2_Read_Data[18] = \<const0> ;
  assign IO2_Read_Data[17] = \<const0> ;
  assign IO2_Read_Data[16] = \<const0> ;
  assign IO2_Read_Data[15] = \<const0> ;
  assign IO2_Read_Data[14] = \<const0> ;
  assign IO2_Read_Data[13] = \<const0> ;
  assign IO2_Read_Data[12] = \<const0> ;
  assign IO2_Read_Data[11] = \<const0> ;
  assign IO2_Read_Data[10] = \<const0> ;
  assign IO2_Read_Data[9] = \<const0> ;
  assign IO2_Read_Data[8] = \<const0> ;
  assign IO2_Read_Data[7] = \<const0> ;
  assign IO2_Read_Data[6] = \<const0> ;
  assign IO2_Read_Data[5] = \<const0> ;
  assign IO2_Read_Data[4] = \<const0> ;
  assign IO2_Read_Data[3] = \<const0> ;
  assign IO2_Read_Data[2] = \<const0> ;
  assign IO2_Read_Data[1] = \<const0> ;
  assign IO2_Read_Data[0] = \<const0> ;
  assign IO2_Ready = \<const0> ;
  assign IO3_Read_Data[31] = \<const0> ;
  assign IO3_Read_Data[30] = \<const0> ;
  assign IO3_Read_Data[29] = \<const0> ;
  assign IO3_Read_Data[28] = \<const0> ;
  assign IO3_Read_Data[27] = \<const0> ;
  assign IO3_Read_Data[26] = \<const0> ;
  assign IO3_Read_Data[25] = \<const0> ;
  assign IO3_Read_Data[24] = \<const0> ;
  assign IO3_Read_Data[23] = \<const0> ;
  assign IO3_Read_Data[22] = \<const0> ;
  assign IO3_Read_Data[21] = \<const0> ;
  assign IO3_Read_Data[20] = \<const0> ;
  assign IO3_Read_Data[19] = \<const0> ;
  assign IO3_Read_Data[18] = \<const0> ;
  assign IO3_Read_Data[17] = \<const0> ;
  assign IO3_Read_Data[16] = \<const0> ;
  assign IO3_Read_Data[15] = \<const0> ;
  assign IO3_Read_Data[14] = \<const0> ;
  assign IO3_Read_Data[13] = \<const0> ;
  assign IO3_Read_Data[12] = \<const0> ;
  assign IO3_Read_Data[11] = \<const0> ;
  assign IO3_Read_Data[10] = \<const0> ;
  assign IO3_Read_Data[9] = \<const0> ;
  assign IO3_Read_Data[8] = \<const0> ;
  assign IO3_Read_Data[7] = \<const0> ;
  assign IO3_Read_Data[6] = \<const0> ;
  assign IO3_Read_Data[5] = \<const0> ;
  assign IO3_Read_Data[4] = \<const0> ;
  assign IO3_Read_Data[3] = \<const0> ;
  assign IO3_Read_Data[2] = \<const0> ;
  assign IO3_Read_Data[1] = \<const0> ;
  assign IO3_Read_Data[0] = \<const0> ;
  assign IO3_Ready = \<const0> ;
  assign IO_Addr_Strobe = \<const0> ;
  assign IO_Address[31] = \<const0> ;
  assign IO_Address[30] = \<const0> ;
  assign IO_Address[29] = \<const0> ;
  assign IO_Address[28] = \<const0> ;
  assign IO_Address[27] = \<const0> ;
  assign IO_Address[26] = \<const0> ;
  assign IO_Address[25] = \<const0> ;
  assign IO_Address[24] = \<const0> ;
  assign IO_Address[23] = \<const0> ;
  assign IO_Address[22] = \<const0> ;
  assign IO_Address[21] = \<const0> ;
  assign IO_Address[20] = \<const0> ;
  assign IO_Address[19] = \<const0> ;
  assign IO_Address[18] = \<const0> ;
  assign IO_Address[17] = \<const0> ;
  assign IO_Address[16] = \<const0> ;
  assign IO_Address[15] = \<const0> ;
  assign IO_Address[14] = \<const0> ;
  assign IO_Address[13] = \<const0> ;
  assign IO_Address[12] = \<const0> ;
  assign IO_Address[11] = \<const0> ;
  assign IO_Address[10] = \<const0> ;
  assign IO_Address[9] = \<const0> ;
  assign IO_Address[8] = \<const0> ;
  assign IO_Address[7] = \<const0> ;
  assign IO_Address[6] = \<const0> ;
  assign IO_Address[5] = \<const0> ;
  assign IO_Address[4] = \<const0> ;
  assign IO_Address[3] = \<const0> ;
  assign IO_Address[2] = \<const0> ;
  assign IO_Address[1] = \<const0> ;
  assign IO_Address[0] = \<const0> ;
  assign IO_Byte_Enable[3] = \<const0> ;
  assign IO_Byte_Enable[2] = \<const0> ;
  assign IO_Byte_Enable[1] = \<const0> ;
  assign IO_Byte_Enable[0] = \<const0> ;
  assign IO_Read_Strobe = \<const0> ;
  assign IO_Write_Data[31] = \<const0> ;
  assign IO_Write_Data[30] = \<const0> ;
  assign IO_Write_Data[29] = \<const0> ;
  assign IO_Write_Data[28] = \<const0> ;
  assign IO_Write_Data[27] = \<const0> ;
  assign IO_Write_Data[26] = \<const0> ;
  assign IO_Write_Data[25] = \<const0> ;
  assign IO_Write_Data[24] = \<const0> ;
  assign IO_Write_Data[23] = \<const0> ;
  assign IO_Write_Data[22] = \<const0> ;
  assign IO_Write_Data[21] = \<const0> ;
  assign IO_Write_Data[20] = \<const0> ;
  assign IO_Write_Data[19] = \<const0> ;
  assign IO_Write_Data[18] = \<const0> ;
  assign IO_Write_Data[17] = \<const0> ;
  assign IO_Write_Data[16] = \<const0> ;
  assign IO_Write_Data[15] = \<const0> ;
  assign IO_Write_Data[14] = \<const0> ;
  assign IO_Write_Data[13] = \<const0> ;
  assign IO_Write_Data[12] = \<const0> ;
  assign IO_Write_Data[11] = \<const0> ;
  assign IO_Write_Data[10] = \<const0> ;
  assign IO_Write_Data[9] = \<const0> ;
  assign IO_Write_Data[8] = \<const0> ;
  assign IO_Write_Data[7] = \<const0> ;
  assign IO_Write_Data[6] = \<const0> ;
  assign IO_Write_Data[5] = \<const0> ;
  assign IO_Write_Data[4] = \<const0> ;
  assign IO_Write_Data[3] = \<const0> ;
  assign IO_Write_Data[2] = \<const0> ;
  assign IO_Write_Data[1] = \<const0> ;
  assign IO_Write_Data[0] = \<const0> ;
  assign IO_Write_Strobe = \<const0> ;
  assign IRQ1 = \<const0> ;
  assign IRQ1_Address[0] = \<const0> ;
  assign IRQ1_Address[1] = \<const0> ;
  assign IRQ1_Address[2] = \<const0> ;
  assign IRQ1_Address[3] = \<const0> ;
  assign IRQ1_Address[4] = \<const0> ;
  assign IRQ1_Address[5] = \<const0> ;
  assign IRQ1_Address[6] = \<const0> ;
  assign IRQ1_Address[7] = \<const0> ;
  assign IRQ1_Address[8] = \<const0> ;
  assign IRQ1_Address[9] = \<const0> ;
  assign IRQ1_Address[10] = \<const0> ;
  assign IRQ1_Address[11] = \<const0> ;
  assign IRQ1_Address[12] = \<const0> ;
  assign IRQ1_Address[13] = \<const0> ;
  assign IRQ1_Address[14] = \<const0> ;
  assign IRQ1_Address[15] = \<const0> ;
  assign IRQ1_Address[16] = \<const0> ;
  assign IRQ1_Address[17] = \<const0> ;
  assign IRQ1_Address[18] = \<const0> ;
  assign IRQ1_Address[19] = \<const0> ;
  assign IRQ1_Address[20] = \<const0> ;
  assign IRQ1_Address[21] = \<const0> ;
  assign IRQ1_Address[22] = \<const0> ;
  assign IRQ1_Address[23] = \<const0> ;
  assign IRQ1_Address[24] = \<const0> ;
  assign IRQ1_Address[25] = \<const0> ;
  assign IRQ1_Address[26] = \<const0> ;
  assign IRQ1_Address[27] = \<const0> ;
  assign IRQ1_Address[28] = \<const0> ;
  assign IRQ1_Address[29] = \<const0> ;
  assign IRQ1_Address[30] = \<const0> ;
  assign IRQ1_Address[31] = \<const0> ;
  assign IRQ2 = \<const0> ;
  assign IRQ2_Address[0] = \<const0> ;
  assign IRQ2_Address[1] = \<const0> ;
  assign IRQ2_Address[2] = \<const0> ;
  assign IRQ2_Address[3] = \<const0> ;
  assign IRQ2_Address[4] = \<const0> ;
  assign IRQ2_Address[5] = \<const0> ;
  assign IRQ2_Address[6] = \<const0> ;
  assign IRQ2_Address[7] = \<const0> ;
  assign IRQ2_Address[8] = \<const0> ;
  assign IRQ2_Address[9] = \<const0> ;
  assign IRQ2_Address[10] = \<const0> ;
  assign IRQ2_Address[11] = \<const0> ;
  assign IRQ2_Address[12] = \<const0> ;
  assign IRQ2_Address[13] = \<const0> ;
  assign IRQ2_Address[14] = \<const0> ;
  assign IRQ2_Address[15] = \<const0> ;
  assign IRQ2_Address[16] = \<const0> ;
  assign IRQ2_Address[17] = \<const0> ;
  assign IRQ2_Address[18] = \<const0> ;
  assign IRQ2_Address[19] = \<const0> ;
  assign IRQ2_Address[20] = \<const0> ;
  assign IRQ2_Address[21] = \<const0> ;
  assign IRQ2_Address[22] = \<const0> ;
  assign IRQ2_Address[23] = \<const0> ;
  assign IRQ2_Address[24] = \<const0> ;
  assign IRQ2_Address[25] = \<const0> ;
  assign IRQ2_Address[26] = \<const0> ;
  assign IRQ2_Address[27] = \<const0> ;
  assign IRQ2_Address[28] = \<const0> ;
  assign IRQ2_Address[29] = \<const0> ;
  assign IRQ2_Address[30] = \<const0> ;
  assign IRQ2_Address[31] = \<const0> ;
  assign IRQ3 = \<const0> ;
  assign IRQ3_Address[0] = \<const0> ;
  assign IRQ3_Address[1] = \<const0> ;
  assign IRQ3_Address[2] = \<const0> ;
  assign IRQ3_Address[3] = \<const0> ;
  assign IRQ3_Address[4] = \<const0> ;
  assign IRQ3_Address[5] = \<const0> ;
  assign IRQ3_Address[6] = \<const0> ;
  assign IRQ3_Address[7] = \<const0> ;
  assign IRQ3_Address[8] = \<const0> ;
  assign IRQ3_Address[9] = \<const0> ;
  assign IRQ3_Address[10] = \<const0> ;
  assign IRQ3_Address[11] = \<const0> ;
  assign IRQ3_Address[12] = \<const0> ;
  assign IRQ3_Address[13] = \<const0> ;
  assign IRQ3_Address[14] = \<const0> ;
  assign IRQ3_Address[15] = \<const0> ;
  assign IRQ3_Address[16] = \<const0> ;
  assign IRQ3_Address[17] = \<const0> ;
  assign IRQ3_Address[18] = \<const0> ;
  assign IRQ3_Address[19] = \<const0> ;
  assign IRQ3_Address[20] = \<const0> ;
  assign IRQ3_Address[21] = \<const0> ;
  assign IRQ3_Address[22] = \<const0> ;
  assign IRQ3_Address[23] = \<const0> ;
  assign IRQ3_Address[24] = \<const0> ;
  assign IRQ3_Address[25] = \<const0> ;
  assign IRQ3_Address[26] = \<const0> ;
  assign IRQ3_Address[27] = \<const0> ;
  assign IRQ3_Address[28] = \<const0> ;
  assign IRQ3_Address[29] = \<const0> ;
  assign IRQ3_Address[30] = \<const0> ;
  assign IRQ3_Address[31] = \<const0> ;
  assign IRQ_Ack[0] = \<const0> ;
  assign IRQ_Ack[1] = \<const0> ;
  assign LMB_ABus[0] = \<const0> ;
  assign LMB_ABus[1] = \<const0> ;
  assign LMB_ABus[2] = \<const0> ;
  assign LMB_ABus[3] = \<const0> ;
  assign LMB_ABus[4] = \<const0> ;
  assign LMB_ABus[5] = \<const0> ;
  assign LMB_ABus[6] = \<const0> ;
  assign LMB_ABus[7] = \<const0> ;
  assign LMB_ABus[8] = \<const0> ;
  assign LMB_ABus[9] = \<const0> ;
  assign LMB_ABus[10] = \<const0> ;
  assign LMB_ABus[11] = \<const0> ;
  assign LMB_ABus[12] = \<const0> ;
  assign LMB_ABus[13] = \<const0> ;
  assign LMB_ABus[14] = \<const0> ;
  assign LMB_ABus[15] = \<const0> ;
  assign LMB_ABus[16] = \<const0> ;
  assign LMB_ABus[17] = \<const0> ;
  assign LMB_ABus[18] = \<const0> ;
  assign LMB_ABus[19] = \<const0> ;
  assign LMB_ABus[20] = \<const0> ;
  assign LMB_ABus[21] = \<const0> ;
  assign LMB_ABus[22] = \<const0> ;
  assign LMB_ABus[23] = \<const0> ;
  assign LMB_ABus[24] = \<const0> ;
  assign LMB_ABus[25] = \<const0> ;
  assign LMB_ABus[26] = \<const0> ;
  assign LMB_ABus[27] = \<const0> ;
  assign LMB_ABus[28] = \<const0> ;
  assign LMB_ABus[29] = \<const0> ;
  assign LMB_ABus[30] = \<const0> ;
  assign LMB_ABus[31] = \<const0> ;
  assign LMB_AddrStrobe = \<const0> ;
  assign LMB_BE[0] = \<const0> ;
  assign LMB_BE[1] = \<const0> ;
  assign LMB_BE[2] = \<const0> ;
  assign LMB_BE[3] = \<const0> ;
  assign LMB_ReadStrobe = \<const0> ;
  assign LMB_WriteDBus[0] = \<const0> ;
  assign LMB_WriteDBus[1] = \<const0> ;
  assign LMB_WriteDBus[2] = \<const0> ;
  assign LMB_WriteDBus[3] = \<const0> ;
  assign LMB_WriteDBus[4] = \<const0> ;
  assign LMB_WriteDBus[5] = \<const0> ;
  assign LMB_WriteDBus[6] = \<const0> ;
  assign LMB_WriteDBus[7] = \<const0> ;
  assign LMB_WriteDBus[8] = \<const0> ;
  assign LMB_WriteDBus[9] = \<const0> ;
  assign LMB_WriteDBus[10] = \<const0> ;
  assign LMB_WriteDBus[11] = \<const0> ;
  assign LMB_WriteDBus[12] = \<const0> ;
  assign LMB_WriteDBus[13] = \<const0> ;
  assign LMB_WriteDBus[14] = \<const0> ;
  assign LMB_WriteDBus[15] = \<const0> ;
  assign LMB_WriteDBus[16] = \<const0> ;
  assign LMB_WriteDBus[17] = \<const0> ;
  assign LMB_WriteDBus[18] = \<const0> ;
  assign LMB_WriteDBus[19] = \<const0> ;
  assign LMB_WriteDBus[20] = \<const0> ;
  assign LMB_WriteDBus[21] = \<const0> ;
  assign LMB_WriteDBus[22] = \<const0> ;
  assign LMB_WriteDBus[23] = \<const0> ;
  assign LMB_WriteDBus[24] = \<const0> ;
  assign LMB_WriteDBus[25] = \<const0> ;
  assign LMB_WriteDBus[26] = \<const0> ;
  assign LMB_WriteDBus[27] = \<const0> ;
  assign LMB_WriteDBus[28] = \<const0> ;
  assign LMB_WriteDBus[29] = \<const0> ;
  assign LMB_WriteDBus[30] = \<const0> ;
  assign LMB_WriteDBus[31] = \<const0> ;
  assign LMB_WriteStrobe = \<const0> ;
  assign M_AXI1_ACREADY = \<const0> ;
  assign M_AXI1_ARADDR[5:0] = S_AXI_ARADDR;
  assign M_AXI1_ARBAR[1] = \<const0> ;
  assign M_AXI1_ARBAR[0] = \<const0> ;
  assign M_AXI1_ARBURST[1] = \<const0> ;
  assign M_AXI1_ARBURST[0] = \<const0> ;
  assign M_AXI1_ARCACHE[3] = \<const0> ;
  assign M_AXI1_ARCACHE[2] = \<const0> ;
  assign M_AXI1_ARCACHE[1] = \<const0> ;
  assign M_AXI1_ARCACHE[0] = \<const0> ;
  assign M_AXI1_ARDOMAIN[1] = \<const0> ;
  assign M_AXI1_ARDOMAIN[0] = \<const0> ;
  assign M_AXI1_ARID[0] = \<const0> ;
  assign M_AXI1_ARLEN[7] = \<const0> ;
  assign M_AXI1_ARLEN[6] = \<const0> ;
  assign M_AXI1_ARLEN[5] = \<const0> ;
  assign M_AXI1_ARLEN[4] = \<const0> ;
  assign M_AXI1_ARLEN[3] = \<const0> ;
  assign M_AXI1_ARLEN[2] = \<const0> ;
  assign M_AXI1_ARLEN[1] = \<const0> ;
  assign M_AXI1_ARLEN[0] = \<const0> ;
  assign M_AXI1_ARLOCK = \<const0> ;
  assign M_AXI1_ARPROT[2] = \<const0> ;
  assign M_AXI1_ARPROT[1] = \<const0> ;
  assign M_AXI1_ARPROT[0] = \<const0> ;
  assign M_AXI1_ARQOS[3] = \<const0> ;
  assign M_AXI1_ARQOS[2] = \<const0> ;
  assign M_AXI1_ARQOS[1] = \<const0> ;
  assign M_AXI1_ARQOS[0] = \<const0> ;
  assign M_AXI1_ARSIZE[2] = \<const0> ;
  assign M_AXI1_ARSIZE[1] = \<const0> ;
  assign M_AXI1_ARSIZE[0] = \<const0> ;
  assign M_AXI1_ARSNOOP[3] = \<const0> ;
  assign M_AXI1_ARSNOOP[2] = \<const0> ;
  assign M_AXI1_ARSNOOP[1] = \<const0> ;
  assign M_AXI1_ARSNOOP[0] = \<const0> ;
  assign M_AXI1_ARUSER[0] = \<const0> ;
  assign M_AXI1_ARVALID = S_AXI_ARVALID;
  assign M_AXI1_AWADDR[5:0] = S_AXI_AWADDR;
  assign M_AXI1_AWBAR[1] = \<const0> ;
  assign M_AXI1_AWBAR[0] = \<const0> ;
  assign M_AXI1_AWBURST[1] = \<const0> ;
  assign M_AXI1_AWBURST[0] = \<const0> ;
  assign M_AXI1_AWCACHE[3] = \<const0> ;
  assign M_AXI1_AWCACHE[2] = \<const0> ;
  assign M_AXI1_AWCACHE[1] = \<const0> ;
  assign M_AXI1_AWCACHE[0] = \<const0> ;
  assign M_AXI1_AWDOMAIN[1] = \<const0> ;
  assign M_AXI1_AWDOMAIN[0] = \<const0> ;
  assign M_AXI1_AWID[0] = \<const0> ;
  assign M_AXI1_AWLEN[7] = \<const0> ;
  assign M_AXI1_AWLEN[6] = \<const0> ;
  assign M_AXI1_AWLEN[5] = \<const0> ;
  assign M_AXI1_AWLEN[4] = \<const0> ;
  assign M_AXI1_AWLEN[3] = \<const0> ;
  assign M_AXI1_AWLEN[2] = \<const0> ;
  assign M_AXI1_AWLEN[1] = \<const0> ;
  assign M_AXI1_AWLEN[0] = \<const0> ;
  assign M_AXI1_AWLOCK = \<const0> ;
  assign M_AXI1_AWPROT[2] = \<const0> ;
  assign M_AXI1_AWPROT[1] = \<const0> ;
  assign M_AXI1_AWPROT[0] = \<const0> ;
  assign M_AXI1_AWQOS[3] = \<const0> ;
  assign M_AXI1_AWQOS[2] = \<const0> ;
  assign M_AXI1_AWQOS[1] = \<const0> ;
  assign M_AXI1_AWQOS[0] = \<const0> ;
  assign M_AXI1_AWSIZE[2] = \<const0> ;
  assign M_AXI1_AWSIZE[1] = \<const0> ;
  assign M_AXI1_AWSIZE[0] = \<const0> ;
  assign M_AXI1_AWSNOOP[2] = \<const0> ;
  assign M_AXI1_AWSNOOP[1] = \<const0> ;
  assign M_AXI1_AWSNOOP[0] = \<const0> ;
  assign M_AXI1_AWUSER[0] = \<const0> ;
  assign M_AXI1_AWVALID = S_AXI_AWVALID;
  assign M_AXI1_BREADY = S_AXI_BREADY;
  assign M_AXI1_CDDATA[31] = \<const0> ;
  assign M_AXI1_CDDATA[30] = \<const0> ;
  assign M_AXI1_CDDATA[29] = \<const0> ;
  assign M_AXI1_CDDATA[28] = \<const0> ;
  assign M_AXI1_CDDATA[27] = \<const0> ;
  assign M_AXI1_CDDATA[26] = \<const0> ;
  assign M_AXI1_CDDATA[25] = \<const0> ;
  assign M_AXI1_CDDATA[24] = \<const0> ;
  assign M_AXI1_CDDATA[23] = \<const0> ;
  assign M_AXI1_CDDATA[22] = \<const0> ;
  assign M_AXI1_CDDATA[21] = \<const0> ;
  assign M_AXI1_CDDATA[20] = \<const0> ;
  assign M_AXI1_CDDATA[19] = \<const0> ;
  assign M_AXI1_CDDATA[18] = \<const0> ;
  assign M_AXI1_CDDATA[17] = \<const0> ;
  assign M_AXI1_CDDATA[16] = \<const0> ;
  assign M_AXI1_CDDATA[15] = \<const0> ;
  assign M_AXI1_CDDATA[14] = \<const0> ;
  assign M_AXI1_CDDATA[13] = \<const0> ;
  assign M_AXI1_CDDATA[12] = \<const0> ;
  assign M_AXI1_CDDATA[11] = \<const0> ;
  assign M_AXI1_CDDATA[10] = \<const0> ;
  assign M_AXI1_CDDATA[9] = \<const0> ;
  assign M_AXI1_CDDATA[8] = \<const0> ;
  assign M_AXI1_CDDATA[7] = \<const0> ;
  assign M_AXI1_CDDATA[6] = \<const0> ;
  assign M_AXI1_CDDATA[5] = \<const0> ;
  assign M_AXI1_CDDATA[4] = \<const0> ;
  assign M_AXI1_CDDATA[3] = \<const0> ;
  assign M_AXI1_CDDATA[2] = \<const0> ;
  assign M_AXI1_CDDATA[1] = \<const0> ;
  assign M_AXI1_CDDATA[0] = \<const0> ;
  assign M_AXI1_CDLAST = \<const0> ;
  assign M_AXI1_CDVALID = \<const0> ;
  assign M_AXI1_CRRESP[4] = \<const0> ;
  assign M_AXI1_CRRESP[3] = \<const0> ;
  assign M_AXI1_CRRESP[2] = \<const0> ;
  assign M_AXI1_CRRESP[1] = \<const0> ;
  assign M_AXI1_CRRESP[0] = \<const0> ;
  assign M_AXI1_CRVALID = \<const0> ;
  assign M_AXI1_RACK = \<const0> ;
  assign M_AXI1_RREADY = S_AXI_RREADY;
  assign M_AXI1_WACK = \<const0> ;
  assign M_AXI1_WDATA[31:0] = S_AXI_WDATA;
  assign M_AXI1_WLAST = \<const0> ;
  assign M_AXI1_WSTRB[3:0] = S_AXI_WSTRB;
  assign M_AXI1_WUSER[0] = \<const0> ;
  assign M_AXI1_WVALID = S_AXI_WVALID;
  assign M_AXI2_ACREADY = \<const0> ;
  assign M_AXI2_ARADDR[5:0] = S_AXI_ARADDR;
  assign M_AXI2_ARBAR[1] = \<const0> ;
  assign M_AXI2_ARBAR[0] = \<const0> ;
  assign M_AXI2_ARBURST[1] = \<const0> ;
  assign M_AXI2_ARBURST[0] = \<const0> ;
  assign M_AXI2_ARCACHE[3] = \<const0> ;
  assign M_AXI2_ARCACHE[2] = \<const0> ;
  assign M_AXI2_ARCACHE[1] = \<const0> ;
  assign M_AXI2_ARCACHE[0] = \<const0> ;
  assign M_AXI2_ARDOMAIN[1] = \<const0> ;
  assign M_AXI2_ARDOMAIN[0] = \<const0> ;
  assign M_AXI2_ARID[0] = \<const0> ;
  assign M_AXI2_ARLEN[7] = \<const0> ;
  assign M_AXI2_ARLEN[6] = \<const0> ;
  assign M_AXI2_ARLEN[5] = \<const0> ;
  assign M_AXI2_ARLEN[4] = \<const0> ;
  assign M_AXI2_ARLEN[3] = \<const0> ;
  assign M_AXI2_ARLEN[2] = \<const0> ;
  assign M_AXI2_ARLEN[1] = \<const0> ;
  assign M_AXI2_ARLEN[0] = \<const0> ;
  assign M_AXI2_ARLOCK = \<const0> ;
  assign M_AXI2_ARPROT[2] = \<const0> ;
  assign M_AXI2_ARPROT[1] = \<const0> ;
  assign M_AXI2_ARPROT[0] = \<const0> ;
  assign M_AXI2_ARQOS[3] = \<const0> ;
  assign M_AXI2_ARQOS[2] = \<const0> ;
  assign M_AXI2_ARQOS[1] = \<const0> ;
  assign M_AXI2_ARQOS[0] = \<const0> ;
  assign M_AXI2_ARSIZE[2] = \<const0> ;
  assign M_AXI2_ARSIZE[1] = \<const0> ;
  assign M_AXI2_ARSIZE[0] = \<const0> ;
  assign M_AXI2_ARSNOOP[3] = \<const0> ;
  assign M_AXI2_ARSNOOP[2] = \<const0> ;
  assign M_AXI2_ARSNOOP[1] = \<const0> ;
  assign M_AXI2_ARSNOOP[0] = \<const0> ;
  assign M_AXI2_ARUSER[0] = \<const0> ;
  assign M_AXI2_ARVALID = S_AXI_ARVALID;
  assign M_AXI2_AWADDR[5:0] = S_AXI_AWADDR;
  assign M_AXI2_AWBAR[1] = \<const0> ;
  assign M_AXI2_AWBAR[0] = \<const0> ;
  assign M_AXI2_AWBURST[1] = \<const0> ;
  assign M_AXI2_AWBURST[0] = \<const0> ;
  assign M_AXI2_AWCACHE[3] = \<const0> ;
  assign M_AXI2_AWCACHE[2] = \<const0> ;
  assign M_AXI2_AWCACHE[1] = \<const0> ;
  assign M_AXI2_AWCACHE[0] = \<const0> ;
  assign M_AXI2_AWDOMAIN[1] = \<const0> ;
  assign M_AXI2_AWDOMAIN[0] = \<const0> ;
  assign M_AXI2_AWID[0] = \<const0> ;
  assign M_AXI2_AWLEN[7] = \<const0> ;
  assign M_AXI2_AWLEN[6] = \<const0> ;
  assign M_AXI2_AWLEN[5] = \<const0> ;
  assign M_AXI2_AWLEN[4] = \<const0> ;
  assign M_AXI2_AWLEN[3] = \<const0> ;
  assign M_AXI2_AWLEN[2] = \<const0> ;
  assign M_AXI2_AWLEN[1] = \<const0> ;
  assign M_AXI2_AWLEN[0] = \<const0> ;
  assign M_AXI2_AWLOCK = \<const0> ;
  assign M_AXI2_AWPROT[2] = \<const0> ;
  assign M_AXI2_AWPROT[1] = \<const0> ;
  assign M_AXI2_AWPROT[0] = \<const0> ;
  assign M_AXI2_AWQOS[3] = \<const0> ;
  assign M_AXI2_AWQOS[2] = \<const0> ;
  assign M_AXI2_AWQOS[1] = \<const0> ;
  assign M_AXI2_AWQOS[0] = \<const0> ;
  assign M_AXI2_AWSIZE[2] = \<const0> ;
  assign M_AXI2_AWSIZE[1] = \<const0> ;
  assign M_AXI2_AWSIZE[0] = \<const0> ;
  assign M_AXI2_AWSNOOP[2] = \<const0> ;
  assign M_AXI2_AWSNOOP[1] = \<const0> ;
  assign M_AXI2_AWSNOOP[0] = \<const0> ;
  assign M_AXI2_AWUSER[0] = \<const0> ;
  assign M_AXI2_AWVALID = S_AXI_AWVALID;
  assign M_AXI2_BREADY = S_AXI_BREADY;
  assign M_AXI2_CDDATA[31] = \<const0> ;
  assign M_AXI2_CDDATA[30] = \<const0> ;
  assign M_AXI2_CDDATA[29] = \<const0> ;
  assign M_AXI2_CDDATA[28] = \<const0> ;
  assign M_AXI2_CDDATA[27] = \<const0> ;
  assign M_AXI2_CDDATA[26] = \<const0> ;
  assign M_AXI2_CDDATA[25] = \<const0> ;
  assign M_AXI2_CDDATA[24] = \<const0> ;
  assign M_AXI2_CDDATA[23] = \<const0> ;
  assign M_AXI2_CDDATA[22] = \<const0> ;
  assign M_AXI2_CDDATA[21] = \<const0> ;
  assign M_AXI2_CDDATA[20] = \<const0> ;
  assign M_AXI2_CDDATA[19] = \<const0> ;
  assign M_AXI2_CDDATA[18] = \<const0> ;
  assign M_AXI2_CDDATA[17] = \<const0> ;
  assign M_AXI2_CDDATA[16] = \<const0> ;
  assign M_AXI2_CDDATA[15] = \<const0> ;
  assign M_AXI2_CDDATA[14] = \<const0> ;
  assign M_AXI2_CDDATA[13] = \<const0> ;
  assign M_AXI2_CDDATA[12] = \<const0> ;
  assign M_AXI2_CDDATA[11] = \<const0> ;
  assign M_AXI2_CDDATA[10] = \<const0> ;
  assign M_AXI2_CDDATA[9] = \<const0> ;
  assign M_AXI2_CDDATA[8] = \<const0> ;
  assign M_AXI2_CDDATA[7] = \<const0> ;
  assign M_AXI2_CDDATA[6] = \<const0> ;
  assign M_AXI2_CDDATA[5] = \<const0> ;
  assign M_AXI2_CDDATA[4] = \<const0> ;
  assign M_AXI2_CDDATA[3] = \<const0> ;
  assign M_AXI2_CDDATA[2] = \<const0> ;
  assign M_AXI2_CDDATA[1] = \<const0> ;
  assign M_AXI2_CDDATA[0] = \<const0> ;
  assign M_AXI2_CDLAST = \<const0> ;
  assign M_AXI2_CDVALID = \<const0> ;
  assign M_AXI2_CRRESP[4] = \<const0> ;
  assign M_AXI2_CRRESP[3] = \<const0> ;
  assign M_AXI2_CRRESP[2] = \<const0> ;
  assign M_AXI2_CRRESP[1] = \<const0> ;
  assign M_AXI2_CRRESP[0] = \<const0> ;
  assign M_AXI2_CRVALID = \<const0> ;
  assign M_AXI2_RACK = \<const0> ;
  assign M_AXI2_RREADY = S_AXI_RREADY;
  assign M_AXI2_WACK = \<const0> ;
  assign M_AXI2_WDATA[31:0] = S_AXI_WDATA;
  assign M_AXI2_WLAST = \<const0> ;
  assign M_AXI2_WSTRB[3:0] = S_AXI_WSTRB;
  assign M_AXI2_WUSER[0] = \<const0> ;
  assign M_AXI2_WVALID = S_AXI_WVALID;
  assign M_AXI3_ACREADY = \<const0> ;
  assign M_AXI3_ARADDR[5:0] = S_AXI_ARADDR;
  assign M_AXI3_ARBAR[1] = \<const0> ;
  assign M_AXI3_ARBAR[0] = \<const0> ;
  assign M_AXI3_ARBURST[1] = \<const0> ;
  assign M_AXI3_ARBURST[0] = \<const0> ;
  assign M_AXI3_ARCACHE[3] = \<const0> ;
  assign M_AXI3_ARCACHE[2] = \<const0> ;
  assign M_AXI3_ARCACHE[1] = \<const0> ;
  assign M_AXI3_ARCACHE[0] = \<const0> ;
  assign M_AXI3_ARDOMAIN[1] = \<const0> ;
  assign M_AXI3_ARDOMAIN[0] = \<const0> ;
  assign M_AXI3_ARID[0] = \<const0> ;
  assign M_AXI3_ARLEN[7] = \<const0> ;
  assign M_AXI3_ARLEN[6] = \<const0> ;
  assign M_AXI3_ARLEN[5] = \<const0> ;
  assign M_AXI3_ARLEN[4] = \<const0> ;
  assign M_AXI3_ARLEN[3] = \<const0> ;
  assign M_AXI3_ARLEN[2] = \<const0> ;
  assign M_AXI3_ARLEN[1] = \<const0> ;
  assign M_AXI3_ARLEN[0] = \<const0> ;
  assign M_AXI3_ARLOCK = \<const0> ;
  assign M_AXI3_ARPROT[2] = \<const0> ;
  assign M_AXI3_ARPROT[1] = \<const0> ;
  assign M_AXI3_ARPROT[0] = \<const0> ;
  assign M_AXI3_ARQOS[3] = \<const0> ;
  assign M_AXI3_ARQOS[2] = \<const0> ;
  assign M_AXI3_ARQOS[1] = \<const0> ;
  assign M_AXI3_ARQOS[0] = \<const0> ;
  assign M_AXI3_ARSIZE[2] = \<const0> ;
  assign M_AXI3_ARSIZE[1] = \<const0> ;
  assign M_AXI3_ARSIZE[0] = \<const0> ;
  assign M_AXI3_ARSNOOP[3] = \<const0> ;
  assign M_AXI3_ARSNOOP[2] = \<const0> ;
  assign M_AXI3_ARSNOOP[1] = \<const0> ;
  assign M_AXI3_ARSNOOP[0] = \<const0> ;
  assign M_AXI3_ARUSER[0] = \<const0> ;
  assign M_AXI3_ARVALID = S_AXI_ARVALID;
  assign M_AXI3_AWADDR[5:0] = S_AXI_AWADDR;
  assign M_AXI3_AWBAR[1] = \<const0> ;
  assign M_AXI3_AWBAR[0] = \<const0> ;
  assign M_AXI3_AWBURST[1] = \<const0> ;
  assign M_AXI3_AWBURST[0] = \<const0> ;
  assign M_AXI3_AWCACHE[3] = \<const0> ;
  assign M_AXI3_AWCACHE[2] = \<const0> ;
  assign M_AXI3_AWCACHE[1] = \<const0> ;
  assign M_AXI3_AWCACHE[0] = \<const0> ;
  assign M_AXI3_AWDOMAIN[1] = \<const0> ;
  assign M_AXI3_AWDOMAIN[0] = \<const0> ;
  assign M_AXI3_AWID[0] = \<const0> ;
  assign M_AXI3_AWLEN[7] = \<const0> ;
  assign M_AXI3_AWLEN[6] = \<const0> ;
  assign M_AXI3_AWLEN[5] = \<const0> ;
  assign M_AXI3_AWLEN[4] = \<const0> ;
  assign M_AXI3_AWLEN[3] = \<const0> ;
  assign M_AXI3_AWLEN[2] = \<const0> ;
  assign M_AXI3_AWLEN[1] = \<const0> ;
  assign M_AXI3_AWLEN[0] = \<const0> ;
  assign M_AXI3_AWLOCK = \<const0> ;
  assign M_AXI3_AWPROT[2] = \<const0> ;
  assign M_AXI3_AWPROT[1] = \<const0> ;
  assign M_AXI3_AWPROT[0] = \<const0> ;
  assign M_AXI3_AWQOS[3] = \<const0> ;
  assign M_AXI3_AWQOS[2] = \<const0> ;
  assign M_AXI3_AWQOS[1] = \<const0> ;
  assign M_AXI3_AWQOS[0] = \<const0> ;
  assign M_AXI3_AWSIZE[2] = \<const0> ;
  assign M_AXI3_AWSIZE[1] = \<const0> ;
  assign M_AXI3_AWSIZE[0] = \<const0> ;
  assign M_AXI3_AWSNOOP[2] = \<const0> ;
  assign M_AXI3_AWSNOOP[1] = \<const0> ;
  assign M_AXI3_AWSNOOP[0] = \<const0> ;
  assign M_AXI3_AWUSER[0] = \<const0> ;
  assign M_AXI3_AWVALID = S_AXI_AWVALID;
  assign M_AXI3_BREADY = S_AXI_BREADY;
  assign M_AXI3_CDDATA[31] = \<const0> ;
  assign M_AXI3_CDDATA[30] = \<const0> ;
  assign M_AXI3_CDDATA[29] = \<const0> ;
  assign M_AXI3_CDDATA[28] = \<const0> ;
  assign M_AXI3_CDDATA[27] = \<const0> ;
  assign M_AXI3_CDDATA[26] = \<const0> ;
  assign M_AXI3_CDDATA[25] = \<const0> ;
  assign M_AXI3_CDDATA[24] = \<const0> ;
  assign M_AXI3_CDDATA[23] = \<const0> ;
  assign M_AXI3_CDDATA[22] = \<const0> ;
  assign M_AXI3_CDDATA[21] = \<const0> ;
  assign M_AXI3_CDDATA[20] = \<const0> ;
  assign M_AXI3_CDDATA[19] = \<const0> ;
  assign M_AXI3_CDDATA[18] = \<const0> ;
  assign M_AXI3_CDDATA[17] = \<const0> ;
  assign M_AXI3_CDDATA[16] = \<const0> ;
  assign M_AXI3_CDDATA[15] = \<const0> ;
  assign M_AXI3_CDDATA[14] = \<const0> ;
  assign M_AXI3_CDDATA[13] = \<const0> ;
  assign M_AXI3_CDDATA[12] = \<const0> ;
  assign M_AXI3_CDDATA[11] = \<const0> ;
  assign M_AXI3_CDDATA[10] = \<const0> ;
  assign M_AXI3_CDDATA[9] = \<const0> ;
  assign M_AXI3_CDDATA[8] = \<const0> ;
  assign M_AXI3_CDDATA[7] = \<const0> ;
  assign M_AXI3_CDDATA[6] = \<const0> ;
  assign M_AXI3_CDDATA[5] = \<const0> ;
  assign M_AXI3_CDDATA[4] = \<const0> ;
  assign M_AXI3_CDDATA[3] = \<const0> ;
  assign M_AXI3_CDDATA[2] = \<const0> ;
  assign M_AXI3_CDDATA[1] = \<const0> ;
  assign M_AXI3_CDDATA[0] = \<const0> ;
  assign M_AXI3_CDLAST = \<const0> ;
  assign M_AXI3_CDVALID = \<const0> ;
  assign M_AXI3_CRRESP[4] = \<const0> ;
  assign M_AXI3_CRRESP[3] = \<const0> ;
  assign M_AXI3_CRRESP[2] = \<const0> ;
  assign M_AXI3_CRRESP[1] = \<const0> ;
  assign M_AXI3_CRRESP[0] = \<const0> ;
  assign M_AXI3_CRVALID = \<const0> ;
  assign M_AXI3_RACK = \<const0> ;
  assign M_AXI3_RREADY = S_AXI_RREADY;
  assign M_AXI3_WACK = \<const0> ;
  assign M_AXI3_WDATA[31:0] = S_AXI_WDATA;
  assign M_AXI3_WLAST = \<const0> ;
  assign M_AXI3_WSTRB[3:0] = S_AXI_WSTRB;
  assign M_AXI3_WUSER[0] = \<const0> ;
  assign M_AXI3_WVALID = S_AXI_WVALID;
  assign M_AXIS1_TDATA[31] = \<const0> ;
  assign M_AXIS1_TDATA[30] = \<const0> ;
  assign M_AXIS1_TDATA[29] = \<const0> ;
  assign M_AXIS1_TDATA[28] = \<const0> ;
  assign M_AXIS1_TDATA[27] = \<const0> ;
  assign M_AXIS1_TDATA[26] = \<const0> ;
  assign M_AXIS1_TDATA[25] = \<const0> ;
  assign M_AXIS1_TDATA[24] = \<const0> ;
  assign M_AXIS1_TDATA[23] = \<const0> ;
  assign M_AXIS1_TDATA[22] = \<const0> ;
  assign M_AXIS1_TDATA[21] = \<const0> ;
  assign M_AXIS1_TDATA[20] = \<const0> ;
  assign M_AXIS1_TDATA[19] = \<const0> ;
  assign M_AXIS1_TDATA[18] = \<const0> ;
  assign M_AXIS1_TDATA[17] = \<const0> ;
  assign M_AXIS1_TDATA[16] = \<const0> ;
  assign M_AXIS1_TDATA[15] = \<const0> ;
  assign M_AXIS1_TDATA[14] = \<const0> ;
  assign M_AXIS1_TDATA[13] = \<const0> ;
  assign M_AXIS1_TDATA[12] = \<const0> ;
  assign M_AXIS1_TDATA[11] = \<const0> ;
  assign M_AXIS1_TDATA[10] = \<const0> ;
  assign M_AXIS1_TDATA[9] = \<const0> ;
  assign M_AXIS1_TDATA[8] = \<const0> ;
  assign M_AXIS1_TDATA[7] = \<const0> ;
  assign M_AXIS1_TDATA[6] = \<const0> ;
  assign M_AXIS1_TDATA[5] = \<const0> ;
  assign M_AXIS1_TDATA[4] = \<const0> ;
  assign M_AXIS1_TDATA[3] = \<const0> ;
  assign M_AXIS1_TDATA[2] = \<const0> ;
  assign M_AXIS1_TDATA[1] = \<const0> ;
  assign M_AXIS1_TDATA[0] = \<const0> ;
  assign M_AXIS1_TDEST[0] = \<const0> ;
  assign M_AXIS1_TID[0] = \<const0> ;
  assign M_AXIS1_TKEEP[3] = \<const0> ;
  assign M_AXIS1_TKEEP[2] = \<const0> ;
  assign M_AXIS1_TKEEP[1] = \<const0> ;
  assign M_AXIS1_TKEEP[0] = \<const0> ;
  assign M_AXIS1_TLAST = \<const0> ;
  assign M_AXIS1_TSTRB[3] = \<const0> ;
  assign M_AXIS1_TSTRB[2] = \<const0> ;
  assign M_AXIS1_TSTRB[1] = \<const0> ;
  assign M_AXIS1_TSTRB[0] = \<const0> ;
  assign M_AXIS1_TUSER[0] = \<const0> ;
  assign M_AXIS1_TVALID = \<const0> ;
  assign M_AXIS2_TDATA[31] = \<const0> ;
  assign M_AXIS2_TDATA[30] = \<const0> ;
  assign M_AXIS2_TDATA[29] = \<const0> ;
  assign M_AXIS2_TDATA[28] = \<const0> ;
  assign M_AXIS2_TDATA[27] = \<const0> ;
  assign M_AXIS2_TDATA[26] = \<const0> ;
  assign M_AXIS2_TDATA[25] = \<const0> ;
  assign M_AXIS2_TDATA[24] = \<const0> ;
  assign M_AXIS2_TDATA[23] = \<const0> ;
  assign M_AXIS2_TDATA[22] = \<const0> ;
  assign M_AXIS2_TDATA[21] = \<const0> ;
  assign M_AXIS2_TDATA[20] = \<const0> ;
  assign M_AXIS2_TDATA[19] = \<const0> ;
  assign M_AXIS2_TDATA[18] = \<const0> ;
  assign M_AXIS2_TDATA[17] = \<const0> ;
  assign M_AXIS2_TDATA[16] = \<const0> ;
  assign M_AXIS2_TDATA[15] = \<const0> ;
  assign M_AXIS2_TDATA[14] = \<const0> ;
  assign M_AXIS2_TDATA[13] = \<const0> ;
  assign M_AXIS2_TDATA[12] = \<const0> ;
  assign M_AXIS2_TDATA[11] = \<const0> ;
  assign M_AXIS2_TDATA[10] = \<const0> ;
  assign M_AXIS2_TDATA[9] = \<const0> ;
  assign M_AXIS2_TDATA[8] = \<const0> ;
  assign M_AXIS2_TDATA[7] = \<const0> ;
  assign M_AXIS2_TDATA[6] = \<const0> ;
  assign M_AXIS2_TDATA[5] = \<const0> ;
  assign M_AXIS2_TDATA[4] = \<const0> ;
  assign M_AXIS2_TDATA[3] = \<const0> ;
  assign M_AXIS2_TDATA[2] = \<const0> ;
  assign M_AXIS2_TDATA[1] = \<const0> ;
  assign M_AXIS2_TDATA[0] = \<const0> ;
  assign M_AXIS2_TDEST[0] = \<const0> ;
  assign M_AXIS2_TID[0] = \<const0> ;
  assign M_AXIS2_TKEEP[3] = \<const0> ;
  assign M_AXIS2_TKEEP[2] = \<const0> ;
  assign M_AXIS2_TKEEP[1] = \<const0> ;
  assign M_AXIS2_TKEEP[0] = \<const0> ;
  assign M_AXIS2_TLAST = \<const0> ;
  assign M_AXIS2_TSTRB[3] = \<const0> ;
  assign M_AXIS2_TSTRB[2] = \<const0> ;
  assign M_AXIS2_TSTRB[1] = \<const0> ;
  assign M_AXIS2_TSTRB[0] = \<const0> ;
  assign M_AXIS2_TUSER[0] = \<const0> ;
  assign M_AXIS2_TVALID = \<const0> ;
  assign M_AXIS3_TDATA[31] = \<const0> ;
  assign M_AXIS3_TDATA[30] = \<const0> ;
  assign M_AXIS3_TDATA[29] = \<const0> ;
  assign M_AXIS3_TDATA[28] = \<const0> ;
  assign M_AXIS3_TDATA[27] = \<const0> ;
  assign M_AXIS3_TDATA[26] = \<const0> ;
  assign M_AXIS3_TDATA[25] = \<const0> ;
  assign M_AXIS3_TDATA[24] = \<const0> ;
  assign M_AXIS3_TDATA[23] = \<const0> ;
  assign M_AXIS3_TDATA[22] = \<const0> ;
  assign M_AXIS3_TDATA[21] = \<const0> ;
  assign M_AXIS3_TDATA[20] = \<const0> ;
  assign M_AXIS3_TDATA[19] = \<const0> ;
  assign M_AXIS3_TDATA[18] = \<const0> ;
  assign M_AXIS3_TDATA[17] = \<const0> ;
  assign M_AXIS3_TDATA[16] = \<const0> ;
  assign M_AXIS3_TDATA[15] = \<const0> ;
  assign M_AXIS3_TDATA[14] = \<const0> ;
  assign M_AXIS3_TDATA[13] = \<const0> ;
  assign M_AXIS3_TDATA[12] = \<const0> ;
  assign M_AXIS3_TDATA[11] = \<const0> ;
  assign M_AXIS3_TDATA[10] = \<const0> ;
  assign M_AXIS3_TDATA[9] = \<const0> ;
  assign M_AXIS3_TDATA[8] = \<const0> ;
  assign M_AXIS3_TDATA[7] = \<const0> ;
  assign M_AXIS3_TDATA[6] = \<const0> ;
  assign M_AXIS3_TDATA[5] = \<const0> ;
  assign M_AXIS3_TDATA[4] = \<const0> ;
  assign M_AXIS3_TDATA[3] = \<const0> ;
  assign M_AXIS3_TDATA[2] = \<const0> ;
  assign M_AXIS3_TDATA[1] = \<const0> ;
  assign M_AXIS3_TDATA[0] = \<const0> ;
  assign M_AXIS3_TDEST[0] = \<const0> ;
  assign M_AXIS3_TID[0] = \<const0> ;
  assign M_AXIS3_TKEEP[3] = \<const0> ;
  assign M_AXIS3_TKEEP[2] = \<const0> ;
  assign M_AXIS3_TKEEP[1] = \<const0> ;
  assign M_AXIS3_TKEEP[0] = \<const0> ;
  assign M_AXIS3_TLAST = \<const0> ;
  assign M_AXIS3_TSTRB[3] = \<const0> ;
  assign M_AXIS3_TSTRB[2] = \<const0> ;
  assign M_AXIS3_TSTRB[1] = \<const0> ;
  assign M_AXIS3_TSTRB[0] = \<const0> ;
  assign M_AXIS3_TUSER[0] = \<const0> ;
  assign M_AXIS3_TVALID = \<const0> ;
  assign M_AXIS_TDATA[31] = \<const0> ;
  assign M_AXIS_TDATA[30] = \<const0> ;
  assign M_AXIS_TDATA[29] = \<const0> ;
  assign M_AXIS_TDATA[28] = \<const0> ;
  assign M_AXIS_TDATA[27] = \<const0> ;
  assign M_AXIS_TDATA[26] = \<const0> ;
  assign M_AXIS_TDATA[25] = \<const0> ;
  assign M_AXIS_TDATA[24] = \<const0> ;
  assign M_AXIS_TDATA[23] = \<const0> ;
  assign M_AXIS_TDATA[22] = \<const0> ;
  assign M_AXIS_TDATA[21] = \<const0> ;
  assign M_AXIS_TDATA[20] = \<const0> ;
  assign M_AXIS_TDATA[19] = \<const0> ;
  assign M_AXIS_TDATA[18] = \<const0> ;
  assign M_AXIS_TDATA[17] = \<const0> ;
  assign M_AXIS_TDATA[16] = \<const0> ;
  assign M_AXIS_TDATA[15] = \<const0> ;
  assign M_AXIS_TDATA[14] = \<const0> ;
  assign M_AXIS_TDATA[13] = \<const0> ;
  assign M_AXIS_TDATA[12] = \<const0> ;
  assign M_AXIS_TDATA[11] = \<const0> ;
  assign M_AXIS_TDATA[10] = \<const0> ;
  assign M_AXIS_TDATA[9] = \<const0> ;
  assign M_AXIS_TDATA[8] = \<const0> ;
  assign M_AXIS_TDATA[7] = \<const0> ;
  assign M_AXIS_TDATA[6] = \<const0> ;
  assign M_AXIS_TDATA[5] = \<const0> ;
  assign M_AXIS_TDATA[4] = \<const0> ;
  assign M_AXIS_TDATA[3] = \<const0> ;
  assign M_AXIS_TDATA[2] = \<const0> ;
  assign M_AXIS_TDATA[1] = \<const0> ;
  assign M_AXIS_TDATA[0] = \<const0> ;
  assign M_AXIS_TDATA_Test[31] = \<const0> ;
  assign M_AXIS_TDATA_Test[30] = \<const0> ;
  assign M_AXIS_TDATA_Test[29] = \<const0> ;
  assign M_AXIS_TDATA_Test[28] = \<const0> ;
  assign M_AXIS_TDATA_Test[27] = \<const0> ;
  assign M_AXIS_TDATA_Test[26] = \<const0> ;
  assign M_AXIS_TDATA_Test[25] = \<const0> ;
  assign M_AXIS_TDATA_Test[24] = \<const0> ;
  assign M_AXIS_TDATA_Test[23] = \<const0> ;
  assign M_AXIS_TDATA_Test[22] = \<const0> ;
  assign M_AXIS_TDATA_Test[21] = \<const0> ;
  assign M_AXIS_TDATA_Test[20] = \<const0> ;
  assign M_AXIS_TDATA_Test[19] = \<const0> ;
  assign M_AXIS_TDATA_Test[18] = \<const0> ;
  assign M_AXIS_TDATA_Test[17] = \<const0> ;
  assign M_AXIS_TDATA_Test[16] = \<const0> ;
  assign M_AXIS_TDATA_Test[15] = \<const0> ;
  assign M_AXIS_TDATA_Test[14] = \<const0> ;
  assign M_AXIS_TDATA_Test[13] = \<const0> ;
  assign M_AXIS_TDATA_Test[12] = \<const0> ;
  assign M_AXIS_TDATA_Test[11] = \<const0> ;
  assign M_AXIS_TDATA_Test[10] = \<const0> ;
  assign M_AXIS_TDATA_Test[9] = \<const0> ;
  assign M_AXIS_TDATA_Test[8] = \<const0> ;
  assign M_AXIS_TDATA_Test[7] = \<const0> ;
  assign M_AXIS_TDATA_Test[6] = \<const0> ;
  assign M_AXIS_TDATA_Test[5] = \<const0> ;
  assign M_AXIS_TDATA_Test[4] = \<const0> ;
  assign M_AXIS_TDATA_Test[3] = \<const0> ;
  assign M_AXIS_TDATA_Test[2] = \<const0> ;
  assign M_AXIS_TDATA_Test[1] = \<const0> ;
  assign M_AXIS_TDATA_Test[0] = \<const0> ;
  assign M_AXIS_TDEST[0] = \<const0> ;
  assign M_AXIS_TID[0] = \<const0> ;
  assign M_AXIS_TKEEP[3] = \<const0> ;
  assign M_AXIS_TKEEP[2] = \<const0> ;
  assign M_AXIS_TKEEP[1] = \<const0> ;
  assign M_AXIS_TKEEP[0] = \<const0> ;
  assign M_AXIS_TLAST = \<const0> ;
  assign M_AXIS_TLAST_Test = \<const0> ;
  assign M_AXIS_TSTRB[3] = \<const0> ;
  assign M_AXIS_TSTRB[2] = \<const0> ;
  assign M_AXIS_TSTRB[1] = \<const0> ;
  assign M_AXIS_TSTRB[0] = \<const0> ;
  assign M_AXIS_TUSER[0] = \<const0> ;
  assign M_AXIS_TVALID = \<const0> ;
  assign M_AXIS_TVALID_Test = \<const0> ;
  assign M_AXI_ACREADY = \<const0> ;
  assign M_AXI_ARADDR[5] = \<const0> ;
  assign M_AXI_ARADDR[4] = \<const0> ;
  assign M_AXI_ARADDR[3] = \<const0> ;
  assign M_AXI_ARADDR[2] = \<const0> ;
  assign M_AXI_ARADDR[1] = \<const0> ;
  assign M_AXI_ARADDR[0] = \<const0> ;
  assign M_AXI_ARBAR[1] = \<const0> ;
  assign M_AXI_ARBAR[0] = \<const0> ;
  assign M_AXI_ARBURST[1] = \<const0> ;
  assign M_AXI_ARBURST[0] = \<const0> ;
  assign M_AXI_ARCACHE[3] = \<const0> ;
  assign M_AXI_ARCACHE[2] = \<const0> ;
  assign M_AXI_ARCACHE[1] = \<const0> ;
  assign M_AXI_ARCACHE[0] = \<const0> ;
  assign M_AXI_ARDOMAIN[1] = \<const0> ;
  assign M_AXI_ARDOMAIN[0] = \<const0> ;
  assign M_AXI_ARID[0] = \<const0> ;
  assign M_AXI_ARLEN[7] = \<const0> ;
  assign M_AXI_ARLEN[6] = \<const0> ;
  assign M_AXI_ARLEN[5] = \<const0> ;
  assign M_AXI_ARLEN[4] = \<const0> ;
  assign M_AXI_ARLEN[3] = \<const0> ;
  assign M_AXI_ARLEN[2] = \<const0> ;
  assign M_AXI_ARLEN[1] = \<const0> ;
  assign M_AXI_ARLEN[0] = \<const0> ;
  assign M_AXI_ARLOCK = \<const0> ;
  assign M_AXI_ARPROT[2] = \<const0> ;
  assign M_AXI_ARPROT[1] = \<const0> ;
  assign M_AXI_ARPROT[0] = \<const0> ;
  assign M_AXI_ARQOS[3] = \<const0> ;
  assign M_AXI_ARQOS[2] = \<const0> ;
  assign M_AXI_ARQOS[1] = \<const0> ;
  assign M_AXI_ARQOS[0] = \<const0> ;
  assign M_AXI_ARSIZE[2] = \<const0> ;
  assign M_AXI_ARSIZE[1] = \<const0> ;
  assign M_AXI_ARSIZE[0] = \<const0> ;
  assign M_AXI_ARSNOOP[3] = \<const0> ;
  assign M_AXI_ARSNOOP[2] = \<const0> ;
  assign M_AXI_ARSNOOP[1] = \<const0> ;
  assign M_AXI_ARSNOOP[0] = \<const0> ;
  assign M_AXI_ARUSER[0] = \<const0> ;
  assign M_AXI_ARVALID = \<const0> ;
  assign M_AXI_AWADDR[5] = \<const0> ;
  assign M_AXI_AWADDR[4] = \<const0> ;
  assign M_AXI_AWADDR[3] = \<const0> ;
  assign M_AXI_AWADDR[2] = \<const0> ;
  assign M_AXI_AWADDR[1] = \<const0> ;
  assign M_AXI_AWADDR[0] = \<const0> ;
  assign M_AXI_AWBAR[1] = \<const0> ;
  assign M_AXI_AWBAR[0] = \<const0> ;
  assign M_AXI_AWBURST[1] = \<const0> ;
  assign M_AXI_AWBURST[0] = \<const0> ;
  assign M_AXI_AWCACHE[3] = \<const0> ;
  assign M_AXI_AWCACHE[2] = \<const0> ;
  assign M_AXI_AWCACHE[1] = \<const0> ;
  assign M_AXI_AWCACHE[0] = \<const0> ;
  assign M_AXI_AWDOMAIN[1] = \<const0> ;
  assign M_AXI_AWDOMAIN[0] = \<const0> ;
  assign M_AXI_AWID[0] = \<const0> ;
  assign M_AXI_AWLEN[7] = \<const0> ;
  assign M_AXI_AWLEN[6] = \<const0> ;
  assign M_AXI_AWLEN[5] = \<const0> ;
  assign M_AXI_AWLEN[4] = \<const0> ;
  assign M_AXI_AWLEN[3] = \<const0> ;
  assign M_AXI_AWLEN[2] = \<const0> ;
  assign M_AXI_AWLEN[1] = \<const0> ;
  assign M_AXI_AWLEN[0] = \<const0> ;
  assign M_AXI_AWLOCK = \<const0> ;
  assign M_AXI_AWPROT[2] = \<const0> ;
  assign M_AXI_AWPROT[1] = \<const0> ;
  assign M_AXI_AWPROT[0] = \<const0> ;
  assign M_AXI_AWQOS[3] = \<const0> ;
  assign M_AXI_AWQOS[2] = \<const0> ;
  assign M_AXI_AWQOS[1] = \<const0> ;
  assign M_AXI_AWQOS[0] = \<const0> ;
  assign M_AXI_AWSIZE[2] = \<const0> ;
  assign M_AXI_AWSIZE[1] = \<const0> ;
  assign M_AXI_AWSIZE[0] = \<const0> ;
  assign M_AXI_AWSNOOP[2] = \<const0> ;
  assign M_AXI_AWSNOOP[1] = \<const0> ;
  assign M_AXI_AWSNOOP[0] = \<const0> ;
  assign M_AXI_AWUSER[0] = \<const0> ;
  assign M_AXI_AWVALID = \<const0> ;
  assign M_AXI_BREADY = \<const0> ;
  assign M_AXI_CDDATA[31] = \<const0> ;
  assign M_AXI_CDDATA[30] = \<const0> ;
  assign M_AXI_CDDATA[29] = \<const0> ;
  assign M_AXI_CDDATA[28] = \<const0> ;
  assign M_AXI_CDDATA[27] = \<const0> ;
  assign M_AXI_CDDATA[26] = \<const0> ;
  assign M_AXI_CDDATA[25] = \<const0> ;
  assign M_AXI_CDDATA[24] = \<const0> ;
  assign M_AXI_CDDATA[23] = \<const0> ;
  assign M_AXI_CDDATA[22] = \<const0> ;
  assign M_AXI_CDDATA[21] = \<const0> ;
  assign M_AXI_CDDATA[20] = \<const0> ;
  assign M_AXI_CDDATA[19] = \<const0> ;
  assign M_AXI_CDDATA[18] = \<const0> ;
  assign M_AXI_CDDATA[17] = \<const0> ;
  assign M_AXI_CDDATA[16] = \<const0> ;
  assign M_AXI_CDDATA[15] = \<const0> ;
  assign M_AXI_CDDATA[14] = \<const0> ;
  assign M_AXI_CDDATA[13] = \<const0> ;
  assign M_AXI_CDDATA[12] = \<const0> ;
  assign M_AXI_CDDATA[11] = \<const0> ;
  assign M_AXI_CDDATA[10] = \<const0> ;
  assign M_AXI_CDDATA[9] = \<const0> ;
  assign M_AXI_CDDATA[8] = \<const0> ;
  assign M_AXI_CDDATA[7] = \<const0> ;
  assign M_AXI_CDDATA[6] = \<const0> ;
  assign M_AXI_CDDATA[5] = \<const0> ;
  assign M_AXI_CDDATA[4] = \<const0> ;
  assign M_AXI_CDDATA[3] = \<const0> ;
  assign M_AXI_CDDATA[2] = \<const0> ;
  assign M_AXI_CDDATA[1] = \<const0> ;
  assign M_AXI_CDDATA[0] = \<const0> ;
  assign M_AXI_CDLAST = \<const0> ;
  assign M_AXI_CDVALID = \<const0> ;
  assign M_AXI_CRRESP[4] = \<const0> ;
  assign M_AXI_CRRESP[3] = \<const0> ;
  assign M_AXI_CRRESP[2] = \<const0> ;
  assign M_AXI_CRRESP[1] = \<const0> ;
  assign M_AXI_CRRESP[0] = \<const0> ;
  assign M_AXI_CRVALID = \<const0> ;
  assign M_AXI_RACK = \<const0> ;
  assign M_AXI_RREADY = \<const0> ;
  assign M_AXI_WACK = \<const0> ;
  assign M_AXI_WDATA[31] = \<const0> ;
  assign M_AXI_WDATA[30] = \<const0> ;
  assign M_AXI_WDATA[29] = \<const0> ;
  assign M_AXI_WDATA[28] = \<const0> ;
  assign M_AXI_WDATA[27] = \<const0> ;
  assign M_AXI_WDATA[26] = \<const0> ;
  assign M_AXI_WDATA[25] = \<const0> ;
  assign M_AXI_WDATA[24] = \<const0> ;
  assign M_AXI_WDATA[23] = \<const0> ;
  assign M_AXI_WDATA[22] = \<const0> ;
  assign M_AXI_WDATA[21] = \<const0> ;
  assign M_AXI_WDATA[20] = \<const0> ;
  assign M_AXI_WDATA[19] = \<const0> ;
  assign M_AXI_WDATA[18] = \<const0> ;
  assign M_AXI_WDATA[17] = \<const0> ;
  assign M_AXI_WDATA[16] = \<const0> ;
  assign M_AXI_WDATA[15] = \<const0> ;
  assign M_AXI_WDATA[14] = \<const0> ;
  assign M_AXI_WDATA[13] = \<const0> ;
  assign M_AXI_WDATA[12] = \<const0> ;
  assign M_AXI_WDATA[11] = \<const0> ;
  assign M_AXI_WDATA[10] = \<const0> ;
  assign M_AXI_WDATA[9] = \<const0> ;
  assign M_AXI_WDATA[8] = \<const0> ;
  assign M_AXI_WDATA[7] = \<const0> ;
  assign M_AXI_WDATA[6] = \<const0> ;
  assign M_AXI_WDATA[5] = \<const0> ;
  assign M_AXI_WDATA[4] = \<const0> ;
  assign M_AXI_WDATA[3] = \<const0> ;
  assign M_AXI_WDATA[2] = \<const0> ;
  assign M_AXI_WDATA[1] = \<const0> ;
  assign M_AXI_WDATA[0] = \<const0> ;
  assign M_AXI_WLAST = \<const0> ;
  assign M_AXI_WSTRB[3] = \<const0> ;
  assign M_AXI_WSTRB[2] = \<const0> ;
  assign M_AXI_WSTRB[1] = \<const0> ;
  assign M_AXI_WSTRB[0] = \<const0> ;
  assign M_AXI_WUSER[0] = \<const0> ;
  assign M_AXI_WVALID = \<const0> ;
  assign M_BRAM1_Addr[0] = \<const0> ;
  assign M_BRAM1_Addr[1] = \<const0> ;
  assign M_BRAM1_Addr[2] = \<const0> ;
  assign M_BRAM1_Addr[3] = \<const0> ;
  assign M_BRAM1_Addr[4] = \<const0> ;
  assign M_BRAM1_Addr[5] = \<const0> ;
  assign M_BRAM1_Addr[6] = \<const0> ;
  assign M_BRAM1_Addr[7] = \<const0> ;
  assign M_BRAM1_Addr[8] = \<const0> ;
  assign M_BRAM1_Addr[9] = \<const0> ;
  assign M_BRAM1_Addr[10] = \<const0> ;
  assign M_BRAM1_Addr[11] = \<const0> ;
  assign M_BRAM1_Addr[12] = \<const0> ;
  assign M_BRAM1_Addr[13] = \<const0> ;
  assign M_BRAM1_Addr[14] = \<const0> ;
  assign M_BRAM1_Addr[15] = \<const0> ;
  assign M_BRAM1_Addr[16] = \<const0> ;
  assign M_BRAM1_Addr[17] = \<const0> ;
  assign M_BRAM1_Addr[18] = \<const0> ;
  assign M_BRAM1_Addr[19] = \<const0> ;
  assign M_BRAM1_Addr[20] = \<const0> ;
  assign M_BRAM1_Addr[21] = \<const0> ;
  assign M_BRAM1_Addr[22] = \<const0> ;
  assign M_BRAM1_Addr[23] = \<const0> ;
  assign M_BRAM1_Addr[24] = \<const0> ;
  assign M_BRAM1_Addr[25] = \<const0> ;
  assign M_BRAM1_Addr[26] = \<const0> ;
  assign M_BRAM1_Addr[27] = \<const0> ;
  assign M_BRAM1_Addr[28] = \<const0> ;
  assign M_BRAM1_Addr[29] = \<const0> ;
  assign M_BRAM1_Addr[30] = \<const0> ;
  assign M_BRAM1_Addr[31] = \<const0> ;
  assign M_BRAM1_Clk = \<const0> ;
  assign M_BRAM1_Dout[0] = \<const0> ;
  assign M_BRAM1_Dout[1] = \<const0> ;
  assign M_BRAM1_Dout[2] = \<const0> ;
  assign M_BRAM1_Dout[3] = \<const0> ;
  assign M_BRAM1_Dout[4] = \<const0> ;
  assign M_BRAM1_Dout[5] = \<const0> ;
  assign M_BRAM1_Dout[6] = \<const0> ;
  assign M_BRAM1_Dout[7] = \<const0> ;
  assign M_BRAM1_Dout[8] = \<const0> ;
  assign M_BRAM1_Dout[9] = \<const0> ;
  assign M_BRAM1_Dout[10] = \<const0> ;
  assign M_BRAM1_Dout[11] = \<const0> ;
  assign M_BRAM1_Dout[12] = \<const0> ;
  assign M_BRAM1_Dout[13] = \<const0> ;
  assign M_BRAM1_Dout[14] = \<const0> ;
  assign M_BRAM1_Dout[15] = \<const0> ;
  assign M_BRAM1_Dout[16] = \<const0> ;
  assign M_BRAM1_Dout[17] = \<const0> ;
  assign M_BRAM1_Dout[18] = \<const0> ;
  assign M_BRAM1_Dout[19] = \<const0> ;
  assign M_BRAM1_Dout[20] = \<const0> ;
  assign M_BRAM1_Dout[21] = \<const0> ;
  assign M_BRAM1_Dout[22] = \<const0> ;
  assign M_BRAM1_Dout[23] = \<const0> ;
  assign M_BRAM1_Dout[24] = \<const0> ;
  assign M_BRAM1_Dout[25] = \<const0> ;
  assign M_BRAM1_Dout[26] = \<const0> ;
  assign M_BRAM1_Dout[27] = \<const0> ;
  assign M_BRAM1_Dout[28] = \<const0> ;
  assign M_BRAM1_Dout[29] = \<const0> ;
  assign M_BRAM1_Dout[30] = \<const0> ;
  assign M_BRAM1_Dout[31] = \<const0> ;
  assign M_BRAM1_EN = \<const0> ;
  assign M_BRAM1_Rst = \<const0> ;
  assign M_BRAM1_WE[0] = \<const0> ;
  assign M_BRAM1_WE[1] = \<const0> ;
  assign M_BRAM1_WE[2] = \<const0> ;
  assign M_BRAM1_WE[3] = \<const0> ;
  assign M_BRAM_MisMatch = \<const0> ;
  assign M_IRQ = \<const0> ;
  assign M_IRQ_Address[0] = \<const0> ;
  assign M_IRQ_Address[1] = \<const0> ;
  assign M_IRQ_Address[2] = \<const0> ;
  assign M_IRQ_Address[3] = \<const0> ;
  assign M_IRQ_Address[4] = \<const0> ;
  assign M_IRQ_Address[5] = \<const0> ;
  assign M_IRQ_Address[6] = \<const0> ;
  assign M_IRQ_Address[7] = \<const0> ;
  assign M_IRQ_Address[8] = \<const0> ;
  assign M_IRQ_Address[9] = \<const0> ;
  assign M_IRQ_Address[10] = \<const0> ;
  assign M_IRQ_Address[11] = \<const0> ;
  assign M_IRQ_Address[12] = \<const0> ;
  assign M_IRQ_Address[13] = \<const0> ;
  assign M_IRQ_Address[14] = \<const0> ;
  assign M_IRQ_Address[15] = \<const0> ;
  assign M_IRQ_Address[16] = \<const0> ;
  assign M_IRQ_Address[17] = \<const0> ;
  assign M_IRQ_Address[18] = \<const0> ;
  assign M_IRQ_Address[19] = \<const0> ;
  assign M_IRQ_Address[20] = \<const0> ;
  assign M_IRQ_Address[21] = \<const0> ;
  assign M_IRQ_Address[22] = \<const0> ;
  assign M_IRQ_Address[23] = \<const0> ;
  assign M_IRQ_Address[24] = \<const0> ;
  assign M_IRQ_Address[25] = \<const0> ;
  assign M_IRQ_Address[26] = \<const0> ;
  assign M_IRQ_Address[27] = \<const0> ;
  assign M_IRQ_Address[28] = \<const0> ;
  assign M_IRQ_Address[29] = \<const0> ;
  assign M_IRQ_Address[30] = \<const0> ;
  assign M_IRQ_Address[31] = \<const0> ;
  assign S_AXI1_ACADDR[5] = \<const0> ;
  assign S_AXI1_ACADDR[4] = \<const0> ;
  assign S_AXI1_ACADDR[3] = \<const0> ;
  assign S_AXI1_ACADDR[2] = \<const0> ;
  assign S_AXI1_ACADDR[1] = \<const0> ;
  assign S_AXI1_ACADDR[0] = \<const0> ;
  assign S_AXI1_ACPROT[2] = \<const0> ;
  assign S_AXI1_ACPROT[1] = \<const0> ;
  assign S_AXI1_ACPROT[0] = \<const0> ;
  assign S_AXI1_ACSNOOP[3] = \<const0> ;
  assign S_AXI1_ACSNOOP[2] = \<const0> ;
  assign S_AXI1_ACSNOOP[1] = \<const0> ;
  assign S_AXI1_ACSNOOP[0] = \<const0> ;
  assign S_AXI1_ACVALID = \<const0> ;
  assign S_AXI1_ARREADY = \<const0> ;
  assign S_AXI1_AWREADY = \<const0> ;
  assign S_AXI1_BID[0] = \<const0> ;
  assign S_AXI1_BRESP[1] = \<const0> ;
  assign S_AXI1_BRESP[0] = \<const0> ;
  assign S_AXI1_BUSER[0] = \<const0> ;
  assign S_AXI1_BVALID = \<const0> ;
  assign S_AXI1_CDREADY = \<const0> ;
  assign S_AXI1_CRREADY = \<const0> ;
  assign S_AXI1_RDATA[31] = \<const0> ;
  assign S_AXI1_RDATA[30] = \<const0> ;
  assign S_AXI1_RDATA[29] = \<const0> ;
  assign S_AXI1_RDATA[28] = \<const0> ;
  assign S_AXI1_RDATA[27] = \<const0> ;
  assign S_AXI1_RDATA[26] = \<const0> ;
  assign S_AXI1_RDATA[25] = \<const0> ;
  assign S_AXI1_RDATA[24] = \<const0> ;
  assign S_AXI1_RDATA[23] = \<const0> ;
  assign S_AXI1_RDATA[22] = \<const0> ;
  assign S_AXI1_RDATA[21] = \<const0> ;
  assign S_AXI1_RDATA[20] = \<const0> ;
  assign S_AXI1_RDATA[19] = \<const0> ;
  assign S_AXI1_RDATA[18] = \<const0> ;
  assign S_AXI1_RDATA[17] = \<const0> ;
  assign S_AXI1_RDATA[16] = \<const0> ;
  assign S_AXI1_RDATA[15] = \<const0> ;
  assign S_AXI1_RDATA[14] = \<const0> ;
  assign S_AXI1_RDATA[13] = \<const0> ;
  assign S_AXI1_RDATA[12] = \<const0> ;
  assign S_AXI1_RDATA[11] = \<const0> ;
  assign S_AXI1_RDATA[10] = \<const0> ;
  assign S_AXI1_RDATA[9] = \<const0> ;
  assign S_AXI1_RDATA[8] = \<const0> ;
  assign S_AXI1_RDATA[7] = \<const0> ;
  assign S_AXI1_RDATA[6] = \<const0> ;
  assign S_AXI1_RDATA[5] = \<const0> ;
  assign S_AXI1_RDATA[4] = \<const0> ;
  assign S_AXI1_RDATA[3] = \<const0> ;
  assign S_AXI1_RDATA[2] = \<const0> ;
  assign S_AXI1_RDATA[1] = \<const0> ;
  assign S_AXI1_RDATA[0] = \<const0> ;
  assign S_AXI1_RID[0] = \<const0> ;
  assign S_AXI1_RLAST = \<const0> ;
  assign S_AXI1_RRESP[1] = \<const0> ;
  assign S_AXI1_RRESP[0] = \<const0> ;
  assign S_AXI1_RUSER[0] = \<const0> ;
  assign S_AXI1_RVALID = \<const0> ;
  assign S_AXI1_WREADY = \<const0> ;
  assign S_AXI2_ACADDR[5] = \<const0> ;
  assign S_AXI2_ACADDR[4] = \<const0> ;
  assign S_AXI2_ACADDR[3] = \<const0> ;
  assign S_AXI2_ACADDR[2] = \<const0> ;
  assign S_AXI2_ACADDR[1] = \<const0> ;
  assign S_AXI2_ACADDR[0] = \<const0> ;
  assign S_AXI2_ACPROT[2] = \<const0> ;
  assign S_AXI2_ACPROT[1] = \<const0> ;
  assign S_AXI2_ACPROT[0] = \<const0> ;
  assign S_AXI2_ACSNOOP[3] = \<const0> ;
  assign S_AXI2_ACSNOOP[2] = \<const0> ;
  assign S_AXI2_ACSNOOP[1] = \<const0> ;
  assign S_AXI2_ACSNOOP[0] = \<const0> ;
  assign S_AXI2_ACVALID = \<const0> ;
  assign S_AXI2_ARREADY = \<const0> ;
  assign S_AXI2_AWREADY = \<const0> ;
  assign S_AXI2_BID[0] = \<const0> ;
  assign S_AXI2_BRESP[1] = \<const0> ;
  assign S_AXI2_BRESP[0] = \<const0> ;
  assign S_AXI2_BUSER[0] = \<const0> ;
  assign S_AXI2_BVALID = \<const0> ;
  assign S_AXI2_CDREADY = \<const0> ;
  assign S_AXI2_CRREADY = \<const0> ;
  assign S_AXI2_RDATA[31] = \<const0> ;
  assign S_AXI2_RDATA[30] = \<const0> ;
  assign S_AXI2_RDATA[29] = \<const0> ;
  assign S_AXI2_RDATA[28] = \<const0> ;
  assign S_AXI2_RDATA[27] = \<const0> ;
  assign S_AXI2_RDATA[26] = \<const0> ;
  assign S_AXI2_RDATA[25] = \<const0> ;
  assign S_AXI2_RDATA[24] = \<const0> ;
  assign S_AXI2_RDATA[23] = \<const0> ;
  assign S_AXI2_RDATA[22] = \<const0> ;
  assign S_AXI2_RDATA[21] = \<const0> ;
  assign S_AXI2_RDATA[20] = \<const0> ;
  assign S_AXI2_RDATA[19] = \<const0> ;
  assign S_AXI2_RDATA[18] = \<const0> ;
  assign S_AXI2_RDATA[17] = \<const0> ;
  assign S_AXI2_RDATA[16] = \<const0> ;
  assign S_AXI2_RDATA[15] = \<const0> ;
  assign S_AXI2_RDATA[14] = \<const0> ;
  assign S_AXI2_RDATA[13] = \<const0> ;
  assign S_AXI2_RDATA[12] = \<const0> ;
  assign S_AXI2_RDATA[11] = \<const0> ;
  assign S_AXI2_RDATA[10] = \<const0> ;
  assign S_AXI2_RDATA[9] = \<const0> ;
  assign S_AXI2_RDATA[8] = \<const0> ;
  assign S_AXI2_RDATA[7] = \<const0> ;
  assign S_AXI2_RDATA[6] = \<const0> ;
  assign S_AXI2_RDATA[5] = \<const0> ;
  assign S_AXI2_RDATA[4] = \<const0> ;
  assign S_AXI2_RDATA[3] = \<const0> ;
  assign S_AXI2_RDATA[2] = \<const0> ;
  assign S_AXI2_RDATA[1] = \<const0> ;
  assign S_AXI2_RDATA[0] = \<const0> ;
  assign S_AXI2_RID[0] = \<const0> ;
  assign S_AXI2_RLAST = \<const0> ;
  assign S_AXI2_RRESP[1] = \<const0> ;
  assign S_AXI2_RRESP[0] = \<const0> ;
  assign S_AXI2_RUSER[0] = \<const0> ;
  assign S_AXI2_RVALID = \<const0> ;
  assign S_AXI2_WREADY = \<const0> ;
  assign S_AXI3_ACADDR[5] = \<const0> ;
  assign S_AXI3_ACADDR[4] = \<const0> ;
  assign S_AXI3_ACADDR[3] = \<const0> ;
  assign S_AXI3_ACADDR[2] = \<const0> ;
  assign S_AXI3_ACADDR[1] = \<const0> ;
  assign S_AXI3_ACADDR[0] = \<const0> ;
  assign S_AXI3_ACPROT[2] = \<const0> ;
  assign S_AXI3_ACPROT[1] = \<const0> ;
  assign S_AXI3_ACPROT[0] = \<const0> ;
  assign S_AXI3_ACSNOOP[3] = \<const0> ;
  assign S_AXI3_ACSNOOP[2] = \<const0> ;
  assign S_AXI3_ACSNOOP[1] = \<const0> ;
  assign S_AXI3_ACSNOOP[0] = \<const0> ;
  assign S_AXI3_ACVALID = \<const0> ;
  assign S_AXI3_ARREADY = \<const0> ;
  assign S_AXI3_AWREADY = \<const0> ;
  assign S_AXI3_BID[0] = \<const0> ;
  assign S_AXI3_BRESP[1] = \<const0> ;
  assign S_AXI3_BRESP[0] = \<const0> ;
  assign S_AXI3_BUSER[0] = \<const0> ;
  assign S_AXI3_BVALID = \<const0> ;
  assign S_AXI3_CDREADY = \<const0> ;
  assign S_AXI3_CRREADY = \<const0> ;
  assign S_AXI3_RDATA[31] = \<const0> ;
  assign S_AXI3_RDATA[30] = \<const0> ;
  assign S_AXI3_RDATA[29] = \<const0> ;
  assign S_AXI3_RDATA[28] = \<const0> ;
  assign S_AXI3_RDATA[27] = \<const0> ;
  assign S_AXI3_RDATA[26] = \<const0> ;
  assign S_AXI3_RDATA[25] = \<const0> ;
  assign S_AXI3_RDATA[24] = \<const0> ;
  assign S_AXI3_RDATA[23] = \<const0> ;
  assign S_AXI3_RDATA[22] = \<const0> ;
  assign S_AXI3_RDATA[21] = \<const0> ;
  assign S_AXI3_RDATA[20] = \<const0> ;
  assign S_AXI3_RDATA[19] = \<const0> ;
  assign S_AXI3_RDATA[18] = \<const0> ;
  assign S_AXI3_RDATA[17] = \<const0> ;
  assign S_AXI3_RDATA[16] = \<const0> ;
  assign S_AXI3_RDATA[15] = \<const0> ;
  assign S_AXI3_RDATA[14] = \<const0> ;
  assign S_AXI3_RDATA[13] = \<const0> ;
  assign S_AXI3_RDATA[12] = \<const0> ;
  assign S_AXI3_RDATA[11] = \<const0> ;
  assign S_AXI3_RDATA[10] = \<const0> ;
  assign S_AXI3_RDATA[9] = \<const0> ;
  assign S_AXI3_RDATA[8] = \<const0> ;
  assign S_AXI3_RDATA[7] = \<const0> ;
  assign S_AXI3_RDATA[6] = \<const0> ;
  assign S_AXI3_RDATA[5] = \<const0> ;
  assign S_AXI3_RDATA[4] = \<const0> ;
  assign S_AXI3_RDATA[3] = \<const0> ;
  assign S_AXI3_RDATA[2] = \<const0> ;
  assign S_AXI3_RDATA[1] = \<const0> ;
  assign S_AXI3_RDATA[0] = \<const0> ;
  assign S_AXI3_RID[0] = \<const0> ;
  assign S_AXI3_RLAST = \<const0> ;
  assign S_AXI3_RRESP[1] = \<const0> ;
  assign S_AXI3_RRESP[0] = \<const0> ;
  assign S_AXI3_RUSER[0] = \<const0> ;
  assign S_AXI3_RVALID = \<const0> ;
  assign S_AXI3_WREADY = \<const0> ;
  assign S_AXIS1_TREADY = \<const0> ;
  assign S_AXIS2_TREADY = \<const0> ;
  assign S_AXIS3_TREADY = \<const0> ;
  assign S_AXIS_TREADY = \<const0> ;
  assign S_AXIS_TREADY_Test = \<const0> ;
  assign S_AXI_ACADDR[5] = \<const0> ;
  assign S_AXI_ACADDR[4] = \<const0> ;
  assign S_AXI_ACADDR[3] = \<const0> ;
  assign S_AXI_ACADDR[2] = \<const0> ;
  assign S_AXI_ACADDR[1] = \<const0> ;
  assign S_AXI_ACADDR[0] = \<const0> ;
  assign S_AXI_ACPROT[2] = \<const0> ;
  assign S_AXI_ACPROT[1] = \<const0> ;
  assign S_AXI_ACPROT[0] = \<const0> ;
  assign S_AXI_ACSNOOP[3] = \<const0> ;
  assign S_AXI_ACSNOOP[2] = \<const0> ;
  assign S_AXI_ACSNOOP[1] = \<const0> ;
  assign S_AXI_ACSNOOP[0] = \<const0> ;
  assign S_AXI_ACVALID = \<const0> ;
  assign S_AXI_BID[0] = \<const0> ;
  assign S_AXI_BUSER[0] = \<const0> ;
  assign S_AXI_CDREADY = \<const0> ;
  assign S_AXI_CRREADY = \<const0> ;
  assign S_AXI_RID[0] = \<const0> ;
  assign S_AXI_RLAST = \<const0> ;
  assign S_AXI_RUSER[0] = \<const0> ;
  assign S_BRAM_Din[0] = \<const0> ;
  assign S_BRAM_Din[1] = \<const0> ;
  assign S_BRAM_Din[2] = \<const0> ;
  assign S_BRAM_Din[3] = \<const0> ;
  assign S_BRAM_Din[4] = \<const0> ;
  assign S_BRAM_Din[5] = \<const0> ;
  assign S_BRAM_Din[6] = \<const0> ;
  assign S_BRAM_Din[7] = \<const0> ;
  assign S_BRAM_Din[8] = \<const0> ;
  assign S_BRAM_Din[9] = \<const0> ;
  assign S_BRAM_Din[10] = \<const0> ;
  assign S_BRAM_Din[11] = \<const0> ;
  assign S_BRAM_Din[12] = \<const0> ;
  assign S_BRAM_Din[13] = \<const0> ;
  assign S_BRAM_Din[14] = \<const0> ;
  assign S_BRAM_Din[15] = \<const0> ;
  assign S_BRAM_Din[16] = \<const0> ;
  assign S_BRAM_Din[17] = \<const0> ;
  assign S_BRAM_Din[18] = \<const0> ;
  assign S_BRAM_Din[19] = \<const0> ;
  assign S_BRAM_Din[20] = \<const0> ;
  assign S_BRAM_Din[21] = \<const0> ;
  assign S_BRAM_Din[22] = \<const0> ;
  assign S_BRAM_Din[23] = \<const0> ;
  assign S_BRAM_Din[24] = \<const0> ;
  assign S_BRAM_Din[25] = \<const0> ;
  assign S_BRAM_Din[26] = \<const0> ;
  assign S_BRAM_Din[27] = \<const0> ;
  assign S_BRAM_Din[28] = \<const0> ;
  assign S_BRAM_Din[29] = \<const0> ;
  assign S_BRAM_Din[30] = \<const0> ;
  assign S_BRAM_Din[31] = \<const0> ;
  assign S_IRQ1_Ack[0] = \<const0> ;
  assign S_IRQ1_Ack[1] = \<const0> ;
  assign S_IRQ2_Ack[0] = \<const0> ;
  assign S_IRQ2_Ack[1] = \<const0> ;
  assign S_IRQ3_Ack[0] = \<const0> ;
  assign S_IRQ3_Ack[1] = \<const0> ;
  assign S_LMB1_ABus[0] = \<const0> ;
  assign S_LMB1_ABus[1] = \<const0> ;
  assign S_LMB1_ABus[2] = \<const0> ;
  assign S_LMB1_ABus[3] = \<const0> ;
  assign S_LMB1_ABus[4] = \<const0> ;
  assign S_LMB1_ABus[5] = \<const0> ;
  assign S_LMB1_ABus[6] = \<const0> ;
  assign S_LMB1_ABus[7] = \<const0> ;
  assign S_LMB1_ABus[8] = \<const0> ;
  assign S_LMB1_ABus[9] = \<const0> ;
  assign S_LMB1_ABus[10] = \<const0> ;
  assign S_LMB1_ABus[11] = \<const0> ;
  assign S_LMB1_ABus[12] = \<const0> ;
  assign S_LMB1_ABus[13] = \<const0> ;
  assign S_LMB1_ABus[14] = \<const0> ;
  assign S_LMB1_ABus[15] = \<const0> ;
  assign S_LMB1_ABus[16] = \<const0> ;
  assign S_LMB1_ABus[17] = \<const0> ;
  assign S_LMB1_ABus[18] = \<const0> ;
  assign S_LMB1_ABus[19] = \<const0> ;
  assign S_LMB1_ABus[20] = \<const0> ;
  assign S_LMB1_ABus[21] = \<const0> ;
  assign S_LMB1_ABus[22] = \<const0> ;
  assign S_LMB1_ABus[23] = \<const0> ;
  assign S_LMB1_ABus[24] = \<const0> ;
  assign S_LMB1_ABus[25] = \<const0> ;
  assign S_LMB1_ABus[26] = \<const0> ;
  assign S_LMB1_ABus[27] = \<const0> ;
  assign S_LMB1_ABus[28] = \<const0> ;
  assign S_LMB1_ABus[29] = \<const0> ;
  assign S_LMB1_ABus[30] = \<const0> ;
  assign S_LMB1_ABus[31] = \<const0> ;
  assign S_LMB1_AddrStrobe = \<const0> ;
  assign S_LMB1_BE[0] = \<const0> ;
  assign S_LMB1_BE[1] = \<const0> ;
  assign S_LMB1_BE[2] = \<const0> ;
  assign S_LMB1_BE[3] = \<const0> ;
  assign S_LMB1_ReadStrobe = \<const0> ;
  assign S_LMB1_WriteDBus[0] = \<const0> ;
  assign S_LMB1_WriteDBus[1] = \<const0> ;
  assign S_LMB1_WriteDBus[2] = \<const0> ;
  assign S_LMB1_WriteDBus[3] = \<const0> ;
  assign S_LMB1_WriteDBus[4] = \<const0> ;
  assign S_LMB1_WriteDBus[5] = \<const0> ;
  assign S_LMB1_WriteDBus[6] = \<const0> ;
  assign S_LMB1_WriteDBus[7] = \<const0> ;
  assign S_LMB1_WriteDBus[8] = \<const0> ;
  assign S_LMB1_WriteDBus[9] = \<const0> ;
  assign S_LMB1_WriteDBus[10] = \<const0> ;
  assign S_LMB1_WriteDBus[11] = \<const0> ;
  assign S_LMB1_WriteDBus[12] = \<const0> ;
  assign S_LMB1_WriteDBus[13] = \<const0> ;
  assign S_LMB1_WriteDBus[14] = \<const0> ;
  assign S_LMB1_WriteDBus[15] = \<const0> ;
  assign S_LMB1_WriteDBus[16] = \<const0> ;
  assign S_LMB1_WriteDBus[17] = \<const0> ;
  assign S_LMB1_WriteDBus[18] = \<const0> ;
  assign S_LMB1_WriteDBus[19] = \<const0> ;
  assign S_LMB1_WriteDBus[20] = \<const0> ;
  assign S_LMB1_WriteDBus[21] = \<const0> ;
  assign S_LMB1_WriteDBus[22] = \<const0> ;
  assign S_LMB1_WriteDBus[23] = \<const0> ;
  assign S_LMB1_WriteDBus[24] = \<const0> ;
  assign S_LMB1_WriteDBus[25] = \<const0> ;
  assign S_LMB1_WriteDBus[26] = \<const0> ;
  assign S_LMB1_WriteDBus[27] = \<const0> ;
  assign S_LMB1_WriteDBus[28] = \<const0> ;
  assign S_LMB1_WriteDBus[29] = \<const0> ;
  assign S_LMB1_WriteDBus[30] = \<const0> ;
  assign S_LMB1_WriteDBus[31] = \<const0> ;
  assign S_LMB1_WriteStrobe = \<const0> ;
  assign S_LMB2_ABus[0] = \<const0> ;
  assign S_LMB2_ABus[1] = \<const0> ;
  assign S_LMB2_ABus[2] = \<const0> ;
  assign S_LMB2_ABus[3] = \<const0> ;
  assign S_LMB2_ABus[4] = \<const0> ;
  assign S_LMB2_ABus[5] = \<const0> ;
  assign S_LMB2_ABus[6] = \<const0> ;
  assign S_LMB2_ABus[7] = \<const0> ;
  assign S_LMB2_ABus[8] = \<const0> ;
  assign S_LMB2_ABus[9] = \<const0> ;
  assign S_LMB2_ABus[10] = \<const0> ;
  assign S_LMB2_ABus[11] = \<const0> ;
  assign S_LMB2_ABus[12] = \<const0> ;
  assign S_LMB2_ABus[13] = \<const0> ;
  assign S_LMB2_ABus[14] = \<const0> ;
  assign S_LMB2_ABus[15] = \<const0> ;
  assign S_LMB2_ABus[16] = \<const0> ;
  assign S_LMB2_ABus[17] = \<const0> ;
  assign S_LMB2_ABus[18] = \<const0> ;
  assign S_LMB2_ABus[19] = \<const0> ;
  assign S_LMB2_ABus[20] = \<const0> ;
  assign S_LMB2_ABus[21] = \<const0> ;
  assign S_LMB2_ABus[22] = \<const0> ;
  assign S_LMB2_ABus[23] = \<const0> ;
  assign S_LMB2_ABus[24] = \<const0> ;
  assign S_LMB2_ABus[25] = \<const0> ;
  assign S_LMB2_ABus[26] = \<const0> ;
  assign S_LMB2_ABus[27] = \<const0> ;
  assign S_LMB2_ABus[28] = \<const0> ;
  assign S_LMB2_ABus[29] = \<const0> ;
  assign S_LMB2_ABus[30] = \<const0> ;
  assign S_LMB2_ABus[31] = \<const0> ;
  assign S_LMB2_AddrStrobe = \<const0> ;
  assign S_LMB2_BE[0] = \<const0> ;
  assign S_LMB2_BE[1] = \<const0> ;
  assign S_LMB2_BE[2] = \<const0> ;
  assign S_LMB2_BE[3] = \<const0> ;
  assign S_LMB2_ReadStrobe = \<const0> ;
  assign S_LMB2_WriteDBus[0] = \<const0> ;
  assign S_LMB2_WriteDBus[1] = \<const0> ;
  assign S_LMB2_WriteDBus[2] = \<const0> ;
  assign S_LMB2_WriteDBus[3] = \<const0> ;
  assign S_LMB2_WriteDBus[4] = \<const0> ;
  assign S_LMB2_WriteDBus[5] = \<const0> ;
  assign S_LMB2_WriteDBus[6] = \<const0> ;
  assign S_LMB2_WriteDBus[7] = \<const0> ;
  assign S_LMB2_WriteDBus[8] = \<const0> ;
  assign S_LMB2_WriteDBus[9] = \<const0> ;
  assign S_LMB2_WriteDBus[10] = \<const0> ;
  assign S_LMB2_WriteDBus[11] = \<const0> ;
  assign S_LMB2_WriteDBus[12] = \<const0> ;
  assign S_LMB2_WriteDBus[13] = \<const0> ;
  assign S_LMB2_WriteDBus[14] = \<const0> ;
  assign S_LMB2_WriteDBus[15] = \<const0> ;
  assign S_LMB2_WriteDBus[16] = \<const0> ;
  assign S_LMB2_WriteDBus[17] = \<const0> ;
  assign S_LMB2_WriteDBus[18] = \<const0> ;
  assign S_LMB2_WriteDBus[19] = \<const0> ;
  assign S_LMB2_WriteDBus[20] = \<const0> ;
  assign S_LMB2_WriteDBus[21] = \<const0> ;
  assign S_LMB2_WriteDBus[22] = \<const0> ;
  assign S_LMB2_WriteDBus[23] = \<const0> ;
  assign S_LMB2_WriteDBus[24] = \<const0> ;
  assign S_LMB2_WriteDBus[25] = \<const0> ;
  assign S_LMB2_WriteDBus[26] = \<const0> ;
  assign S_LMB2_WriteDBus[27] = \<const0> ;
  assign S_LMB2_WriteDBus[28] = \<const0> ;
  assign S_LMB2_WriteDBus[29] = \<const0> ;
  assign S_LMB2_WriteDBus[30] = \<const0> ;
  assign S_LMB2_WriteDBus[31] = \<const0> ;
  assign S_LMB2_WriteStrobe = \<const0> ;
  assign S_LMB3_ABus[0] = \<const0> ;
  assign S_LMB3_ABus[1] = \<const0> ;
  assign S_LMB3_ABus[2] = \<const0> ;
  assign S_LMB3_ABus[3] = \<const0> ;
  assign S_LMB3_ABus[4] = \<const0> ;
  assign S_LMB3_ABus[5] = \<const0> ;
  assign S_LMB3_ABus[6] = \<const0> ;
  assign S_LMB3_ABus[7] = \<const0> ;
  assign S_LMB3_ABus[8] = \<const0> ;
  assign S_LMB3_ABus[9] = \<const0> ;
  assign S_LMB3_ABus[10] = \<const0> ;
  assign S_LMB3_ABus[11] = \<const0> ;
  assign S_LMB3_ABus[12] = \<const0> ;
  assign S_LMB3_ABus[13] = \<const0> ;
  assign S_LMB3_ABus[14] = \<const0> ;
  assign S_LMB3_ABus[15] = \<const0> ;
  assign S_LMB3_ABus[16] = \<const0> ;
  assign S_LMB3_ABus[17] = \<const0> ;
  assign S_LMB3_ABus[18] = \<const0> ;
  assign S_LMB3_ABus[19] = \<const0> ;
  assign S_LMB3_ABus[20] = \<const0> ;
  assign S_LMB3_ABus[21] = \<const0> ;
  assign S_LMB3_ABus[22] = \<const0> ;
  assign S_LMB3_ABus[23] = \<const0> ;
  assign S_LMB3_ABus[24] = \<const0> ;
  assign S_LMB3_ABus[25] = \<const0> ;
  assign S_LMB3_ABus[26] = \<const0> ;
  assign S_LMB3_ABus[27] = \<const0> ;
  assign S_LMB3_ABus[28] = \<const0> ;
  assign S_LMB3_ABus[29] = \<const0> ;
  assign S_LMB3_ABus[30] = \<const0> ;
  assign S_LMB3_ABus[31] = \<const0> ;
  assign S_LMB3_AddrStrobe = \<const0> ;
  assign S_LMB3_BE[0] = \<const0> ;
  assign S_LMB3_BE[1] = \<const0> ;
  assign S_LMB3_BE[2] = \<const0> ;
  assign S_LMB3_BE[3] = \<const0> ;
  assign S_LMB3_ReadStrobe = \<const0> ;
  assign S_LMB3_WriteDBus[0] = \<const0> ;
  assign S_LMB3_WriteDBus[1] = \<const0> ;
  assign S_LMB3_WriteDBus[2] = \<const0> ;
  assign S_LMB3_WriteDBus[3] = \<const0> ;
  assign S_LMB3_WriteDBus[4] = \<const0> ;
  assign S_LMB3_WriteDBus[5] = \<const0> ;
  assign S_LMB3_WriteDBus[6] = \<const0> ;
  assign S_LMB3_WriteDBus[7] = \<const0> ;
  assign S_LMB3_WriteDBus[8] = \<const0> ;
  assign S_LMB3_WriteDBus[9] = \<const0> ;
  assign S_LMB3_WriteDBus[10] = \<const0> ;
  assign S_LMB3_WriteDBus[11] = \<const0> ;
  assign S_LMB3_WriteDBus[12] = \<const0> ;
  assign S_LMB3_WriteDBus[13] = \<const0> ;
  assign S_LMB3_WriteDBus[14] = \<const0> ;
  assign S_LMB3_WriteDBus[15] = \<const0> ;
  assign S_LMB3_WriteDBus[16] = \<const0> ;
  assign S_LMB3_WriteDBus[17] = \<const0> ;
  assign S_LMB3_WriteDBus[18] = \<const0> ;
  assign S_LMB3_WriteDBus[19] = \<const0> ;
  assign S_LMB3_WriteDBus[20] = \<const0> ;
  assign S_LMB3_WriteDBus[21] = \<const0> ;
  assign S_LMB3_WriteDBus[22] = \<const0> ;
  assign S_LMB3_WriteDBus[23] = \<const0> ;
  assign S_LMB3_WriteDBus[24] = \<const0> ;
  assign S_LMB3_WriteDBus[25] = \<const0> ;
  assign S_LMB3_WriteDBus[26] = \<const0> ;
  assign S_LMB3_WriteDBus[27] = \<const0> ;
  assign S_LMB3_WriteDBus[28] = \<const0> ;
  assign S_LMB3_WriteDBus[29] = \<const0> ;
  assign S_LMB3_WriteDBus[30] = \<const0> ;
  assign S_LMB3_WriteDBus[31] = \<const0> ;
  assign S_LMB3_WriteStrobe = \<const0> ;
  assign S_Sl_CE = \<const0> ;
  assign S_Sl_DBus[0] = \<const0> ;
  assign S_Sl_DBus[1] = \<const0> ;
  assign S_Sl_DBus[2] = \<const0> ;
  assign S_Sl_DBus[3] = \<const0> ;
  assign S_Sl_DBus[4] = \<const0> ;
  assign S_Sl_DBus[5] = \<const0> ;
  assign S_Sl_DBus[6] = \<const0> ;
  assign S_Sl_DBus[7] = \<const0> ;
  assign S_Sl_DBus[8] = \<const0> ;
  assign S_Sl_DBus[9] = \<const0> ;
  assign S_Sl_DBus[10] = \<const0> ;
  assign S_Sl_DBus[11] = \<const0> ;
  assign S_Sl_DBus[12] = \<const0> ;
  assign S_Sl_DBus[13] = \<const0> ;
  assign S_Sl_DBus[14] = \<const0> ;
  assign S_Sl_DBus[15] = \<const0> ;
  assign S_Sl_DBus[16] = \<const0> ;
  assign S_Sl_DBus[17] = \<const0> ;
  assign S_Sl_DBus[18] = \<const0> ;
  assign S_Sl_DBus[19] = \<const0> ;
  assign S_Sl_DBus[20] = \<const0> ;
  assign S_Sl_DBus[21] = \<const0> ;
  assign S_Sl_DBus[22] = \<const0> ;
  assign S_Sl_DBus[23] = \<const0> ;
  assign S_Sl_DBus[24] = \<const0> ;
  assign S_Sl_DBus[25] = \<const0> ;
  assign S_Sl_DBus[26] = \<const0> ;
  assign S_Sl_DBus[27] = \<const0> ;
  assign S_Sl_DBus[28] = \<const0> ;
  assign S_Sl_DBus[29] = \<const0> ;
  assign S_Sl_DBus[30] = \<const0> ;
  assign S_Sl_DBus[31] = \<const0> ;
  assign S_Sl_Ready = \<const0> ;
  assign S_Sl_UE = \<const0> ;
  assign S_Sl_Wait = \<const0> ;
  assign Sl1_CE = \<const0> ;
  assign Sl1_DBus[0] = \<const0> ;
  assign Sl1_DBus[1] = \<const0> ;
  assign Sl1_DBus[2] = \<const0> ;
  assign Sl1_DBus[3] = \<const0> ;
  assign Sl1_DBus[4] = \<const0> ;
  assign Sl1_DBus[5] = \<const0> ;
  assign Sl1_DBus[6] = \<const0> ;
  assign Sl1_DBus[7] = \<const0> ;
  assign Sl1_DBus[8] = \<const0> ;
  assign Sl1_DBus[9] = \<const0> ;
  assign Sl1_DBus[10] = \<const0> ;
  assign Sl1_DBus[11] = \<const0> ;
  assign Sl1_DBus[12] = \<const0> ;
  assign Sl1_DBus[13] = \<const0> ;
  assign Sl1_DBus[14] = \<const0> ;
  assign Sl1_DBus[15] = \<const0> ;
  assign Sl1_DBus[16] = \<const0> ;
  assign Sl1_DBus[17] = \<const0> ;
  assign Sl1_DBus[18] = \<const0> ;
  assign Sl1_DBus[19] = \<const0> ;
  assign Sl1_DBus[20] = \<const0> ;
  assign Sl1_DBus[21] = \<const0> ;
  assign Sl1_DBus[22] = \<const0> ;
  assign Sl1_DBus[23] = \<const0> ;
  assign Sl1_DBus[24] = \<const0> ;
  assign Sl1_DBus[25] = \<const0> ;
  assign Sl1_DBus[26] = \<const0> ;
  assign Sl1_DBus[27] = \<const0> ;
  assign Sl1_DBus[28] = \<const0> ;
  assign Sl1_DBus[29] = \<const0> ;
  assign Sl1_DBus[30] = \<const0> ;
  assign Sl1_DBus[31] = \<const0> ;
  assign Sl1_Ready = \<const0> ;
  assign Sl1_UE = \<const0> ;
  assign Sl1_Wait = \<const0> ;
  assign Sl2_CE = \<const0> ;
  assign Sl2_DBus[0] = \<const0> ;
  assign Sl2_DBus[1] = \<const0> ;
  assign Sl2_DBus[2] = \<const0> ;
  assign Sl2_DBus[3] = \<const0> ;
  assign Sl2_DBus[4] = \<const0> ;
  assign Sl2_DBus[5] = \<const0> ;
  assign Sl2_DBus[6] = \<const0> ;
  assign Sl2_DBus[7] = \<const0> ;
  assign Sl2_DBus[8] = \<const0> ;
  assign Sl2_DBus[9] = \<const0> ;
  assign Sl2_DBus[10] = \<const0> ;
  assign Sl2_DBus[11] = \<const0> ;
  assign Sl2_DBus[12] = \<const0> ;
  assign Sl2_DBus[13] = \<const0> ;
  assign Sl2_DBus[14] = \<const0> ;
  assign Sl2_DBus[15] = \<const0> ;
  assign Sl2_DBus[16] = \<const0> ;
  assign Sl2_DBus[17] = \<const0> ;
  assign Sl2_DBus[18] = \<const0> ;
  assign Sl2_DBus[19] = \<const0> ;
  assign Sl2_DBus[20] = \<const0> ;
  assign Sl2_DBus[21] = \<const0> ;
  assign Sl2_DBus[22] = \<const0> ;
  assign Sl2_DBus[23] = \<const0> ;
  assign Sl2_DBus[24] = \<const0> ;
  assign Sl2_DBus[25] = \<const0> ;
  assign Sl2_DBus[26] = \<const0> ;
  assign Sl2_DBus[27] = \<const0> ;
  assign Sl2_DBus[28] = \<const0> ;
  assign Sl2_DBus[29] = \<const0> ;
  assign Sl2_DBus[30] = \<const0> ;
  assign Sl2_DBus[31] = \<const0> ;
  assign Sl2_Ready = \<const0> ;
  assign Sl2_UE = \<const0> ;
  assign Sl2_Wait = \<const0> ;
  assign Sl3_CE = \<const0> ;
  assign Sl3_DBus[0] = \<const0> ;
  assign Sl3_DBus[1] = \<const0> ;
  assign Sl3_DBus[2] = \<const0> ;
  assign Sl3_DBus[3] = \<const0> ;
  assign Sl3_DBus[4] = \<const0> ;
  assign Sl3_DBus[5] = \<const0> ;
  assign Sl3_DBus[6] = \<const0> ;
  assign Sl3_DBus[7] = \<const0> ;
  assign Sl3_DBus[8] = \<const0> ;
  assign Sl3_DBus[9] = \<const0> ;
  assign Sl3_DBus[10] = \<const0> ;
  assign Sl3_DBus[11] = \<const0> ;
  assign Sl3_DBus[12] = \<const0> ;
  assign Sl3_DBus[13] = \<const0> ;
  assign Sl3_DBus[14] = \<const0> ;
  assign Sl3_DBus[15] = \<const0> ;
  assign Sl3_DBus[16] = \<const0> ;
  assign Sl3_DBus[17] = \<const0> ;
  assign Sl3_DBus[18] = \<const0> ;
  assign Sl3_DBus[19] = \<const0> ;
  assign Sl3_DBus[20] = \<const0> ;
  assign Sl3_DBus[21] = \<const0> ;
  assign Sl3_DBus[22] = \<const0> ;
  assign Sl3_DBus[23] = \<const0> ;
  assign Sl3_DBus[24] = \<const0> ;
  assign Sl3_DBus[25] = \<const0> ;
  assign Sl3_DBus[26] = \<const0> ;
  assign Sl3_DBus[27] = \<const0> ;
  assign Sl3_DBus[28] = \<const0> ;
  assign Sl3_DBus[29] = \<const0> ;
  assign Sl3_DBus[30] = \<const0> ;
  assign Sl3_DBus[31] = \<const0> ;
  assign Sl3_Ready = \<const0> ;
  assign Sl3_UE = \<const0> ;
  assign Sl3_Wait = \<const0> ;
  assign Trace_DCache_Hit = \<const0> ;
  assign Trace_DCache_Rdy = \<const0> ;
  assign Trace_DCache_Read = \<const0> ;
  assign Trace_DCache_Req = \<const0> ;
  assign Trace_Data_Access = \<const0> ;
  assign Trace_Data_Address[0] = \<const0> ;
  assign Trace_Data_Address[1] = \<const0> ;
  assign Trace_Data_Address[2] = \<const0> ;
  assign Trace_Data_Address[3] = \<const0> ;
  assign Trace_Data_Address[4] = \<const0> ;
  assign Trace_Data_Address[5] = \<const0> ;
  assign Trace_Data_Address[6] = \<const0> ;
  assign Trace_Data_Address[7] = \<const0> ;
  assign Trace_Data_Address[8] = \<const0> ;
  assign Trace_Data_Address[9] = \<const0> ;
  assign Trace_Data_Address[10] = \<const0> ;
  assign Trace_Data_Address[11] = \<const0> ;
  assign Trace_Data_Address[12] = \<const0> ;
  assign Trace_Data_Address[13] = \<const0> ;
  assign Trace_Data_Address[14] = \<const0> ;
  assign Trace_Data_Address[15] = \<const0> ;
  assign Trace_Data_Address[16] = \<const0> ;
  assign Trace_Data_Address[17] = \<const0> ;
  assign Trace_Data_Address[18] = \<const0> ;
  assign Trace_Data_Address[19] = \<const0> ;
  assign Trace_Data_Address[20] = \<const0> ;
  assign Trace_Data_Address[21] = \<const0> ;
  assign Trace_Data_Address[22] = \<const0> ;
  assign Trace_Data_Address[23] = \<const0> ;
  assign Trace_Data_Address[24] = \<const0> ;
  assign Trace_Data_Address[25] = \<const0> ;
  assign Trace_Data_Address[26] = \<const0> ;
  assign Trace_Data_Address[27] = \<const0> ;
  assign Trace_Data_Address[28] = \<const0> ;
  assign Trace_Data_Address[29] = \<const0> ;
  assign Trace_Data_Address[30] = \<const0> ;
  assign Trace_Data_Address[31] = \<const0> ;
  assign Trace_Data_Byte_Enable[0] = \<const0> ;
  assign Trace_Data_Byte_Enable[1] = \<const0> ;
  assign Trace_Data_Byte_Enable[2] = \<const0> ;
  assign Trace_Data_Byte_Enable[3] = \<const0> ;
  assign Trace_Data_Read = \<const0> ;
  assign Trace_Data_Write = \<const0> ;
  assign Trace_Data_Write_Value[0] = \<const0> ;
  assign Trace_Data_Write_Value[1] = \<const0> ;
  assign Trace_Data_Write_Value[2] = \<const0> ;
  assign Trace_Data_Write_Value[3] = \<const0> ;
  assign Trace_Data_Write_Value[4] = \<const0> ;
  assign Trace_Data_Write_Value[5] = \<const0> ;
  assign Trace_Data_Write_Value[6] = \<const0> ;
  assign Trace_Data_Write_Value[7] = \<const0> ;
  assign Trace_Data_Write_Value[8] = \<const0> ;
  assign Trace_Data_Write_Value[9] = \<const0> ;
  assign Trace_Data_Write_Value[10] = \<const0> ;
  assign Trace_Data_Write_Value[11] = \<const0> ;
  assign Trace_Data_Write_Value[12] = \<const0> ;
  assign Trace_Data_Write_Value[13] = \<const0> ;
  assign Trace_Data_Write_Value[14] = \<const0> ;
  assign Trace_Data_Write_Value[15] = \<const0> ;
  assign Trace_Data_Write_Value[16] = \<const0> ;
  assign Trace_Data_Write_Value[17] = \<const0> ;
  assign Trace_Data_Write_Value[18] = \<const0> ;
  assign Trace_Data_Write_Value[19] = \<const0> ;
  assign Trace_Data_Write_Value[20] = \<const0> ;
  assign Trace_Data_Write_Value[21] = \<const0> ;
  assign Trace_Data_Write_Value[22] = \<const0> ;
  assign Trace_Data_Write_Value[23] = \<const0> ;
  assign Trace_Data_Write_Value[24] = \<const0> ;
  assign Trace_Data_Write_Value[25] = \<const0> ;
  assign Trace_Data_Write_Value[26] = \<const0> ;
  assign Trace_Data_Write_Value[27] = \<const0> ;
  assign Trace_Data_Write_Value[28] = \<const0> ;
  assign Trace_Data_Write_Value[29] = \<const0> ;
  assign Trace_Data_Write_Value[30] = \<const0> ;
  assign Trace_Data_Write_Value[31] = \<const0> ;
  assign Trace_Delay_Slot = \<const0> ;
  assign Trace_EX_PipeRun = \<const0> ;
  assign Trace_Exception_Kind[0] = \<const0> ;
  assign Trace_Exception_Kind[1] = \<const0> ;
  assign Trace_Exception_Kind[2] = \<const0> ;
  assign Trace_Exception_Kind[3] = \<const0> ;
  assign Trace_Exception_Kind[4] = \<const0> ;
  assign Trace_Exception_Taken = \<const0> ;
  assign Trace_ICache_Hit = \<const0> ;
  assign Trace_ICache_Rdy = \<const0> ;
  assign Trace_ICache_Req = \<const0> ;
  assign Trace_Instruction[0] = \<const0> ;
  assign Trace_Instruction[1] = \<const0> ;
  assign Trace_Instruction[2] = \<const0> ;
  assign Trace_Instruction[3] = \<const0> ;
  assign Trace_Instruction[4] = \<const0> ;
  assign Trace_Instruction[5] = \<const0> ;
  assign Trace_Instruction[6] = \<const0> ;
  assign Trace_Instruction[7] = \<const0> ;
  assign Trace_Instruction[8] = \<const0> ;
  assign Trace_Instruction[9] = \<const0> ;
  assign Trace_Instruction[10] = \<const0> ;
  assign Trace_Instruction[11] = \<const0> ;
  assign Trace_Instruction[12] = \<const0> ;
  assign Trace_Instruction[13] = \<const0> ;
  assign Trace_Instruction[14] = \<const0> ;
  assign Trace_Instruction[15] = \<const0> ;
  assign Trace_Instruction[16] = \<const0> ;
  assign Trace_Instruction[17] = \<const0> ;
  assign Trace_Instruction[18] = \<const0> ;
  assign Trace_Instruction[19] = \<const0> ;
  assign Trace_Instruction[20] = \<const0> ;
  assign Trace_Instruction[21] = \<const0> ;
  assign Trace_Instruction[22] = \<const0> ;
  assign Trace_Instruction[23] = \<const0> ;
  assign Trace_Instruction[24] = \<const0> ;
  assign Trace_Instruction[25] = \<const0> ;
  assign Trace_Instruction[26] = \<const0> ;
  assign Trace_Instruction[27] = \<const0> ;
  assign Trace_Instruction[28] = \<const0> ;
  assign Trace_Instruction[29] = \<const0> ;
  assign Trace_Instruction[30] = \<const0> ;
  assign Trace_Instruction[31] = \<const0> ;
  assign Trace_Jump_Hit = \<const0> ;
  assign Trace_Jump_Taken = \<const0> ;
  assign Trace_MB_Halted = \<const0> ;
  assign Trace_MEM_PipeRun = \<const0> ;
  assign Trace_MSR_Reg[0] = \<const0> ;
  assign Trace_MSR_Reg[1] = \<const0> ;
  assign Trace_MSR_Reg[2] = \<const0> ;
  assign Trace_MSR_Reg[3] = \<const0> ;
  assign Trace_MSR_Reg[4] = \<const0> ;
  assign Trace_MSR_Reg[5] = \<const0> ;
  assign Trace_MSR_Reg[6] = \<const0> ;
  assign Trace_MSR_Reg[7] = \<const0> ;
  assign Trace_MSR_Reg[8] = \<const0> ;
  assign Trace_MSR_Reg[9] = \<const0> ;
  assign Trace_MSR_Reg[10] = \<const0> ;
  assign Trace_MSR_Reg[11] = \<const0> ;
  assign Trace_MSR_Reg[12] = \<const0> ;
  assign Trace_MSR_Reg[13] = \<const0> ;
  assign Trace_MSR_Reg[14] = \<const0> ;
  assign Trace_New_Reg_Value[0] = \<const0> ;
  assign Trace_New_Reg_Value[1] = \<const0> ;
  assign Trace_New_Reg_Value[2] = \<const0> ;
  assign Trace_New_Reg_Value[3] = \<const0> ;
  assign Trace_New_Reg_Value[4] = \<const0> ;
  assign Trace_New_Reg_Value[5] = \<const0> ;
  assign Trace_New_Reg_Value[6] = \<const0> ;
  assign Trace_New_Reg_Value[7] = \<const0> ;
  assign Trace_New_Reg_Value[8] = \<const0> ;
  assign Trace_New_Reg_Value[9] = \<const0> ;
  assign Trace_New_Reg_Value[10] = \<const0> ;
  assign Trace_New_Reg_Value[11] = \<const0> ;
  assign Trace_New_Reg_Value[12] = \<const0> ;
  assign Trace_New_Reg_Value[13] = \<const0> ;
  assign Trace_New_Reg_Value[14] = \<const0> ;
  assign Trace_New_Reg_Value[15] = \<const0> ;
  assign Trace_New_Reg_Value[16] = \<const0> ;
  assign Trace_New_Reg_Value[17] = \<const0> ;
  assign Trace_New_Reg_Value[18] = \<const0> ;
  assign Trace_New_Reg_Value[19] = \<const0> ;
  assign Trace_New_Reg_Value[20] = \<const0> ;
  assign Trace_New_Reg_Value[21] = \<const0> ;
  assign Trace_New_Reg_Value[22] = \<const0> ;
  assign Trace_New_Reg_Value[23] = \<const0> ;
  assign Trace_New_Reg_Value[24] = \<const0> ;
  assign Trace_New_Reg_Value[25] = \<const0> ;
  assign Trace_New_Reg_Value[26] = \<const0> ;
  assign Trace_New_Reg_Value[27] = \<const0> ;
  assign Trace_New_Reg_Value[28] = \<const0> ;
  assign Trace_New_Reg_Value[29] = \<const0> ;
  assign Trace_New_Reg_Value[30] = \<const0> ;
  assign Trace_New_Reg_Value[31] = \<const0> ;
  assign Trace_OF_PipeRun = \<const0> ;
  assign Trace_PC[0] = \<const0> ;
  assign Trace_PC[1] = \<const0> ;
  assign Trace_PC[2] = \<const0> ;
  assign Trace_PC[3] = \<const0> ;
  assign Trace_PC[4] = \<const0> ;
  assign Trace_PC[5] = \<const0> ;
  assign Trace_PC[6] = \<const0> ;
  assign Trace_PC[7] = \<const0> ;
  assign Trace_PC[8] = \<const0> ;
  assign Trace_PC[9] = \<const0> ;
  assign Trace_PC[10] = \<const0> ;
  assign Trace_PC[11] = \<const0> ;
  assign Trace_PC[12] = \<const0> ;
  assign Trace_PC[13] = \<const0> ;
  assign Trace_PC[14] = \<const0> ;
  assign Trace_PC[15] = \<const0> ;
  assign Trace_PC[16] = \<const0> ;
  assign Trace_PC[17] = \<const0> ;
  assign Trace_PC[18] = \<const0> ;
  assign Trace_PC[19] = \<const0> ;
  assign Trace_PC[20] = \<const0> ;
  assign Trace_PC[21] = \<const0> ;
  assign Trace_PC[22] = \<const0> ;
  assign Trace_PC[23] = \<const0> ;
  assign Trace_PC[24] = \<const0> ;
  assign Trace_PC[25] = \<const0> ;
  assign Trace_PC[26] = \<const0> ;
  assign Trace_PC[27] = \<const0> ;
  assign Trace_PC[28] = \<const0> ;
  assign Trace_PC[29] = \<const0> ;
  assign Trace_PC[30] = \<const0> ;
  assign Trace_PC[31] = \<const0> ;
  assign Trace_PID_Reg[0] = \<const0> ;
  assign Trace_PID_Reg[1] = \<const0> ;
  assign Trace_PID_Reg[2] = \<const0> ;
  assign Trace_PID_Reg[3] = \<const0> ;
  assign Trace_PID_Reg[4] = \<const0> ;
  assign Trace_PID_Reg[5] = \<const0> ;
  assign Trace_PID_Reg[6] = \<const0> ;
  assign Trace_PID_Reg[7] = \<const0> ;
  assign Trace_Reg_Addr[0] = \<const0> ;
  assign Trace_Reg_Addr[1] = \<const0> ;
  assign Trace_Reg_Addr[2] = \<const0> ;
  assign Trace_Reg_Addr[3] = \<const0> ;
  assign Trace_Reg_Addr[4] = \<const0> ;
  assign Trace_Reg_Write = \<const0> ;
  assign Trace_Valid_Instr = \<const0> ;
  assign UART1_CTSn = \<const0> ;
  assign UART1_DCDn = \<const0> ;
  assign UART1_DSRn = \<const0> ;
  assign UART1_RCLK = \<const0> ;
  assign UART1_RI = \<const0> ;
  assign UART1_RxD = \<const0> ;
  assign UART1_XIN = \<const0> ;
  assign UART2_CTSn = \<const0> ;
  assign UART2_DCDn = \<const0> ;
  assign UART2_DSRn = \<const0> ;
  assign UART2_RCLK = \<const0> ;
  assign UART2_RI = \<const0> ;
  assign UART2_RxD = \<const0> ;
  assign UART2_XIN = \<const0> ;
  assign UART3_CTSn = \<const0> ;
  assign UART3_DCDn = \<const0> ;
  assign UART3_DSRn = \<const0> ;
  assign UART3_RCLK = \<const0> ;
  assign UART3_RI = \<const0> ;
  assign UART3_RxD = \<const0> ;
  assign UART3_XIN = \<const0> ;
  assign UART_BAUDOUTn = \<const0> ;
  assign UART_DDIS = \<const0> ;
  assign UART_DTRn = \<const0> ;
  assign UART_OUT1n = \<const0> ;
  assign UART_OUT2n = \<const0> ;
  assign UART_RTSn = \<const0> ;
  assign UART_RXRDYn = \<const0> ;
  assign UART_TXRDYn = \<const0> ;
  assign UART_TxD = \<const0> ;
  assign UART_XOUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  bd_hybrid_tmr_ecc_tmr_voter_0_1_s_axi_voter \axi_slave_g.axi_slave_voter_i 
       (.M_AXI1_ARREADY(M_AXI1_ARREADY),
        .M_AXI1_AWREADY(M_AXI1_AWREADY),
        .M_AXI1_BRESP(M_AXI1_BRESP),
        .M_AXI1_BVALID(M_AXI1_BVALID),
        .M_AXI1_RDATA(M_AXI1_RDATA),
        .M_AXI1_RRESP(M_AXI1_RRESP),
        .M_AXI1_RVALID(M_AXI1_RVALID),
        .M_AXI1_WREADY(M_AXI1_WREADY),
        .M_AXI2_ARREADY(M_AXI2_ARREADY),
        .M_AXI2_AWREADY(M_AXI2_AWREADY),
        .M_AXI2_BRESP(M_AXI2_BRESP),
        .M_AXI2_BVALID(M_AXI2_BVALID),
        .M_AXI2_RDATA(M_AXI2_RDATA),
        .M_AXI2_RRESP(M_AXI2_RRESP),
        .M_AXI2_RVALID(M_AXI2_RVALID),
        .M_AXI2_WREADY(M_AXI2_WREADY),
        .M_AXI3_ARREADY(M_AXI3_ARREADY),
        .M_AXI3_AWREADY(M_AXI3_AWREADY),
        .M_AXI3_BRESP(M_AXI3_BRESP),
        .M_AXI3_BVALID(M_AXI3_BVALID),
        .M_AXI3_RDATA(M_AXI3_RDATA),
        .M_AXI3_RRESP(M_AXI3_RRESP),
        .M_AXI3_RVALID(M_AXI3_RVALID),
        .M_AXI3_WREADY(M_AXI3_WREADY),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_BRESP(S_AXI_BRESP),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RRESP(S_AXI_RRESP),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WREADY(S_AXI_WREADY));
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
