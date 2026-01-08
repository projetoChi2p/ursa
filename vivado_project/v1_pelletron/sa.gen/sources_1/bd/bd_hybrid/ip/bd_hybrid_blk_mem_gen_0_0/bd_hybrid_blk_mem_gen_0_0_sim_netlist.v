// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Sun May 11 11:41:17 2025
// Host        : ulisses-thinkpad running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top bd_hybrid_blk_mem_gen_0_0 -prefix
//               bd_hybrid_blk_mem_gen_0_0_ bd_bram_tmr_blk_mem_gen_0_0_sim_netlist.v
// Design      : bd_bram_tmr_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_bram_tmr_blk_mem_gen_0_0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module bd_hybrid_blk_mem_gen_0_0
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
  bd_hybrid_blk_mem_gen_0_0_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33440)
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
