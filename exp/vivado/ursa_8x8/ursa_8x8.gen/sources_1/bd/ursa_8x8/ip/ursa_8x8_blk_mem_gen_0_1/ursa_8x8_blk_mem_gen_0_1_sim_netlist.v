// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Thu Apr 16 12:35:51 2026
// Host        : 67221-1 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top ursa_8x8_blk_mem_gen_0_1 -prefix
//               ursa_8x8_blk_mem_gen_0_1_ ursa_8x8_blk_mem_gen_0_0_sim_netlist.v
// Design      : ursa_8x8_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ursa_8x8_blk_mem_gen_0_0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module ursa_8x8_blk_mem_gen_0_1
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  ursa_8x8_blk_mem_gen_0_1_blk_mem_gen_v8_4_7 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jLV29U0rrfMIZhYJzdoUrPoqB9eHQ5NXmWyCdqnN3Wgm+GU4C3zthrN1m4QGiaj0thPCIynZbX+0
7yjtkv+T5ByJ6NhiofAwWseGLvPXlYu6ERAPvi4SAYpF2VUqQHtPAbPmnPubGdDRgIEpeobF7hsz
rEcpEru1pyiScUriyuo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vsoizVrOONWw/DhjRLEYrtRmtji+Ok63CbpSg/l9VnoKAi8tAzqRbQ57atGB2N6IGGbKHkbK2Uzh
EHgWvYZeyt4hE+bpQX91vc9PNxfjQMGzPoFD3jCWk30EmEk+AND39eWx+DhJ8xhFuucoOQ2GwyAk
B+Mjs15naPE7DvlHel8hnD4dfSdYhGKp96oozu8JeBto8aHG6poOuYkxSwaut7NCI+mabCkMxtMp
RrydgmRuTvhRTbJMyx5CxFSZTRDrS5aU1vaRlnMiqKCI7g2KY9pemYaJsFeVodBuo6IyKGynyEhs
wr+VtUhQDtaVhMkwB95WwmMoDk9F2L5Au1I+TQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
W081dPMCWhKs5YlQD7n3zvf7+PTcnb8eFWxoVs8+zHLkxDMA1klITbsfztGYvJFce8Yao5XQLLqZ
oUE5Pq2arq+zwICFUcLjdMsmP1WmL82znHOPHm83zNwrxWMloHkySAqzFbgJeHa973uZqj0M8ydc
sYmzCYVlGVjt0QX0xqA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zpc3MmdLWaVOv+S4z2POuoyslYoAbWc+Npxq2UyQRtDwf566IId3uwAetolMAgfLo/G3ezuSOXMn
8NznS37h9XvmVrxA50SAux68P87WgkLtiUYqM3CMBKkxNlZ/TR8WzTuQyFdvzkOE9lp8HC7LXnk5
RDsnOM+su46FW7ysY01COslo9Xc7rhs6WFqx29+Xcqk8+ZMLSzaJfuwZdNmJFS3Q1vhlq3ZeYqMl
wMieB731KsPxjxp7VKNHpTbgFryC2isqc4ohBDOt52M/Bz4B/rIpFeHfZ7X3jWSiKtSuBsDN2NXf
EMjfAT248dlK7NxJ+NBNPhS5sLxTiGyQhta57A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPMYqnkKhJKV1wltOfDrKos9ZbucaoX3WGTuqsdLkGpcKObzslHBwlGrKtWV7bZYmS2SM+QuEMfa
CE+tCUdsSiprp+n5BuSQlJa6BJ8mlqccjoo/JLw2QEmUhyMXQ3TLGomGGoZdeTmMPXhUBAOyLPea
Ddc8mgtTN8Kpy117GOTXDKP+IKJqW01fLrPJpgEhFiJCbyElLgtCRWmI94gX+y4XNVS0Cd1YwNw6
4nHgnEdC7fXARDKcYO3VsWC/pdzPQgursXloNLrVYa6i2xr+8E1V0+nSWwNYQZP7XUIVqXKMU8Ea
bT4acXrRCF/5tJJ5B9JparYI0zxXSbaakn1dIw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mfroTgL8g2pyIXQ/mGO9YHm19cd5mOlJ++qpusOYeVxGmkIhvF4aKx+AyIUz2yGGAeCtOzIasHty
pyqKgZhibSqxcpHgR0m6GOxXXOXJiHaK8NzxUzXeRJovcBI/WjtDhXeb1LRMI1J97jVBtJPJQH0Y
fGOD7jWvkvQwxnrZdyLp6kPWgSIcavHHDbO7iJv4gnyGp6W3/FCDo2RKWNLoW+SNjSdLZ6YRP8a+
ldaGU8TYvJ03KWlmik7repuN6AwxCjg2KeQ+x1sBAEXzROXomuSbvX3ZAo8UiIKAQY1SJumHLG3L
QI/S4Wbl1Hz6LDTsttMwP480gq6+tb6s1E4oWw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QJIabgm8dx/gVHbOQFwt8maOKVHFgkpZTPR6dzD8fqoGo9M9oGPTqBqchtPZWgv2UYFF2KEUSlV4
L3SDXBKrLs+NsAVTcICaEMiEi6j82zj/C1LsPkQfS8RLrg0ab8lbDMb5YqJ7lkHs3iM65x2iN1Mf
66cTgCbkAdl3rDpab75btpTQt5ZKiq5CSY3RZfyIW0uWbTGTELm6liuRKM9+K8BQwTU7A+FFFQBA
/9eJwQYzNNA/iwoYJ2WTPd6pBlzXriNLu9M+/2bYicNBSuH1PBR9v2ESrTB6k7EiV1zvBXV9NuG/
sFt4MumWMuSNwP2W38bQATxxW/l0IrmaXGOC/w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
lhKf/Vgj6pHpme1ji4HVe36BU8pMkam/2I9lFeyOiBnIbzgdEGfLJBcEvkL33A7s0hxa6LFbHnkT
upgMpPjmIghBz3xUQ13vpiY152thFec6qvlcdg1r+GTmnBOSFl6g/OfZ3eFUhfsve6ZjQHpXnKFo
a55hN2+eP1EG9+VxGeM7XkHaeFhEIry52qtnmg072KEFIwRiGs2d/TJ4AqupuIdIiP1kTN9k+oqa
2ta1vdtqPY0dDHqrf+5YSd0CejkhQeCqg/bauLP3755SwdOPRgooG5ANT8hUpTiFMFXtU+GC9NSp
evJtMHUy1NbgMmhFHO+w3URLEdjSaBxZPD7YLdWkF65jY526tJzoek+BzEKoBaGfCaY7O1nHKXm+
89k3rPUy0Xo4/0nHpno+N/Db09heJPbnGsCwN/l+KnR6Lz8kvWziBjZe0ijOkKI+T12y3T1VeOtY
H/aqtNlQt1mhFwrbw6ezaAiDPVbCQXnly6b4tbb8+nFsxWOGIGAfLozB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PNsQ8uEcQYrl+GaDuBaq1tQ5br5aAdaqHnyrc0NVu/JnQUk53jaiLx8Oz5fNACvWelUUk2/C+P5I
b2rbU1bb/dC6TqC5J1N0yoMYRYw58u4Lrl8Kgqgt9Rlph5Qgzzfxp+oblXF/pO4mRyAXpZhpNkFT
0Ar9BUtPOTOtJ9/g53SRnZ6GjxzfeD+25J4fcXBNo2gCTgUkwiLSsJRwTB/cJmn+dZPwPdIOHEP9
TkfDK+OrbLYO3T+DFBTCMRNH2NB1J9sc5s+nPU8iYnjgPTo6HoGW+LIlCz6yNJMZzJzoeW708utc
0fJXkT7vLDVh7olvy3V9AAY8Do0YR1kiZlhVhQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zAz8RnGHFebkJFAS+gjC+mXHW7m7We+JgSmIz15mS01u/4+9Ng0sJfkeXOClmVPTQ2Mp2Yuv6/6f
ehzUTcANilWsqLM6Q1FToCPNX/NTqodlcHirGM7b5R9yevouNT/aqH12nmbunBQmBHmehNutdCjG
r6Z7kZgeZ2ZE7MMOF0rTy1XHEPkqgMNTRoS8R/pPWPTW4/j+bn3aJj0Q/fTz4Gi3mbSUKWs2fREQ
UKiuolNJkN6DiDvhlVYHUyytXNJG44ikmBXehoQQRLapkYaxnQmMRT1ok9uY6pKoy71CtvJ3Mt2x
EQv1GU2i4qQyAOwa0mkEohWXduicU6tDz3zQwQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TK3eE9V+v1z2P1KjG4GrjhA1n3qDOpNzLGXdtjnjhF0QBFPSuhC+nmNqTPOb3p2a9r5KD0miY3Cd
+KpjH6Ao09E2/LD2Go4aLQh6vP+9BldlSKEwCGfx2NjBQrXWVH21lQR7IRjOvyTOclpd7SgtUJLw
dvebETyLiKr9C6RfnIBeptuCA3iJlXfwkh6I0JfzD5WBizQkotioZmmrXv5105pCXQ4Ta1WThFsA
2ll9dZeSjEDHUxxhfyfjryv9m4VL89ZDU/rGITsdptwB1BC1jLqmPDymY05lyECnjA6NIR5GGfI4
K2y2f4GfikKoN5r9IOvFzw963Wm82ZZPtXOKGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59600)
`pragma protect data_block
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
`pragma protect end_protected
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
