// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Sun May 11 11:41:17 2025
// Host        : ulisses-thinkpad running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_bram_tmr_blk_mem_gen_0_0_sim_netlist.v
// Design      : bd_bram_tmr_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_bram_tmr_blk_mem_gen_0_0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 4096, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  output rsta_busy;

  wire [31:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire rsta;
  wire rsta_busy;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
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
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.96495 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
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
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[11:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
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
        .web({1'b0,1'b0,1'b0,1'b0}));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33616)
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
