// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Tue May 13 14:24:05 2025
// Host        : ulisses-thinkpad running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_hybrid_tmr_blk_mem_gen_0_0_sim_netlist.v
// Design      : bd_hybrid_tmr_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_hybrid_tmr_blk_mem_gen_0_0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
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
  (* C_PRIM_TYPE = "3" *) 
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
