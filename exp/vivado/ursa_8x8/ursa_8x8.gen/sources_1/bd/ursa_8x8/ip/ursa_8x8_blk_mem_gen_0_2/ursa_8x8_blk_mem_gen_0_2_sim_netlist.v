// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Thu Apr 16 12:35:51 2026
// Host        : 67221-1 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top ursa_8x8_blk_mem_gen_0_2 -prefix
//               ursa_8x8_blk_mem_gen_0_2_ ursa_8x8_blk_mem_gen_0_0_sim_netlist.v
// Design      : ursa_8x8_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ursa_8x8_blk_mem_gen_0_0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module ursa_8x8_blk_mem_gen_0_2
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
  ursa_8x8_blk_mem_gen_0_2_blk_mem_gen_v8_4_7 U0
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
