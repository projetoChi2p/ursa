// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Thu Apr 16 12:35:51 2026
// Host        : 67221-1 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fi/Documents/GitHub/ursa/exp/vivado/ursa_8x8/ursa_8x8.gen/sources_1/bd/ursa_8x8/ip/ursa_8x8_blk_mem_gen_0_0/ursa_8x8_blk_mem_gen_0_0_sim_netlist.v
// Design      : ursa_8x8_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ursa_8x8_blk_mem_gen_0_0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module ursa_8x8_blk_mem_gen_0_0
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
  ursa_8x8_blk_mem_gen_0_0_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59888)
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
