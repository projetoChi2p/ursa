// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Sun May 11 11:41:17 2025
// Host        : ulisses-thinkpad running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top bd_blk_mem_gen_0_0 -prefix
//               bd_blk_mem_gen_0_0_ bd_bram_tmr_blk_mem_gen_0_0_sim_netlist.v
// Design      : bd_bram_tmr_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_bram_tmr_blk_mem_gen_0_0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module bd_blk_mem_gen_0_0
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
  bd_blk_mem_gen_0_0_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33376)
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
