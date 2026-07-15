// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Thu Apr 16 12:35:51 2026
// Host        : 67221-1 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ursa_8x8_blk_mem_gen_0_0_sim_netlist.v
// Design      : ursa_8x8_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ursa_8x8_blk_mem_gen_0_0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59856)
`pragma protect data_block
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
1BSkmCOu
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
