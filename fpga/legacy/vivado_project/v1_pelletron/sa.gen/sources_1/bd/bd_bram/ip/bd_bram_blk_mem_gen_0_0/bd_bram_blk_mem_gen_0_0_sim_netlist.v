// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Sun May 11 11:41:17 2025
// Host        : ulisses-thinkpad running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top bd_bram_blk_mem_gen_0_0 -prefix
//               bd_bram_blk_mem_gen_0_0_ bd_bram_tmr_blk_mem_gen_0_0_sim_netlist.v
// Design      : bd_bram_tmr_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_bram_tmr_blk_mem_gen_0_0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module bd_bram_blk_mem_gen_0_0
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
  bd_bram_blk_mem_gen_0_0_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33424)
`pragma protect data_block
4Mlu8A7NVi3FxuDaYlxl9/c2aouNNQl+xMrdh9bi196dLEEELQgUvIdc8lXLcrrreDd8Nyb+bzHo
Vp5Mnzj8Gf1fmtctErKFGerPRWBKOipgx6iuIlmqRTT/GGwAcR+VQw58I+eimvhxZ9tG7kIpSojA
zFXbdmSZSCEaeRt8Nnzt2pHTH1pW3Q6y5pob6bjylDozTja+ANdocHPFx0WmTcoE8Ao4ausm3AGI
2R90Kouq8fBzNfVtEP+EeTrLKuS+ow6RXVRIVutmDDC16b2rfjx5KE9J0kiXMuZADx8bt9x3T/m+
KW2K3IqIFxj38lPM31lIUg3ag7DZVEVUZocBrkMN0gA2qaLnolEFH3obt4VfoV8xmJw4/frPCJDv
h5vlc/Me60L6bTg0j3V9EsNahov4WZSnPGCPThdcPHDX2MiS2mlAak8Qfvz4oZi2vdkx14IIHT6J
OzVUG4NcJsPvbejmQuIZV/9VIDlXPhYgMDQBwOshgzm3+3Tofx9ziEZtkFsZ1+AWQUeGN+c+c/B9
lPtYyEWjxBKR8MIoNh18/DCGdKDrEAfZnnwdtq1d9XLOqLpO4CymPTfTaqbjW+fNKFbaDGxFPjL3
Bb3+PjqtRXNslFrOBg3w09gXhKQx3g5nqEtK16HOsbVr7PDO494/HAaVSPLORBx25haQjT0fH0K0
YW+Y2gkVwk2qhMC8S+N5eVp9FoiZicCCy6+RcjZGpPBZESBGee9M6VNi0rMeAm0syu6aRHkOyMMZ
l7CsdMVIUxO+XUdXeooOF44BCNiZimuF6wREk0HCUgtDlA50CITUB/gPx8mtXQuCDrDarFdiAmE/
2hjj4yR+lCNWdsvewbTldN2SxEwvaLnDqGmPXipysmBVPEPjm4KWvNZiJHgwJLtu96caFnAbRZ3l
QbdthV3XK/KdvtGIasWIdyPZgOzPbxWK6rIvnWCQluVRxMhH0dufU9X2G/4/7tTG4I3wPIn0Xn1D
DcakCfq2+6x+triD5D/9YQiEibjd3X4iEG7QnpOy4mzYpaE+Lzvdhri42PPOYbOql+Jt3DQeOD2q
iBmz7M75VQsy8CG0aJlJdbhQorjILBAw7v0JALfDGq4JCTpzH4CEtTMj6BrostzY4gTGGCtM4N71
Fv/d5vuVWBOUyfTQCuS72FTqQGDTQywA3nxhzlnrqZnEm6/0BlRsq6hswEOkTmnWa5uGB03v+RwW
VApP/WuOhfJjTxxPlNQjTiDSQv0SsQ+5/fBDNTiusZc22gcFFaxhUjGgtrjqeegOB7eV9TvWO96a
f3R9Y80qI2O1zb7u/kdk54Ko/5Q+uNvm0hqAStBvnfDzoqg7lipVL5trgEqRETyCcN/smnWR/Y+C
8Q+2rnYBx/xnkDlkfb/UG6GIixdCqrWX3MeidyqpFtMOnhDaXkpxYUE2QkdcLJK741siDcTaIS3v
WEwEYbePWV+8O+azRx1eQrr9861x6U7pmlYSAZ+XGogF3Cav7KlXn2+G8Pkcu3uBSC4FIWtgFtl+
y79JtGgTBrNZY+myEazdeMuoIIfpWfYbpCiu0xWayqyubHsecOHYGZAK0cxaZtoNzmpgzTA305fv
6otGlwKQyKEzHzferIsWn1ulIhFzt4iDw61S9pPwG1rkpNuJfHZJx9zy4Qn0GqhUnbHHw0OnYLtq
ga2YQgzyTK9njyx/NHeoQE2EWC87+WYYROJ6TjUgChMrpbjY7SYdDIAewo8m7t8jr7UXAHr1FKlj
e4cJAXME8WoH+6EWR3GHsa3Q0UyIQ7i9Hkia+1QocG1+UkzBipbBfPgAfIoGGwciEJ+nzh0ZNhi9
5h87j9Nawo1mGdKjxgcm2RaJa2y6PRIgJLO5N3MCx7ijlXcVNcIaCSrmbvkhhyd9AsGkDUyIMH5B
dtnSCMhP/ocCf6pY3AhBk9Et/X7oVTKRNUCJVXG6fxwjSIDRXSTmYOLONjR0LpLRMIQiClrmYxHH
6XW458xOl8cP6rqry/KL5XjLBQmTbJ3QfNQN7Af9CX6WWKOTOfj4TrSKPX5ECKgjygQX5v561kxF
/I/irUAdWitHCcmwZ7hwPPfBjohG9gKEhnisFP4089hIvenZSOdlqpJq75icG5yhHx/ll5F3MZY5
YbSm8VOqpW6kjOcutZvrx2idm1nZwUCHXCTR9rjxKtX8/SGZ3yfauzosGNciu+f3IeuBF7D9fhPL
Dh9T2Wjd3a203SryFxhAdlX2c2pDZ6Hu7VQcfdcE6IenRaQnVEzFjsTD63iuWv+brdjEa+8reuUO
gb26RT7IasM48JhdG6iRIV+3CPsAIWk8DErvI04AUjj4/zKLC5dMFjEYw+TgKGgJVvc1QLiC+B43
/BbSONbJuIw2hkVhjsF8Ad2Zz0bfkpUgJDkzwFNKgNCeuA2tCbItePLBu+otBrEcF80mqWtic1P0
s1z+V2yfHyBmrTCvGk8hZIykn+Aj4rSFbFLVPxpNkIWsKH9luh5J0Y9IpZFVRNi7Mqr0/avm2EJf
DJ55Or4Xofx097eSLw9P/JPJlEczERI6HgY7Gd+J7jsG6nvFQGojKwbuTLVHuySpwL0WB//jhr24
k9S/B0I9x54uN2AQGtUCY8rys9hSPac124UKinN8GMuIcNI8oPfqj5VBgg/bP5EOW6UJpZMflcx9
QHk3xNCZlQWuh8RQL9tcvbDIp7Z+D3V5QQ3wd4gTRwVygvc12JLCwx1zqOifNWyyvB9zYEesvvW2
xLj5xThoZSXmNMIx2nqqsOmHZexEcvA7JD/j91jUY9cOSJmvyKE6nqi5KXVXW8zdfFq9HuTjnyM9
h3EEfinNWarFvzK7iMU6YyBK4tPvll5Xd5JuuWCy0jagz73cENqkduRFXX4Gt3K3/hEHWebD7xxi
yNDQmNy3+qDZ6Iv51DkK5EpbSgcAtrQecv/xGrmKUUktBVIWPFg53QPEOTE9UMqCBMWzYus41C+3
GBGWYI/fFB0WexgyhnASkZ19G19Jl+d9ykkWTsbP3Apr9cSnplCa3FUHGD2LNZRN07WUPya2fIK2
j6ZpCiyBQ8SFIb+qAufuiqOgbS+Lp3VpXeRL+B7KS+9bLAwRHfmcV+HinwXnhufNW5zlbTLa874R
3cXizGyj7OU2VA8U5mvRN1ALb+lHvUPRR2y4lpmH9vRGIJSv5tX5boU25VFGC+vL1M62RhT3y2dA
HV/lBQcHV2bmKr0qCRO2c3OtdUE3O91fQMlhrApENa1apvfWcLcJ1eGWrAZtukpvI+tS8ZOvhkF5
CXNvxCM/XahWA2jchJHtSlpvyJ6wVBJuR5SpteNdUJ8FyXM8G+G0GgHmz2Csf4P+5TJkOd9GCtB0
Jw14hbkIREzmCUsGiZpNFNJIV0kWylk52zjXRkuOGJlFva6eST55Tnd3ENAoOUcpXcgzhxH4x5A4
UOVWt7wFRs0BblMHV9hf/k8eRTWC4yKLbdPG5V0c3v5csecVcZw4iYlbQGYZP2+BmPwmoGMNZXAO
cb3IQEoKwRlxjbixsxqtzHtOtazz0ZKKNn3kQd96RRlXOHwbK3UQr6w6ehj5BnnqLitt5NqwC3Sa
Z/AyOeUmN+UHlTmKUgo0uzYocO1wFL9jGBRmFdnOMAnrM6Z8I4a4P/rWdgArySQkI9Z4qweDuOKT
6b9i5JOWEFB1sPknSybkkJ4RwN83PHm+SC8D0/9D8nCwNWSbMt0ZpGwFPZ3hy+j4PcB29kv10F+d
HI4qqZru+IvewZLMweh8m3tU9TCcPLag3iT94nnVbd9hV/9U31xyWUyz6winl/OnZrhkzCuXpAvY
Y8LMkElRFkXIV8C2eQLq9T6IWatVtlb8TXn4el8osbfGiO+pKCd+Z/+cS7Ku/upx//WpbB0gdOLn
MDVbQU7h9CGW32vK4sidymQK7OFBPLR/BQx0sSLbo6jwfkhCNnrLI7qCAbN1EEtA4rfD7jI18EgT
/s/yWFfpactGZG0m6GaWkw16a6PhnkR83cLShmjBFbwgVgBrwZLVGNydTKthQKZAeykh+RlIOr8S
vUDQELRvphl4J8Bpvz/78ZmqCSw2L83MLjfloB3DTlYeKEPvGun2oTQBWHTPrWKKIB67Ix80W+ol
HSjjiiXJiMtHoGwddxD5dRGnVRlyzMTGdsufN3kO+gpn0FPp25OlHXPgkLuJStayQJB0AkXWlvyI
n5Qv+EPh2O4ArStf4Hnngg6NfYkzE7QdIGgY06Seqt5jYGylQrb2zGdN4OEp34o3Zkq/dWuedK5L
4IDGfkE0fAcd/ur9d1xfzHrqSga4TaJ644LnOtemH3I9XhI+Tf0xlv/Z91rre5FCaeakcs73cpaq
yk2KxrJjx9/aTiVB/zdjf9ybORRU9J4W2wFv6jz/QVDtpyxYiQkepDieCy27abDoDQakYsUhPHlB
vxLwaBSfXGrJeJlm/SK5XOVyMUc8kWh3/NLtfBBZVmA58fXgZx2QBg9BV1zGQiPpoQr+RCTR1npv
6aFVXfalvjHpKhKXRGy9p5QAZHRKnha1Gb1D5wXfQ19A2zFfAa1LZDLJ+pym/CooX7yoNbJQVQnW
vQGGVZ90KVS7aMy0dIpJQ15mk1jTGwRLbDDNCcBUmG9ZlssJL3T689qwFkWQJSiY7HeL1U+9W6hN
NvvHkNcViX3vUKqwO39s5Y1+M/LYoDmmVoKPOXeE+6Y0eYUr4yXBaOc4giEol/K7PCTez7Mjuxoc
7q0KF8uHNOetxyyd+IlWkWebfNKgKt6HHUaqz8RbD3OjuQW+E95V5Ma848AtrFTzaAQoK2wZvD3V
DNvJT+C0yhsa+cspA/0iXMKNHpBZ9ExGwVj9+HVN1yJhsu/2BWCUtd7Dqn0p5BJtjTDyE5nIV5pa
b+p94q/pQP6Pn91SsD0rVWRldHsLvCChe1vHs+xSAWLds9LCPYlgJB90+D8SQOZo5DAL2g6ugmVt
KJvJk8l6VC/1hcB20dcfPpEXqlTVQsWdN0eKbNJkzQXUSgLK4+r4rl9/5YWaNmp9+6/U9hKtWvmZ
J888TzDm9HvSbn7ONvQtgnlENeUtrkEj4PgNMMkov9AL4aUnQeA4Qr8ZYiQyHj43sOv9JDAk4OMw
Xton/iekrXyyrhsHPmKWNt4I7t+T8FrQzy53wtOUSd+a36m5GAQKmSLBAaUsI4/x9nme3ReTDjAm
qeC/dVdfb67h+MhA5YITyT5G7eJgPb03OBVgxtTdaEhGsH/gLj1aXVr3PdGnsj+GgO9y/Mb8arlM
2xFr7vkIiGEDVSpOJdIMH9dvcyyW+5Tt3pA3rvszxp6nGzInCMPg2RNomWGfuzD0dLLeevmv2IzI
Nhcu/zeI9Rs8Yzzg16iXcINddMRZCQKAtuYL4ljDuZFPG8VLGIPWtoULkjdkrUtJ4M9LyyLRGlkT
qHIakM4Smhk0VHnKK47Npu9LCnDGwy0BJNSwsqMSqHI/loKkiZLWRkdpd4+JaGAvKuVqnJ/Dd1fW
c2RU5YFSzQ3TN0jBJgwJuWNr0RpaLoMQwRKkADGtSqP0MS/O5G1rc45fcV8d7c8pHZZs1CsLS05s
xYdHbPH/KY5o/5z2haDsUf3I0jRnyksK1V66W2ngA00EvrUlz0UmxyGgSH8cMjEc/eyLd49tba5S
IYrFhV380DW61sh286LWC3gLrxgiDmti+kK+7VL5ha2EWnf7diI8igTyM8vC2L8NQHwim1M+b3+2
SaFpdxCDJ5uC+2IBwjj8wbYUqKlVxkqz8gj/r0gemXHNLI+w95WSCSNzUlvFu0HMCm0hUMdaMi+p
MimPsqfDd2/kgozAEoj+Nvd3z4ayuktUxqAQizUVA+LRn6Q+Jql2HryUKVYtBtrPudVwPdpjcnml
6t3scm/5nz4hs6h4NLgSRaXVoFwNMiP7ho2kazB9LeciBIYz98r5usXH8WNKpq+VTJ4B8ClIDegJ
Jil9IYz/RJKLOmba4974FJmrEaQL4PcPWMXRnH7pZEBq17dJdsXz844xY5byONLGzuFISPJAf5OZ
IfoFT01RozBdi1CHVPI63oEQ/vG5XBIZi469pQXQcJh7qJMe2o85M79X+vjKNB/pgXbrBADeQY9P
y6xwOSrC2EdgUvJgCO5fQdZyZsp4VkteWlZHHqiiEEbPA/iy2+IqteiruhUFSRfDf+MeanmRhrMb
3jje+1jaHhn0xbmc320TPTHfK2aPGcu9R7mK0ixxQ8olDT/5zMKgSKj/Jlwl5pBca5PJHG6r/R/i
4nmMHN2RNWfdTVP4GQG+O4CzPzomS0QyWLIfPGjBLaERULBBvwhg6/LXDYKkmSfWFokfMzJsveJc
JjONCxbbgLrEcbCkBiRVNDDP7EvWB5sA8GFFKVZedFk8a7Jq0Gwp37I7kfqJ4bbWMAAgAJO9WmT7
wjSXRFv97zEPa54gJZiC4oVHyOes/qBeT8qc/XBRTdcefHk4h8tcjCSVrFjbgylTedyUu0x4iDDe
69g9CzmfzU/BgW1/Qz3RCwe76EGwZxb6vW9Cjbc1jZvow2LF3QqJdbLtJXyP4lg4Gt7faUWDg8Id
/Obrvqu+Euwz67OKOKyAzCODM3qJZarR23CjhLIIsqYooh7uc+lH9x3lmXfiAUHaQQ59eSBeQNu1
gTRk4eSo0RDwlUVtrzlAeViB40R5rwo4X1lQBoUJRJMZHa95RsoWhxZfTG9eklsPcU/lmUi2Gk4C
cZeubViajZq5Hu0+hmXWC8Bd4hNfY6EbDGEVqxfM5SSbJ4ktirWA4Vp/5mn6pC0UafPgpeQ6hSL9
lOcLUolIlSiEkXUuhRLehY3i29G8NDlsVOS35yRunFHDQbBs5N3jJ2E0v66ohUGyWK9f3ZQbEpnY
ySO4JVoKBlgMh5F1WeCdaTb01ZBKx8elCQ9BtcTQIDkjg98lS6GNhkwP64vunKmfhm8V92NRegyb
fsyY3oBK5tiyyr5BTfV6g72g/qhyYeVtVRDhINyqwPgDsmj+mRc9jNazoxmhXgZ+5ZpApvZjuG3X
7D4xg2hhJJXrQ+MSWvs3lcFHPgGF50pwUIbUH9rgnHk3fvJ6SK6Zx/y4xpMIAHwVFBURNhrCmOA2
M7ESL74fH4g89qFaPN01mn3UKiDNr0hWxPbspewkXHQkOTWowVfHTiKqpI0+ZDqAXDJl6IE116cz
6kw/9VfX8XJ776r38dUeLiMBjMF4TUJjqY17s601pQZnXWFiJPbRht+T8nvTdVEkLanDLdszwIlf
shMyQd3pqzimofSTI24GZJSI15qtVaKY7tGuCUSRsPxO0iXjGTIXmkbNOiDmWCtSjIHSly++gJ7F
ZGYGayVRw5m9Q21G4g30KbymkYfXSu/W2HB6YlO4+6MYz0RWG07cFl3IIfnWoiGsyVbKGhtR7wLw
M36AyAFbzVm0lcyjrJdUlFPCbLEwSgPMo8Sesr5/pMjf3lDOLNH1dJle7L1EDFV3tHlcjvJWV9jS
O3flniLEUkqgPMKROdky0GRD2JsoLvimbYJhjGnbNb1Tsw1vVQsxcFHmdDhkr7zf9rZi7B/MJZsz
Y0wVGuUafR1NqOJPSR1Y2oIK9MF8TLbUihcXwNR77YY2yVG5gXWnzF3xESTDSni4f+Y8ZM/OGvER
BOcKN88uoQGZy053ihzLotc2XVjMZ759SLyziIvSHb5YhigFOJzCmg7mxtZE1vKWdUjQMhGbn9gW
AGGuhtSrt02Ew5eeich9EYcralHuOO+gDP4xewJ2OenIajDYc9ycMLOLr6e+F+pgm1Ik1U8Lfm7w
DldzZVe/MwJGe2eoKoCOc4sMA1LrPBo5QrfEMypfDPLRmbiFwEKNAw4C4scIXeUNMsli8Sde2ek4
nN2/SXNyhWVUtWeWW1VvXhRbUOmkVJOHaN6xhh39zFu6BYOibu8nkiVHTdMTlYjfuiCjZESdYTJY
a+JVEs9ouZRKq9RnqtfNWo9bxgmGKw/cJH/3ioJu7SlroyDvLTkHotM70nwDeujyt7RjgqoiA7Tv
Es8T7l4fF2L6tQeuXgEauJVVW/Y+mOm8nQE4puf2S4/yRl1DSj5P6sTWvPkmpkLdTv7pq9zcaTlj
99mx4xBXinxf8z7EYE58eDUpWG8BzlYI2h3s86p3xQ1fPz1o0285xq/iS++huPBkZSnokkz43W7b
/54vTxyH6dCyVQE2jmEmXP/0UqOCQdllJgwvpfEfCuoQwSfqq097avDTR/xfeADzpvl85mbpDSho
EJZZfxNGQnA6b/zA6lZe8JLpAo/V/b3YSY91e3NdYwAvlI6pQJlgFG+29elbgLkmIZmKPY25QYFI
tLIuNUONAy6l5BpuMFTDzRT3iPxgknNDUD1gyDMaMK5BIu29Wxj4CKXHl8ywXw+VCflEtGRvhBFJ
LDmpvVef+hz1gn6RrgGMztl4wsb2jG4bo31bAXJOtZhTgWArTtYeGl3u8Yxy9Nd9L0M4y/XxEvEZ
1mZe9ZTAxRnrrHfE0wYNzkXIn9k3LkZBnNW4yl6ek71r/FTBuPHbx/a2todNnSmeak1B9f04c5E3
DrRaJamDFlVJ7yFx8HApsKWjtjyHRO9JE7JOY+1qlahS3dKZhs64QZfYTEdn6Jbyo5plM/BXrPoy
hBCUNxvRsvQh11gKPoLt4CfOhpxLM2LZTYGQNipiAxRCkeM/hQ5efdUDBIUd+V/nufEAqgVfY9SD
rZ5kCsU02Q6quT7R/tDEcqPAhrN7wSnMf2ZKdYRsWx6P5+K4o3zaSmfNKtEZD0Lll429BNssvwW+
U2fKJUdK2MmPbY+O/T8g4JgXqm7NKnje/efFhtLiIBXe9q/OBwXnSmXFsKQFCijvD/T8W+nzlRrR
2wXdIoCzIulsTXbdKyvwBbEApMh+FeQMp5BCXag+D3G1Aw+yHYidjflc6/GWzKQst2E2W9m8LXNd
prL2HgpmKwMapihUEy2d0JKmGvg5MLdyvuoMPvMVev0YZCOevBX2JyhHbuemku5beUpcklfIu1dw
wXMj+9LRL1KMFxqTVOq1C4S1m4cfJZyAVT/xxDZSpHqHT4scEJLq68Ufny9JsHgCm/Xnul4FO9Dg
JXtrB1/SjZteSeFgeDvs13+VJq13NiycLrVa38GLm8dlWaiHzhdN4EqTcL1wPNpA75nMzO2iuws0
eeM/jFlhXb6Tj77FpEpfaB83EUSg8bYndUbsj30HcgucGNJagulNQB+AORoD8tyVeqtrHL3i7NgR
OOrmHPcfx7kfSmXQ6QfyKn+m4JI5qJtSPdxt1gEHc/ecI9u/s20lJNa10I4rWa1JwM965Dv4Xs6e
flDbUHPkUZyXUt8m2NxXnhDKQybBFQ7k4WHjTg9DvQlE7Dq7xpzqt0hPG0Qbl0d4m8arZFyld/KE
PRtj7GyGFA8e6qs/JYtWTKvRVwY29cQCtZCSoCfFCll88CpJ93LtPpJWYhVxqv7U54YSLkRzQll3
8cNT4WcHfZS+AC60wozBskYs2Nv1kenE5/BoGW/BEmfU+Uu4703j3Ip7kGwpiCE04ak39WA7RS2i
mdTPrnGlGvS13R11qGwXR639PtOQntpJ/eQQG/4E2X4WHdzCGVJfGvWA2wHNUxPBH1IykBjDtwVn
qnobPDHzJqDCqUX5dPG/y2/Pk573auJjeMiYsI0kX/crjn08J+WlUImdyys/6EdXCkRF2z9iJ6yo
CKrBww26fkWmqwnswjvGUtAAiejt9jvuF9ezHcE1nqQQeU9jlpY1p+XzzIhFNYgfoJyOCcbqB7mc
DxwINX/m5seDypSG5MOCL/uOWOEuHNhjIo3NUfeBqut+uj8Cs41QBbyqnYNsi8y5SRDW9uZ+koaX
sCGBtvZXM4GnviixtGwoWh0B9FoqCyhj9nX+zOQ43vM74098WYiYwFzfybbT9GvPtm4ZwKuFUHID
cU/pIgVeKAQfI3eG00sinnCbP3Z3nqcK2JVR3r9H8fmgt330kOzdmbAr3dDboD/W60aI55+aoB0c
OKQxdgk1yAxMmIby3rLX3m+4XDz9t2eJQWIPH6OX6JSSuWsh/WUrHftigJ/mHyHfPPDGSWv8i3GL
/Lv+vq9GA8v0U7aOqXgr6ztOu9L8R8Bb302kH+GxaX5IYprGRYsD0KBOX/EfxbNxcYXviFfoQhw4
w5qzrFqpNk66E31Ih5BsieGwF7lH6urnYDNI8tRawuBXJ+5dlbcMNUZFc7Vxyth0y42r97LzjPY+
bZUxRBk5rBTZXLZvj1ztNkPnEdD5ytbgQfgyhfOmZnHVOhfwVGsoBz3nm8xEDDxyjJI2vKnNyi4U
ZRnXHq24bumuOzqpViKaiSFaUALmvCHs+grzeTR+gYN4DNXzCv0NKJuyqW7dFRIt6VY0VQwxqhln
na9TTee5ctjNlYNLi95b15tf6AzRCAXxF8ZA401/SDr0jtrRHYVRrTvq7GdLNnpwdwqBI6IlIdhQ
HAc92AD57oTNwApmQOIoaKb/yRKI1oJOQVVvtk6Dv8kEg793qrec19qWWuZ/fXsmDYAH2vtzuDGD
7BG+BjdQO3IzFjwesd5dxgS9HPjwTwe+BV6T6ECaisOwcGhpC6YX7fATRi0FapMdtX7g5nAK66XV
UfagUb6xgYrG9YG123iC1TTpLQUkIskk93KH3lTyS1u2BckBDjj9auwgbznzT1UUzfRQ5u3PFbdS
LvDHu0vMVTDs+uym0fcmxB2ccaVU4KPhxG/OfT1NFX0hwy91+esqOHPfiub8cNeZfNyltKGug+fU
8b8dz9eM+KNoBTom8SogWXDM7/VpQiloSWFvpcNVH4hndoO66nXYRb6bhbu+gKHwBbO4yRXdKXoS
l/JtWPTX1rMMdEe0AiHrBJr4THs6CnFiIzr6JkhoeiYjC0HO1WObnymzO2R3HjYsMx+s90lNl5V6
GHbqbMBySm/+Pp+aCltDTsXJor9ZxQg6c6IUzzyRL9tw2GCDAzFU6sYtLPk8f1P7VKnKy2bepCJn
W4foOysP5QvFWhrSlQzBeQvFInPEdvNg59L6KRUQgfGfii+7F2/y85kkrKR3ZPRC4HkULk8hu0t1
xpEG0kO2UqbAqeI//Rrk8S8YKbAa/liCnN/BlzuSY6zFlOWYlXy0NNaArui7ZZrcFaAVXvcuvkkL
snLIDbyweI2iol6NiXM3CqYBxqDkLJlf2OEkwzs38UO1if6crhtd56NMAbzVIxnL1iS3XB8k0BDc
LYJlYJFArb9vegg5cPJCMEYlF7wgkgh4txveD/GQw69uf6xaMdZfHRBP/hB3pchTlpcR3V/xOXKB
2Vh1bmT/hFEBoHbRJjYS92eRXKOOTfG5ABrfpKKxvWUBtKNHEM7QvoMnV5HgiCfexRdqAQWStcO+
cHpEjtiwAmNa2Ng58NtRsJQhZ9ZPxoKx5TFxp+r+riNhlP15C/6EX8zaUeO6QwS9FeLVyAgxt1rw
vCK9gHm2+b90v0ZGFj17wkTKr+hE7RumW5vTRmxMQ3ZUihHj1SrSjAo5qliYWz50jy9HqGiRDLBu
TxXQYsSHkRXu6nCPUgj4vfo+gdGyZA29dWMwC3X8pLz4TzJ05rsURK0Wsloa84vd2dE9QCR1ojeX
Fs0Y/w+EuUsAzTJxehVwERMshp4/ZEoBAaDTJdeRerAD6w7gx8h14mM46W79dXTY7ChvZOkSv/J3
3/jy6L3BhWhipc23io7HQHOvaHljimd3GLyqUgGIL2YXwxlVkI2ejecB5uHs2YQoIso5/ji1FJd8
l+b6fc3nGgPdRJNMXLy9thfeDityQPY0ZiqrafmGbKkVcxodwCTQ52Fz4Mqc9uyAD8QrnPhkv1io
2NUKj+jPsKkjAlGJDpdkN8MItCS9heH1Pwtxteu/mrTjovKAcZFzscNnxYX0iv5v4QVDjgU9vkkv
3JOgoaHFz3wa8GwwgdiQjFwfcPHlE3LrwV9rGhRzzOVP4T1Hsi4g8sFC0HlrcIzHhYoV5SITo9LW
akHbZXbPQCoO4WLzvLMMd7XTAzlSUNp3SLNi2HP6DjQGLsobkoJmF59klPnnxgExuwannThBV9h0
ICgE46zm7RFW0FZXU7A8vS+qtVZRgSMmVQ1bd1NvXGclVszrOgKmBeDvJ88O4wxl+IK3qalFcB21
xIv46TZHaphsfYvrIBAryf41Yd/5Xl9v4P/Vl4TZ7xr2nX+oimX+0T7rbja1t4hJrT3N1upbWzi+
z0WPhoI7FlVj6/LklYBktFiBkAml6Y0sxfOnrNMkMUN3dxWbYebqHWcSsLjtdjoJgo6iSbzfmoJd
7ziuklhNC0SRPoikCImGmILJrvaX7IMSMpBwE1CgRNMDXiBtFrUaO7FTyaNEUjivaWs/JA2cxe+u
nEJNBky8C1dgmtosJnYynFjgg4OhMj9vY323mZmd0jn450YWUabC1zeO9TuzKtsx8d1HbQlDBrtS
Mncl+kX/gEi5LPdJePY2deAXGL1WIALxoiJY6QLN+ttH5u7Ky1oaH2rv9YILxIYc4Vieyk5IKH49
9/v8A4Y2rFvm7A+wxMc/n1Oj2aUEspmwOPy+/kSZNNlESLqPl9PrAto4e+56REsq5Y7WP2ERLGbN
shbS4RR95ayt8iJ6ddKXE8QZWih6hHGquyH5gr4KFQZhA+CZr3m539W6IzTLnI3npI7yMhKrBb7W
TWUcgHkF+evkRZsagK9iw+4AEGUnySIF7MOa8iZGAdXw9VxsOaS21hwc/EUnJne3Rn8aUJTdu4GZ
dQftuMwx33wfGN9hfq97xVmJAoEezRTFPCUu4xwCkcLgQRsu+GcYjKV1H7GL1z3y4mgagwHKMLNx
48+vpfMB7qjdBVnLP0yUQcOckmvNCw0ClRrJnMNfyFwAzteIEluMd/+IeF4fdoS6ZfuWdKDGoQlj
RmJ7FJAYLuNj7EpCKWQ0iido2tpZHPmrRySouL2kuIy87BBzHs82Xr9PSX0d89+3NlhZpmm+5NwO
iSOJCdJO255nQmcFJngUGTS95pBWnrBxUc2emDGDBL7Z/4AigeEE20xUi7/Ga0BNC+t4O+wMRXD0
BlFDmITRDyKVy2WvMK2V+8wFYtRfRfVe1wlfEvStWTZzL+BUYrFtQ5kLmjU99L7AX4za5orZ2cJF
zZPwLHBCb0uRj5ypjP446aSMNo9Y1gmLXCtG2kttwsfkbPWkM4R+4M5+iwX1dJdDiZpvwBJVTgKj
TVGA6K1lfyxWTW7y/U61orES8eOSZKPTS4O2Z0qsq1lciAdE2c0wv/M8mecgDLmk5oqHZ1LBW1WQ
etGgLKXIPMjJxgvVonQjaCrYGn+EfNAPmsyT1rS40ORjYqj9dwc03Us5u8G6c5QzNyt6oGbciT9s
dm2JBgPXBiFklzkCIBgDe6Hv8K0aFxz7oRkxh6qJadmmh+oqgE9rDeWlxDfIujJj+QydrveGBnzE
hnv2NDbhhsfENFDs89dr5cFWj5xCAQscY3uvC9FMXK81ScJwVdUfCWIlxNw8UIu3DWwjrlZ0HLGj
rgmuVHwsDSDSZBWnp3EKVoaHYmsFkqMHMuEcoHDFcCLZ2qetFHVNOhpVkO/pS8gJwppTfGPDSCIE
ZZqHs1KEd07XRdO7Yojb33JRTNTkAvy0RPMZOthAMXU7cNVwkZEVX2g6qVRcgA08qNSsr3VFQntl
l56tXw5NDsEq/jJDxQM7uMpKqkQ1307VHpiRLW7SMbGMxMEPiyDHrnbciwIpZdn+oreLc1tbAgRv
Fd4lIV8NNNlAgkOlKQWq5vSVQ/8qebWnRu/MqBFWiHtzYjcsYMQR1akCypMCo4SS3FgVHEwjQZLI
/Q+sgVqFjh3tE15XMW4/2rrx4O2iJADdP7Ln9rAJqRS0yWoWvbvQbKX9rM6OW1GD+qj8U+9f4qwg
tTqR1+HL9xs18jDLe7k88K2ROOn5aUej8sdw6pu3fOpgLdlu+qw8fy49lOuZBa0dA8dqAgpLSkCE
Hsc+Rm3KJEBaBTcy2CZGuRVVJ4ttXNUEbQvnpcPp1HuDAZAFPr79Kiyi+8AyxgQ2p3l8HNNW45Lw
BJ7Qh1YA5avwRYovBxRzEcvuA/f7XVBGyAw5jgyQ6WUAGGEKdVDsihRdEFjpI3y8iWRSStnqLLGn
4hZ0kwyImkrtz4ykH5e92nTey0PDEe1bPfOk89AnwjPkW7J7eVm5svPEyLejPGTwRbQHzqkArXgH
BpISnXdm4PRFH+FyUNYe1pryr3CLwVL9ywQzhWZLwBANT/S/mKINUIHfQxbN7lYqyn8bNDvqGIPP
30sSvRGXW6KZdILdM0MUKdyt2xfXk/2guq5E6w1/5ol/I1Ne6n3XkfV2YX5Dk3QZ8S9krm5SYJHZ
5F8ND7DlbqSBN7/hHIV/6fXmTkWSoZ/GiH+X4RPE7N9wxxdEl4dgGalb9CpbhLKXUMeNkhO1Gd51
o03P1VNKUtI0i5XjWPqBzTB6IF31J/Cw7efXLvcFQy/bckiHYksNzUqh0buCAB23K+nHhhWkJiKq
IntFTA2Pr8VAIm2FnkmIOpsO5j1xBgX/FvoeYeQBRBfU0ow3coGbNhm6xPEnGs8r6yzhPFduAF2v
87gSJbwsASD9vvKKuOqnRp4ZHzGwY2Iuqq/9rrnGTEV2SLK/CXGtxZYq9mLYyKbBc8HjQrnQay9D
ZL5T/g2sj6wg56IozN5jR7luceVgpnNBRYsSHH24iUJ1M+DF3P0JgFhMCr1iYbwaqft5n4fgIbGF
Nqx4oae9MfnekbyrHHGVDwhpehS9Lfi8uwTlococxrwI2j8g/a/RmZ+7/PQdWseQMDBEjJkRUt0b
xVa303PE/0SgHoUcB1cVUWdhhqVYD6o7vcGBo2fQPay9CzZJQrm76SlZvn4SbXw3CLAIIMd4Psa4
S2uwAaD2+vQPt19X/yiEoCTEW0QHgJmhlQQ5SwCTe85yLsDBdas7lSJm99ksauD5fMJP9/sDoCyx
fYPY94CkC1s0gD49FMnqd6ZgbZghOIZ7L74GVuaaNulSkI+afdcobILNjdgIKFCKTM6GQKKth7am
iGrLlEA5B8bsmZsAmFrqOB5TBP8s485DZcTvH/U6xc64LC/SK889Yp/qM6RTtI/F+lUvA4mB4XbB
M0DkxSumSUlGJqygHkYeljJZLsCrEGGL8+cAFE225quttIQBnQEc/s9r8P3KXknlqi/07nEUqj/6
DoAqUL5xu8uiH3W6IpajVN+9f20KD7NRoiy9DPPq2xlHFY5fGYxk10RjuZXwKis0a0Hm4Hd9y3Fz
lraoJ9z6KFJCwyHluDYODWQxZFb185DvW+eIB4ukUkLWVgSo5r0+R/BlH4qfKd77GTE7RkaCS0xC
x7mrWOPweOZalPn500LF1xrXYtYsPaglKTrYPtEOdHBAV3lCQcO7HxkqRfni4L/Q/00uxiWfG7IU
exbDAP6DUhFGfUOgyxGwBs95bD5g9pHDcvc5Uyfx+vUSkyuq1d1EfhIR/P6Y6rziXhtyDmuAjpbe
Cx8O/3abLGRl4sGy35tapX/F4VX0lM1mwpNkE2UjVJQCDjha1rwePfmtEfl1TnKJ8FZEkYDWfbnJ
Osn+/HS42iFJ9JeOc9gbj2gh2aXhbRWuvGDZucB+Djcp+wuYgHgUPhsgmwiuovf8HF0yKfn/kzQA
flNdbJHF6v5DO4pgnp7866kk13xlVbyVp1aCs8YZ+mKGULv4v5vibXppOvx13YluOJQ7xznu3T1c
VXB71W9Efdm1NVRSjkRiulC2l6SHdsSOs6WXDPWLy8PQZ7LaBdroPvUH8FjlaDLCRElfPf187OQh
/gL1nwCbDtJa2PTOKTEAQ0wC1L+4Lp6fZLepj9JbUFljzEe4yUqa21j1QkeZE50POF5taFNymu9E
CogFLKAf/PE5RvwK1ntZC8o5goxGKRusCGlV3NrmAChlDynco8s8uoyPv2ueC5e/7HAeUBC1ZAwt
23PEM+nDKF+kaMRGjV4+G8irjbPlteK9k3OilpvR1NDM7VaNDeU3JHOhmpwQKeRA6P0Tcl1kUYpn
+/oFd+M6YCgPASsDUhixv/SoE6iGhJHnIq+t6pd6abye55UpEyTQC34jF81yiJlWK769+HNi31hp
90Bv1ghw4Si4ssWzS/ahUKyfDFolxBCjHPVDUKquiU5zi1dy33NmpJKQy7m5wiyyv6OXyKqQMy7m
G69g3VYVwQb7gmOZ93yBdUwUfHYDqgUCI/DSGRbZc0J2xulaa8c+Yg3yTaRrNXEHjLIwt+XXoegT
MpxWbHV1YU2AiiKSvQRArO41osND0vaLm7TJIexDDkRHLNZHN9rMgoFIiseSzzwp+K/nDdAGUZQa
KRszndcSAjaFm4hFfbHsZGXyPoxTmLAuWzFaIRMgBNSnyvu6uoIEDxr+F76RGn4+xF/9q/bKKZh7
AYCIf3Ax9eMeEFpOBMQ+o43KLsXXda+QMQqESbq4nRfnqvbjHmStXDDA1qY/t3R8CrZ1oVvZS6cs
SNbbJ/PxfOxW11vt54GZI9GVe09sZumW8xkg7hLoFPAGpxjRzCd1VPT+1lWR9TN/7rUYYJWHTNgL
UYY8b/0xau3TnLOqqwrcp5LonkbmU46q+BVvxvruCDaE5F4z4fnf7bwP8U5UFpZd85FI/BHOBXWI
V10M64BBWx55RvnGXt4IKmOQARXJ501/QgdmplFscXRfWeBzNS1aFa667luw/pFrz5yh7Y1x/Paw
e30Ha63DByaVh1TW6sfrl8WjU46TLz3NiF+JVa8bbModRFVJmFdIksKL18NwwBabRxCtON99kfNv
6tGuMlJ1rOZ5FgbrWzf69gtcHpIdOqbz453HoI1OPQML9ta9DTLEj2gSSs6SVDLjgsn7fIfS+8jt
s4d1CV7JKVIPwFPZaj8jV7oeY/NoKTUCNureQrp8Wg6YfcIhjnsXGcIaZxKi/b1aLmgnmKCR5P3S
LhspnkfbPYANpzRvjePSW0sd3VibKf7Qmv2nsN0n7RV818x78sbNaCDXklBK7EglEw6zcgxBdkF1
uftdcVnMaLysNSSUCoAZIDG5eIBeISHA2NFWl8PhyS7axtCXLyNP91SgQaWijk7iKju6zhiHcItO
Qs2YF0sVRnRAA7wm8NbwToYuN/IzB/Gh+1pACChmKWPj1qj0HzZMqWnVxIpnlbtTb/BZiKL+qJo7
wrpuG5mt+ktgMPUXjqwoYoKlMxmUqZRmqIcjtacxZTSuxxhniAmDstPObSj9/xRxitWlqbyUWwAq
uH42jqul7NBNvoDNlnjAB/tv7LDkibxZCvZXvRvtNOjh5rsKed6jKHW4hWWyd9qZUvjPnpKfya5P
oUhMuWduuRXzj9TTnFuKSVLWFIDEKmkQYveRmZbveS6uxZlJyRsZepxH/P1kXN49QIx0RU2C+gIg
jiQmoxqj4X5QlC8RnQkAyTroPas1e5zzAzqH4qJyImHDaK3XyeuPKt3+/CJjduCEy9VqX83n/ttM
wfS/THDbWY28dYKoj43Zq5ARDleIloBAEux+o0m2aXRaOz9QmUO7rkIsGSTEl3WhUBbDy6W9ga7H
3MR3wAG5jcGe7K2X1Jze30l3E6IWuscuGEbZcDNrIUp8yeD89/7oB5HC0aB+OSsrKjJPhnN2HDFw
e07cWwOWcGJzjPra2c1KCr0qm+1k7ws45MZibSulR2Ti3gdXPH72lBuD9zaeXh/nQYRzutooqLfk
JHVJbJtTMOcVMLACDqdnd4hykaBhMezFHKgKZGnz0ItDa6L0AazHNmrXuUD1nXRtdXWuo0CStjJ1
C6xjQ1IM8IjqwpPfP1XTwAlq3LDWohwQDlGjDAMnKZnoqLOZTWtdJTHB2kAfRXcBB8MN9LRi3syv
i3FraifwYz4OCBYY/uFYyS9rS3yNRLCpxqWe/BouLTZGLKLMyi54TIuOvBsFeiNELEImiZDH3cak
J4DsH6RcEsZiqqEo1K+YRmKjv5zjAbbQpmBrptdY1PN1E2NN1oMDD9fTEh9zzVnzOG1ib32hkUVl
zH/yFpAWz+deMUcJK/TtFoo3s7bR8Kkr0NH+j/Q272fwfArU56Old+LtKVP6WqerhZoyooXGuj6x
jVujg2ZZOLyvD0FDjxCvc/O7xDbkmEcFQPW0CWYCXRBxVmqcMg6aDPT7F0r8nJx143l7J1/NXrTw
xARs8NU4MhcATY2TQitSqvzdlCEoG+wXQq/u5w95al70dcALjZkpTf9Gi/+jyJYe/fUsqZlUoTjN
7zC0EAs25runQBa62WDQaLF1q9+gy3ZV15ubezkhLwFT4QY1KNXzu4AxZ//mbJ4lJxXccarw+QIh
UuUzijPgubc7Dfw980DC62Nu9OawothwLubJ4oR5NW91WVbFoqVDb00mMUvX2DYVCCH7Fxnie2ws
iNcBtqrlaQP2aYy3U9qnITefbSfD3NdKV/LXvFYmYMNx9KIWsPjOtnbcrBH+Fst2M/wyBYHQ0n5z
hYyBZlRx8YxiZP6Ey1HjSYVjrc0RF2JYJEJVxso09TZQVNVKSg6ZCMj4hAEDKjFlnQI9XvnUzqYF
nObsxroTZOU/pYF9JlGNRh1LlI4yqAHSPpDyYErB8VFou1+kJkx5/9Qu+CWVbdUxAd/CMrZcutdm
p+LnCv56I+GF46Pj29FiHsjEnrprldtmVjwTICIOmws7tVIgaBJKgmZTiEbWhH+YhVcf4ykOSxoN
9Qm+XbxZuKAmXemNFYT55tjn8WkWnKVW4AbDREnFAh08aCzJT1zZR/cZkJI20R1owBpaeRvQG+hs
7xx3b1wXTrpcLhk+Ec6+ECX+0baqNkd5P6gHPkY80lIRxdh5vvA4M1oQuSx7i938YioacOmmNKBz
Cl232vpnD+qyIsp4nwTKWh0wmdHnKAScfH5WDRCGUgK58Qydsh70tn2LVqNtIu7j7OT4QCfVYtKR
qRk4nxaQGOi4p6MUhNU2ZFI/nyh6tIUVDHkfJ9OwS9+mdmxMpGLW1XXReTjcgISBkTQBy6CNpvLO
o7+a2ltoGSXD1ooZ+MmIQA9BhX8tPtIyN5TRvtH/tkKEZEu6PcuYDHVev+YoVHMpqXArMFm+ccMM
WHKX095/BqA/lfQCcirzSLIoPqwr2/OClTyHNDtlMJyG8uwiYyodFI4B6ABH9fz1FzJLHKGd5Vk2
HmgxkzKdWAWIvDAMBjbYWXgppnRumDIwdpNWRxuIiRycHDD1ELLgynj9aDa22a1exT8i72gakZJO
BzD57vW+odbFjQ9yFfymgYSjeVsx5zupKRKj7Kkc2yhxgfGbTbriwpdEjWQPENzFxkK7ETaBd3C7
ctHpO0VFaY054H2HN9sT/4/yu3bh2j0b8q5s5s/k/W8GauR4xT6hErAY9S1qPUWMDZg9Cc3WphCa
ejU0adoWS87D8YerAPWMDYKIGz66mM80dTKI+vUl7qnCinTrXTiHAnJe28emVlEbY0q9KUQlNOvv
lCYvHikLHhHnkkCbMgpw2Q9KhwoXzCuUjjaaJ50vantUFoeFB8FFLJgJmUZD0jhpjcdGhU3Pu8K/
w1rwm+GYWMuIF62wMYHVYKuN4bIxnusHalHzjH9c65TM307lHN6XCM1HKXwB+hZyi0dljZcAb5Zh
HzYJ3hD8Aij73dGJsJy9csGtis7YZ6CHt/kq5i9abIeNoRfssSw7GwoCsnW4h3TFeH3d0GrrzIUQ
ognPCs6aK+/Iv8zT2ZBc3qQMb982po+X8d+h2eSLipxUrddmsy18c8crpebI4cpKtHywmTYT6yPV
d1WYMfrsKUx/fo8/oDHER6wrWtp1LUXGZYIFLzHZF7+R9RwkYuvGUTAJx7+3G0j3MxzYJuSrYUtJ
I57z8zUhHR7BxBnj3LfZZh+XIGBHNMmdUpucW4pceopmixzbQNTp3crhDRJQyn4mNGLDbXKrCrAk
Us5c4PQfpHRU4hqQwEbFPNlJdAUbD0uPZhZip4xKBUYCrzTYAAByAArYDFm/FbmSg+N/QEo+GRZf
PUiglR1bjOtbUeB+5OnYlqmPd8hc9s+Fj5tuyMZcVjB2zX7D9i8aRO6sL/nY18czJJkD9XK4M7iv
IikOSZfd2lvFBx74yiqmBX3Ow5L3IEnDcjpND8ZXyMoARUShPi2Q71WYb1soFz38RTOJo9wK5KZs
ldxh+ZzAbizD95VwWfRds8fOz6TIylxN9FQ4+uNjpH7wJQAzflX0SVcL8riRpYz5Q4pIfLUvaEnP
RPQoFy5f3tl0PRc6akVpSEAEzdPIm/+h4IxcDZIuki3+Ow+KIbw/R/ueoXq1wAGBR00TQFFMzXfM
CAH2twB678bXAJW1ZmQas7G1O3xstEPzdRZJe0VtTOXg/wu2ncBfJJMwRaa7X8tuyATLcmZsqsxz
dBbuEV2yLBSM8wjjF3XEk6+w9obIMVwoyVOtkIIITjPIdUBmNObaArlZzAnp0BRrea/Rpdx21cij
AMqtGXTaJtpZSzsi+KKm3aWFoSRH9ZsL+LkGXv5549asfAdriDjseeTmsyumY4t+944P5l3tM/4Q
2npWn4q6kjK3bk6WX/NUVscDHZf9alaoi9plDAPl7vjnyEhJh92zjvgi+d8NtIWPJE4Xmf7GiyJU
LvoUGZ2RRB9W9ZdmVEKBW7ss3reIGhNBeT4XB40//XsCMwSDgunr8V3YM/gCyK0AycsFxooIwLS3
Ev0qCXP59HJSaWGcQwk+MmvpJFUoDM222QZY9xh1MhPElhOCX2iO+QcEPdIN1ajrcp3oX8n+5ihg
kUP3WkbvyIx3XzFqNg5A1BFPR6IXQbSl32T6SZBSQD3H5bj+fRBjKQWWhAmmF4cymbMpZQHbSgkW
tey4XYEep7Ir8VbEEHNozjVxen7asDYmPaJ2cSD0+lfzb+HZXWKjfDJqb14zOs7/NubBwr0jsTdJ
9c7qp64XgIFJ7LTmH5t8mIeBaoRTqoxK1AWr9IFRxwidjI9+ndOdibXNC/yap+zntDwnBrlRerMu
AVbe2wpampz2yam0xyl0lmzfaOcEVQQcDaP4KLN9Y/ZgOsg0RNweMYKgAEUub9oE0O4rgZoivZ/2
2WoktRyK6wIEjcQYg617irhihp9IxAtvD9//iCxAEG78ixxJUL9JgwBdrKcgXYoLCF9oNShkzcVS
5QcFjYC27I0OpxX6CKtPEGfpTlDIdcvjOi3TqvmurIcsqh09jjRNEA9LLFxxRkEZoY7mT0z22u3C
5rInmLxgEz10nz9NtmfnbqxFTFa+h8tzXGXm41SzaVklPm3fzozSYQhbmiDdTC1YsVfd3H0pELbs
NAdOHeTFkB7Y5PVFw/SwYNiyiR9r5OgeSj/aKHFYFTWbbqaA73ZZzChU7D/02TBNI8R/GaDoL8kI
l0O0AgZxC3/0e9EaN87YNoHL3MGCe7Em8MTxEJJOzi3QDSPLuJOv557ivrmRGmCh5zugfivVN5Zt
BrhRat006+Z8g3iMdId0rn7quegA/cxPcJ9OELJukH6I7oPxfhAfqMFCPpMh0CgOKJR4+qIVoTnA
OjmmA9Bf4zYv0t6+url1XWZaS/aZNnGv64suRukvYErR52Yf46cuucIMa8rUumnMW86fPaQVhZW7
V2SrTP7W/4OJG70hob9gqp81uPGHGyZDDQqz3rRrHdykY3yUAH9Jh9IzIWorEjQEpFA5zdoLjPuB
BpDt7xS8ZjseIQ9kmINZxhh7H/SCo3P+BqVXoeZ6DR523L9aYIgj9vh+eoNT/RFOiGDATJG6m59q
uYn6V3qWUpaYKYnLNC6qkdAU/BQHgGMbhkqcc1FexoFw5t/sPkQ6JrpbJ8LGdJpFsG0Ah6RU5rGt
WPjT4Zads9Zam+D+ORDUAI17AualeqgL7i+cqo2st+ULgkTES8cimUGs2E/gaSQZcJSYTLNf9mkM
eTWjQnngPyIKQFf0Ywth/h+6bLyJ0SvRw6bRxvovVBn9F4Ri89nMFI5bfwDfHTsiwNukz6ysWjmG
y7s1qtqdFzH3Tm9pWoDa8GcVLF405Guv6VK5BPJLspBCU1h8TB/aAgwble3Reo9b/0gXuiOq0fRw
Ro1/uvgJhGHcsGX+yXsIGv1fPz9kHS6/AdJx43tDVTXb7CUv1wxV2RYV6SkEVeA1D4dE2xurbSff
iiEESvujQbRQeARCsygcNE+foDvCQZ++Ohjv+k3BrgB9ocqs9gDMaVLaR1MkNQ1YJG2dBW7ndAgJ
cr/VVMc+UE56waRokcAp7vKW7J/pBuZtehzy/nrgGB/2vD8BuDNNZ1d51JVwIqnVRg2KI42mmbDQ
aLxB8uuz3jMrRrKLIOvaAFWe6MUBhoLXRyFKIvnVm3C4etJt5xqt9dprQS7bXgOl+JrfkpAojBqQ
BAMyCg8SOMQQ/mfM+iRRzSz1j89axI+0kGAVQ3Fx1TzfjRYv08Dw7nTb3bamtMPA9m04UfZzrCsD
v6fYa9O557gcmIx0HrcttUcpRn9qDt5iN6sdjbqbLzoXVo9ZuF27aYWz4NSc1K77UVZ3Cs2qD1LF
eJ9p6MyywU6nEltDFjwKBu9Z/ydcyAQBG3YE6LnbChywal6527aVU5ctp6MWLCIcu1NWxzJC05zv
ZL9Gnp9NJEL8CXAf4L5/6vuWawxNAZcPqIsjP9dQK3Ar8o1+uYOxYzsyzoK9PbB0peCcEdYTznKT
87tYRRc3SUWEvRA0WOMAAY2T2GVsy5vf0V8x4Jl2M9XEJn5SPiBno41Z2exu2Ead9To5iSTc9HBh
22C3KFmtT4hmOeD3hVJVFo8XC47/A19ce8oDWLHUz69lIlAcbz6X5HJ3x5mMmbIk9f/THKbNZB/g
/rwV/11TFTXM/ovsl/cefJG5RhxW+kIOk2vRXqOaCmytkwzWi7YvuM/niZm6R71Kd5cA1GsdfUjR
JRCM/U4ug9gxk6HEmLpuryFeLrX2qDSPpttZnxrpd/ZnTAjLeGk3I1Q4z3PlBa6wxT3bLGFIs6RR
roY/M+yajCrCUnLMIEQu3ilCDyqbGT4N8TyxcyVHJpBb3vJvIqA6ScN4hAQ3Imuk9REeKgBFx32q
njVETF7r1UU8jZ9c7DzbX9KlX1G9MPVhQyVJA38LPR7m9yXDAj+fnn5UQQQxAXCaCWtIShfyklzS
DiK2OC2B2XEYi294UcddT/DHJqtAHu11Hif+ekvTP6Gl6hdKh9eBvO571KujU/aCn/wwDMwhSGQT
hfCQiSCyZRNfiF9Soh4p8t4kDSH6XQyUwB/wXGRhQdf6vytWss0FuIA8JjCSti6idVO2dKDi6Qy5
adAizF2GWcLuqRcTJ8+DFdxJ91JMbVU7O79Hex1Ofijj136cm3seBeYY0Hd0eEZrQx6XE5rd58fp
EXI4lKYlrdRtKXSB08/Vj0l7JWmEhBodyv5WG1gHmELU1+40QpTTXaG7pe2B8jpIjLI02rDw17vE
KaDVMmpC17q+v7q0OPy1GLCrL7rzUVY9KXGOHX1XZ+4PoXmtCeTN+L/bcLsp4RY7Yr6Bin+jZ3jD
vJHdI7CuAFfWIXHYM0a6r6VA9PvIx35t6sFUGmx6WeXABUHAuov9eEzlclpkaRSE0fZGxw2JB7i1
3rv9TwAUU1Vu6JOALbX3IobzUAt9OqTQnuNvpO3GWy25vpkEaPXyPRsm7nYwOX0r5DgI9EbLoKmV
Ir43SmlhSawGb6xvUq8MQ2+zkDYdCFuhHeDCWIKLKdXs+LsQcxEmiKbix3X45iCGnVvTlAH9I49q
fKIaJR2iIdz7EgKKrYN34ljoe13KUpwBaYFgbN9SR7VgubqpJwuHXfoBzJVB6gepuNKAr1H4hW89
XvlSZ+TFwsFCNS0lcFzaDg37KmTKyiKTsPr4OhVf2CkHoKyMR9Jdrck3jaYMD5gM+PgvmcYKtL2Q
UChDPNFUIi7BPbehMUaIW3NOU9s/32oMz+1eNH1qdFZlbHAua6mDPX/o1wDwnE0p9cjfSkte08rJ
47CxlVne8bZMmAWnjqmsTSKr8keJ4EX5ZAvACCSznb4jRpfAe3Eco63BIAek+PUoBAk7C+HUVHaF
wLceGDzXZ3j6ETumvOYSG1uaj7UklBfgC00GJUKMf+nVHdHLnNxeSOdhux2xu/KO7xY+n8RwPlPx
XTXDcs8oM5+2hR7K2zJtYwZRziHncoGBzaVZ5LLCNEhPbOJVwG0OeIqzIsQJPqvxvNGjM+8QSZem
yg5Oepbt4wRa2/pTwSeHdu8BgM+lX91WOlogqULpesrqYl8P8gzY39OFXskkbaj7Or9Lhf1hdunS
0J3g18WPv+zMmYEn77fKz+NTRdgwcvHwdYRyOaS4MGpkRJAyrj5wUzEEsGvOq3DrYqn12MQ44G7w
srOZ1hNDo0HJsp4UPfQUcLykU2TcLC5Sz6C2fhrtwITFCT+F162NvvW0PJx+VVVK8fphTfZ4K6ws
T9G7pDhz0P/3D7o/x9DU2fcGtXvym+zCmEnJMc1OTd5N+rEht3HXSXijOkZ4V7ymADgxg9JoavDk
e5dfQD4ije1LS1140DdOaqNe4x161bHBgqeRr7VcdWCa3WvDt0907MPdq9KNFbVpaaEX2JZGksdU
GgE/arwu1q+ZsJ/RmU4EBUiX7GkJ4OltvGQZjk6g3QWZTdJMVKV0ckYQEjijqKM/9Pha3AeRoaRY
iTSUPELxrFfLUkmOZefa2NjGBT3v3ApkQF2zLmX/RiwR4p2BM7g4UGQAGabuYu1f5g7ym9OyS57n
4pZclXIMCfNhq/Utift03aI+qlWCk7LXaLfCOXPqu1rfCjwb+gmybtAIkcej2JAzv4ko08MtthoR
fw2Pm+YZTs0NyBytLuPm6u1C4NXFuJtSDGW+LyL1o1lryIoMPEwLVuAPM7wzouX4tjQ63IqqHsSR
rmAjYqUqugq6EsItsyL7jG4rIqgG6rh4gC9S6WS6UGKcJVEEA90UnmYz7pE2PzGVRwZZ0sNaNDlB
qkXijxDu8/wvpW/eh0aKDz87l5qqIFUKRB1Aeh7mA78du9NEbNvPXqRtyj1AgJVv0Oq5BcW6moM2
DJIodvHOxD2k4Da3WOLwwrJb7vfbQHnb1qiQ5WpFjIVMRMOoIR67blTO6kIsTCtDuMGspcBNeFq9
QqgjDafTTtbvPBl61dsqPpS8vepd8j4xKwTa3+wRX5/dJPYYziMLDIfanp6TXPJX49v5lNYUvqQ/
jZvPF02yvxq+60KyoaCOAN2NLIgt++REUO8p4qv9Nxk0RUmNK3s2lDwUPCqw33S4ZnQ6XB2FPdTO
gCu0797YuGt0cwpGGVZJWyhLbnIpfNCIXwCn6PaciAP1CLAfac7fODtElYC7SxpsrnkB00Q7wMvz
r4Y6phLt1HLrftV4w+D7x0a/wHEFTfj5EBeIOGf5Wajl/tbVubeZlHca1iphwpYTEr8DcMo/Sui1
I1qTGQSKfzYFHTQp1x4uRvsHN1PsnQ8HHOuAm1scbr1xZtUxeT8Q9KzpiIP2J+eo4kM1owKQR/pj
lM8jLT2rb9au25lC1XnYZlM0FlwOtJTE+sSP21JtBDzAb+kdSne/YtZeTQJtiA9T+tw22jh2bSEL
1kIlg1aYEuryc7NI36s2JVYT/qauGUmn4YpnY8gwwI9Hw02Gw98Ln6JHlDiWwAPV2AUWXntJEjCz
9byO6KyFOklIJL/cVx02+LkmTaObcPHR2HJrAONlZTbwV7PUgoQ45jNIz2cOaOYbnHdH/GSCWD1l
U59wdLBI2FMBVMXsjZiHCBbBPGRROxkveCviat4XfsBKrPdQfzAok2Wcgi9HULbp5qcekvyaodQY
PwROPnODaN1lXUoHqzx51YxPXLpICfocjw28uxd6VRN9ZdEd7vI8aT5wWJ+8TxSGkG+NFUN7tEXw
cCHq3B9e1MdCVNinL1FyB5vsZSnuJojQWPZ2uHkDjXYgpfHqPOaPTHUauUzQiJndCks85KpIr1MJ
iu3IFdGyApvVHPNzDhqYeksbeMU7iCC74flLN79FwZgQZ9iZ199ZVGRQAL4fgEAOPkbcka9ychhy
76p71o+2dX+YWM0Esjvp67cmqs+x+3n5q0LoxoDDMAvPSsMiYk+2xBaWhbH72r/+9bycOg5A+AMw
uJcWyOxZMGV9lujlUk9QbpWVJZPkIORCovdVfzFr6NzoiV7eDS14xk/R84Sb6GP9a9xwzTGZHKSv
Ij67OGK/7sddvJIEUx/Jnry0PvCJBGWfOvUv8qBvXU9SrDIxu4nzqVlYrBSOAxSGpMqdWQQLeqVB
rdxLDU3dSVXblmLaIUaXeqpDVvG70yhrxcDt5S2ED/94eJbZUAUb0y4V03QLjDJUzGHp34cJVZ0i
3+8vyvShxgCiz+VJycL3NKkhUiIVYAvMlma4lnCF06p1vBZgG7n8lOXVADx0783yiQiloB+ZYvDR
hcWvzwOdf4fA4uux9xVhPcFSl3dF+S46N166aVRDP4ViMXVZ/s8QUQp6/pnI6grKUQIhB4B8ezR4
L3CqFf8ISXKl2qsJ7NVtau4qmuOLccsYq8P7yHNNV/W1jmKDI+9MYH/7VCQ2EKxaeXm9l+ags576
OuqDeJ/q5649xxsb+p1XMJC5Bmhi84F2J400d84b0LZwrPz2kICI1U294l9mVmq8DmbJgrhoWJGh
IY1quRWy/FX9nBMegOSW+vF/ppEFDDT0I2TzZjImuDaYIbWWTWd0E9unByqANCbGQTuTZJbNGCKJ
i5ZuA+jVvhuSNGxx8LgF3p5Dw7uVyriz7gf+YTT73zwQRD9wHxtmHvA8PSI2E+SaUQVWYVMx7dm9
ddnWCxeh2tm6xVH5CsBstWWCXYohrW/S/itMx7iMm05x5jgAR3dUYN7RMk02hqsPijVUjnWW7I0u
8qFukf6XqiOznQLII7rD+jV5D588oCylIAsOXqKqKwzorHQ7fGUUSa0UYeicIt9bKAG/JyqHHZII
R4Ocumxn2JOH8nFm1FauNOQNTTqaUW0HBIzhzfY2QKyv4G3nZajgLZHlBLwEzEmxx9T1wbdiHKT8
vJagHhSpHqv7j7ZmMlSMkOKwJi1jL73HpfJpLlcjPpCoU/gbxp4tgTAhoyHs0XyqsvVqRVzUsFo0
TUtDfFdsk2wl8UMedvYQuciDctNXYDC7dKGEgG1RkfggxzfSmRpjHkx6hP7ESBx34A+q7AB9drqz
YI/XWZi0ZvnqVKdd/3eHzxO/tNuqBC2p3Z9smBvJzRCIfQTwnY892f6D51cu+clK6tL/JAbOPXu0
EO1bdVAE8/JO5D6GqLuf5mD6NUePrUydhs5f92ICFCLk1pWNO61b4Ci5/mGmDg72PH6EejjWJ3CU
JJAcWUvn3EME+nmZvnnLXVzOXluckcSS5d3AGnPc+7daGf/cMrGTv/HrNV+fqO5/Si6TcXk7MQsV
OB6HFJ7nPeQjtdJDCUQakcXf1QS46Q724zO/oFvk8aFWmBrnDCaqWPZdTjLs+Y81edkfZJOznKGc
zk99z9q+iQrs79LVNpKoUXlnn3hMK9bMtwhXegQJCYAfvtCCu1FyZS/3+jVB2HqSkIp2IZ9a+ikK
M77BZIexBY+DQsscKP9EayUgU3SDYyDnzfyBOZzM7K6Q+wV+Ks8QSbzrupduyr/XxYUt0W43Yx0C
Y1UB8wQSkfSsYknkf5jK0mrYMxtZ3x2Jn81NTbiAh1cSK05x0gKkIJP27AfZhdvGP3K5Oh7fvL3r
EpDSB1y6VgNGVwmrtdWb9uug1XsyT+SIE5s/TLh6n7ioQ0tUIhVKba6gWm0KfrVO2BVWk+nrP6Uz
thsjkwW/9nWmcTpnToUocYC33LqO6t/lxoeoe0GTF8AkEHuUAnNjFt6z5dvjk9cErNJ+bZ45bSGb
NZ3q9pAqjFMtZUjnajlwvzch6pr0bkjU79eTfn0hvKlU+m3SxpeUiZ0PFuOO/rcaBPo6z4mBMJSu
Yq4/Nb0OqWZaoREF7RPofm8tZZ8/mmDa9Txg7Kac+YDQSmk8UtuzdYT8JUQ6REuh1VJDEE0aL3Sz
s8MfE9OPX9v3ajjFQ6u/mD4DC/2lm2FIuuAjDtthGzD5jffNhme4+9OpFDzdrvQpdqPZrXdVbyPA
qo/tbaensTn8eBxhMz9Yt6Uj6Q6Bo18fNPxm8c2rN64uwWrgO+EqicGffg8mDy9n7DhPOa00AaZn
GsqsuE0hPfjyK3u43h3cfrAxqkr+5AnYdvys/WjwsbGVWvfhG4aL2BEMblaPxcz+ZJdbyU981oaA
4FTLRkd66ez6KFn221guhL7lGn6M0B0OeI7HtxMzzqO7KHHmPE7hag+eD/h/MElPAELfhPvvXKZN
vncl9kvwiY91WytV7cmMniKp95QmLHRA01ASpu12j8KWoWHSHFhWeYZ7YjCfbspTotGPWgJxlwjb
47sq85Mf7uZ++OMR9RGoJKEfW1NIhSwIVcckPDXhK5SRR9EsArP+M5m6ElwCPhMyqN59ndkOCNQJ
4h2z6MM/EdAPbZeG3RUY8+ZiBp1kWNGLkGKSBqi5DXAxFPeGWt1eD3hLGe/KTe8de3uqbAHLdyvY
RiZKQ2qys4nidvvci/Cn/CrkTPByOqfMoM4RqIfDpsrMVKv0SxaaWjnzpP1Ix3Guv/W+lmggbHeW
JyIW136afRniFvMn1Xx2U3Rm0t+EEyqGxBx9Z7qjnVWASUxffQkkynhaHrW3HOEoQzsfa/vxJZhK
+6JhbdsI6/L10O2BXgSVmAWDh4B4zVZZ+nPIh7Fauq4YI34fJvL2Im1pXUA7e5ixOPc+/kObZK1C
uoAQnAT3L4y68asX6tmQcmW2L4q4uw1Dto4M9oyVx5JMn9gekY5XMwgvwW2GRwrraD8hbaAw/eS+
17IejTW0ZkG52diykYWbvNL3/O29kaAZwkw4WiJpmXxBWahqpoFNkk1MmC5raCeX4iiZ0kjdVoWt
MrTowQ2khz6vr6C9ijZs1ZUNRVdQK+kJ0y8fgRxzKG6LE/dAEp7aDpnp75xiJlD56OiRIMRPTNug
jFn8v8hn3VzZ7BHwK1haeTSr/So4tkL3GDF4g2CpcOolcgvqyBqTcaOl795kVO5mB0WULT55SqQi
clnEkuECGTQ8bnxlLVKr8isyTkmrgVuHwdKHlECvriF9qVKrrEwgXQqxLVDBs2W8imtrn+F6hc57
IA5Q3EAmegqfs1CDvApS8DhPpwmH3ifsBkvsCxCP0y8VMpf+YQhrtiv1glhC1QQa778wX0RqWV3l
vGVkWhYMyCSLTsBRXTKOMvaPtWNO1QCgPueGBKk80eCN44/1oGTrxzBX3fkY2v6n7QW0uiuLJkTJ
yPxstKiBpJl9zQPZDIyhYXVEMXj/YIPhzyGOIWGz8jsAY+b7msfP2RmGHb8NMp2TSep6ExAE47cP
uuqBiGr9Bt2Tor3WwYH7Da46048qLa/2aUbmkkyGUunkYYHPuRd+iA6+W0bP1JkSVgTMGYcOtIVq
xWxpN2UWYTaWmqa7N7CfdcgmEE6Abhvrc/oolrx7051+PdDQiRvWrlE6sCYI3QCGRCQL+VFH1EEE
43hSvstOx38+sue377jinNeekp2oRkq/2GX34wEHSZWJNbKrhqQ5tewaEq62v/C/Khn2TEWs2g68
F2tH6BZZk0uzn5BgcDRoZmv+g442YYZ/nGmbY96xX5b1XVas08/gIpcEqwe0wWoRE6BxDMSqMlT5
UBqwK2AFQ9Ug6KMzbelOL7onnX2baWdnZBuctbki5lfgV3vxXYPTqI3DGM9d9WGWaq195CnWnLGy
JZqCkzIEe5yMy8IZktZWT+VIBpTM9R8rxpifTnyQsfOw2dLNYtHkIk3e9ctiT/EIDZD747vOcuVq
SO2wO5RqlAgvsKapLwaIFRh4QxAufFugZhc/nG0bvSuzZIYmfqSvhLeHP03TAv3ZneAa6sKcA5KR
PwitNz8Bw35gZul8l0IGcjkdlyUX7A41hLHjVQ3NS72jOBnaEOWCB1WqCpS4XukzjuvN4TvP8SH4
8qPjSbbhUfWUEm4EWGr18T5Nu8KHE+ejYxgHST1ZGKx2Rl62XbxIWrWXFES0zP1FQzCkRvhUqWtO
vlBwVSc2kDKpNNE/K4yPcpgACUg+F29RTf07Y6kkA7XnFADJ//70cXYxQvMSj8W8Jmp+X1tkcReh
KLMRRKvxvjcpD2OC0xgnpNQOqNtt3FtYThS0JYix4UwzBRpz2MzQ+QymKfC7t/OptI4aEzfSzzFy
GWAsucD7rux4vF1j9+ppSRPzJwd4ilMqvMEih0LAMgGPx1kkaEh6DbYp8G5S15zjh/GlgxA4sySN
Pxzx86cfzZkWfwA4Mkx4qeo00c7NmJEil8YJ8U+CwGvlethG5FhsLikeH7/pJBJdkw7HzCY1puFH
b5FwXxXcNg5w8HIRpD38rPlTdbeHaz+7Dwr7b1TDmahPO9DtgY04h8jAJpuAzNBxHjGW1+d1bsNj
PI5CdIncczjba1uXposCYccIw/TE1GAfL3HPsPMbkjDmgLSA3lwYjRMUQQ21rptpOKOz+Jl/lhSP
CQpSmrwogb3ZEspqWo06OjuHbBXR5E2NJ8omgGZAZmYYNDIgd1gxBI15yhXgSwXadNIaoR66E1Aa
IcsppmsdtqyU+BC/RvYPHSe6r7Uix9mdv5jYoj58m+crV+sm5NmSUOdltZkaLJlhj5THBRnqf0Ci
jF+jvxysP2v/v9vnG9rjX7aJHYZzCnInldFCr+ZSTAYvlaztvdP/PuRAw1vylLiSFP7NufCBMcFl
2/+dijrfvGBKzcrike1Jp+SMlaJJEAkIRByHiUOlbmz2URMbo0wB3s1wxebSWPx3mNVoDIni1dQN
AEZvs5CfbZK0Yh+1DObqnGbWOBnI7PejBWtK7DaWvUsjRfkr0Qn/Ec+BmSoRsFMnLSAdNFohZ5Kc
voIpqWLf43FSOREhhClocLliKDLOz4N+LxXu/+FM05RdvCRM9lfn7YpUF5O8FrCc4M/cFj1frf8n
gnKC/fzKyz43IlHvsusB/auYLzKRA0b9FkVgx8xh7dQdIMbIzy4dyEUHjsEDxSb9EcLiKTfFdmEk
SD5RX5Zg+ws7krhkSUmu72NX0aIPiTiTZz34opxF0Zh2LXBAK4DuJ9AvNi/Lw+7UXiaV+IZXp2G1
8dNw6AmgpyNgJ+mrnE4rbDJh9UUyUxQAkk0GvwnKIW6+sKWCtXGqhw0Hm5zbzFZMa8GH7UaLzEwC
LU6KPhaiYCzIgwS84FUsxt2LJctcHq4eP5vZomV+OgRbDxlpjzC5BL+CLObp1l5Fv22E/JC5dj/8
USu12KTt5vWX/Rgt6oKdu5FpzxShHA9k4n5asaV6sC+H2E+ayJu2v3iIRZViGigUzwPUu+PhrW2s
vKCnOMVvxcAvzYMF/VpbMLzCZf0+uVlUt/1v1kcV1uNkYzIlngKJCSLLlIOZ0gGJv6GR1y3+CzF4
coI2Wvqfs4/UdF/s25qIhg1ABmpZ9s6KtrYR6FTW/oQgv3oyh41qVY/pVZQOkDLCwjiTsZ+4LdB8
09Vj4SbZBj8DH5TVUroDPDIQGU2SWAxdJLlvVKfx5wcGkBdAjfIr5h3bOQYgOgWdW0xxe2LET8Yu
5d5xh5i62/3T4y/e2PZEPYQrWEWwSAnjANR8E7P0gwmKQwKjXKIqmtFKd42sJM0vn1neFTVez6pa
53pWt4xRCKp+Lu7iT8/Hflyzd+AjuCBRjtLsXY7BX5U7f7X/1B2XyLieBJjlLqQFHsQTUi5P1iJ0
OsLsUh3eUBwpvEzUKLJOoOxyla9kvEmCG+cuO8PLFHjm+Jq/ADCvtEgAJFP2Aoy4Yb/qhj70DWde
ywuqyQ8JS+qxKvao5AS+FZNopwTDu+aquEzcbDoHwBQkQ488ltSchW932jzm/qO55waS4D0Uvr4B
IT0EzgV53E5OEAgQ7ee9tNpGMQ2oHPLP+hlIS6tJX++JoTebGnWFHX6QHggoHWVRTMRo7Sfg4CmQ
49zMf3imfXBqWciaBoG9q+4bdWK7DlYvTJtgrYiIpvwhSoNX6q21DjLR5Y/cWGfIUlFVLkiktv4+
eRwzYAIcwU1KJvx6QXGW1N7U3ugnWUooQIDv82whYsuFtR2Xw93NFIRTO9ESHjMU/Z9i8QTF6/nC
SmahmwGxaTVoUuhuAluJuAfwTopF9xAzZUK1E7apiWaf5JjfH8clcqKxkNdE9HBqNw5ATlOIOpJr
aKZ40U9imqeJyy33GRYOgn4BIYidx3eBaneKhfrANhx7gBx519xWxesSY5a7gXvA5coLRd5wCxsx
ZuGeglebcmZ8SrNkB5Cul06CFbXyGKEL3xHjw3xuqDJBcYG/hiWHZrnI9ZSiVrx5d7suYhwiR885
hd/P94JBHPoheBuAOlCqOFYyjw+l4ldG3gjQwYQvt/PaVdRofp1PHxo+5iHpQuv4NbHrIdb1hyCg
wVevwq+rKOgFRlvDdicqQ94qv99NdZ64d/kGVT7UG5LmcbcceK+cYFE0QGcw2w4x9P91XcV7C9hp
/IUWPLtLBxi6jo0g0GkQb3hsCiiuWgNv4zteftSjENWmgTKzqRbsQAXQZuxlAmtAnpyFV03ih2Un
5wNuoNZMEn7Bx65xJd+YNbvInwJ3N10YkSMwG3AOHcmmST1hm5Dfk1OHCUPA5mxnsRAb3YCpftkB
GotIkS768eHCHiWIohH5uuzZYl4lP36vj/q6JQ5rm6I0lS3egW22Vt5+w0ORFn6CVaFT0gXoTHDK
2vMwSGY2GQk03gVgzwbkNOEqJTKKACT7fSXHAEBiAJvDifKO3WYYHDrSt71d1GEth1fjHOIVoS8i
U4vf3hZHU9oWpagHxAJdB8LZ+aaHo3cuWs83F4tnQN5F/WilXNDsinf5Pf4H5Que7BIBQTySVIi+
72WwRA55U4bWKivJJ7YKwqLNzmH9DlHo82GIPFIpKykhYwJuC3BD2siT5rybR5+vaym7wjylktiE
x4fvbOFAp+OXCgbyU4rFTi7lb+NZCtkBnSxpVMpmRGLKJtvKKgNsqpXy9392OLUXjV62PD6rms/D
8/zccrv/AOBwCXtNCeTEnEnrvMpKJEhfWVhd36/jyXLadLuhVPVGjGkiRUBiVm8iB+bcUV4Es6Sw
oRedcnbJTVS5NtCRM6HVh2hCAv3Qc0VxV5mm7McFZLL11aUYXxTXk8pNfBYrUEWMoBsQjuPIfP/7
dcOsuU8YMUp40zrbNcchV280VjFTuXAmxlHCgV4Ux7XKstYr35R9JTXO0dlWpFiVwaGR9KJOkz/s
tNAi4R7ITPUqT7GuB9f/Jv6YY4ZAHQlPVDFVHQ0puaJaATBiqUROafDZmisvZGDvp0cFRuHOc5jV
8HrgsL5tV+z59hwZ7lB7eu7LwmrVg7ZHUkYdo+6RwClGwpNcnPzgBqt77Y66//8JgZwY9uyQ08Bo
epwk8MqLo65xmXBEam0oGVFsygYcHpgik26fn7MLLm7vZqb/aIaq66wbJrsfx63Fg+yKO1sQXXwK
6UpGhluxis46VDJ0NCihLiXk+ShtkKYqz4CFUfR57a72ROM5ixXC2gMGA/7DUPjCIt4gZXD1POVE
H1KECKVMNlmYYPxVRVtWLqdZivS9HMDwu/D5zhBnvx+iKCofCtkEuoTaz7BQRTcKnO1P4t2CQ+/R
69fWohT1gBip2BjfvhMEbVk5TK6AXgp783Ze2Pt8ZE8oki/FxE8XMY1friRzY+gQPyAz5i7JOhOI
rngnHcRtC9yUdqDMpqt9K/3twRwq7HZu+j9ieVGOGMB4eedNxpfCsOn39U7+WwngIW2ghgT0dsKi
hOlbub1YEjvD17kwupFJtOaVTduwZy2qG7AUtANUIeYlHYFBsplK6n9kEjpn21vBCmuBS6LQDG69
QesqXjevn3CPm/VoUqZazhCbvlQxto6TH4sjbCHoPxTM0f7msU6MrIcQjqaEb9hKN6Qz1/WZlcT2
ePIf0fxs7nH7cq5y95Rt83qgQ5/j+rZVRaiXSP8f+fakFxRpM34lm7VMd2/fgsko5H8KJDPTDQ1w
gkkuhE15bxFLXBMbzqINnlxdLsU/e2MoZvgMceJ701SOrcbe7LoYcba3Oa/7c1eFvyqfzVrY+6N1
Y3bD+NiCZevCHzlQXLDrjb+fTXQ3zMb01G+TUjMh0CXHegXsdn8Q44BYmSyeasIFC5vtq1nsNg/S
kEOSpv3pPA9SPJVl8qvC75pkTAERt/fgrDq2VxmGm08yGfJ517sLkxz0Ro0OW5Akypo/6ucL3vHj
KCH1gBXAVCkU/0yX+w072h3E2Ih43rfMTvYF9zinHhIJ1a15zJxQAz2vj6sH22k1e3rAurg+NrGe
Ge/S51xd5q3rCzjAbqeZaJoJ5v5D4kiE1po3yIURvMh2jIOHbzdVDHOAoyq7gxiDI5VmSBHAIfxS
YY6N26EdCckCIfYcUy5XdKMHCnDsqGsKyUFwGKGCEPg6yHDFAPvK9/bt05PXs9iQvPws1dslLfmK
WoTXHmCxqTYAK6/P2jNJanht0ba1rymKAng2uUpFv25Cy+hCuLMnK+exTgGiz3vf281XTqX2gRIc
CYQqFwhaPm6t+lcNMKLdIVsUJ0p+n6z1NpH+4X3kKW8lqVoztts65Z75pUsbRhMqkfOF+7AFyx2f
iOgjcjrQSG3B65RRKo5GbX7noGSGI4B+cvHTVG8E0LBW1Y3BDo2PRt8GVjXoYr2teqlgOl7PEZZM
o9zvVBNx0km5MG7HsQmk/DtpSeKwXLwu6UyBmYcHYSV5oQ9C0d9K14Iz7ShM3r0f5RKyiqCkDGnK
OYB4NJ8L4oFeCZAHsVrEqOH1ap+HfjZGp0g+UIQn/VQMSH989l9h5v4AUlxdc+6FAs3vpHB066MQ
9E+5pXywMeu25EqAnSNi8xf7vhUYjJDzmCximB99y1FEQ/pc4rZAo7m556Q1YnVJAbnNPm91N2Op
3jJPLlX4tVbfD1FSEZtNUDBQccbFUIXHvGeLvbuZ1HMATAHJ+2is4+3cyKKi3RMhHyxeICDJxM+/
oJUIOaKrVVp+A+b+yyTWMaSXcOpjARLyofsmNhx4cQ9iuV0OEC1tvyI3+ftNWsEheKYOiXfR2Lel
n3BqwC6O2m8uY5oYhXMc+UqPB8yP+2CuRxn9oMDz9ooYVcqwDUD6U5u4FhAGnzQp5jR9FJi+vcor
q6lEB0ROyLojY/n1zKQCXP+WX1Helc05su2pS+k4yJx/ZlmdKKmJtqWRo2PPXLjuJLchf/l+gVIq
rTF0mYbM5kf1Mps7damzPSfrNAQVqUeOKLGKiNgswE6JXNDxbWvDoF6h6Uz7ArU2I2LyI898QksO
qkbSJ70+S9d+QQ5MOVzrJO2JBJzVhNju8r1/vHdjMSdarkkKcmoXHBJRWyWGPD9UXcvp3ZQ7S/rH
zuJb7CanAJygqwicv34/ps/RmQzduYPK0TuMs5oaF+jO4KGPORf0hnNcZrUaD8qHYyS2LjiTsmLW
BIk7VJnPbbWoDp6WbCBTLfdaclUQAHBrRKNobGqhreC0If/4JLXvVracyAWQ1dXQ5Pp6Fyki3zje
p1UZr2hAUaXXJzrMniSUGWOdz06zxs+9BKnTFWUWO8fFV5Xl6MclIAP0fDnTyjjAU0n8qQLRavc4
ffPGsh7N9Wcf7aoZ8KazV5h6xsBamBBmIv5xZTO3NUguLa6f2iJZhrEfzWw26Pz7Up/R5QjxHWse
dWjaJVzRxiTxxHiLVScP4aI3T38t60yRx37AGoNKHQlzwnms5uMmydULSjXgWLcwO/UqgwzJcoc+
79XmD3qcPmcmUY6ynKHAdmIvM2WkVIiYf/tC9eP/dPQXNP3DjDxX04N0dxrPEds+goX9M5UrMSx8
gCHyke9+gpdTfIM/QTKFxUPjeP3MU/LKzfKr9auNX3Mg8vQV6Y9yBy1A3ORLm6nui6zknbz1fgvq
lVZrF8TDXVJCsxUekTjsI3vD4vvI651GI7nAV7QOw9MsXFgaVdWrMzP0wf/LmdIDxrRRTIBfHUz0
OQEpnHsFBOhMCUO4MMK4kZrRtp1Y6pVH9loi0ZCluFN3hIuu3jQr1AprL+s5ph1LBWYSFhodJ5S0
f6OB69ynLvW/PaVGfnngv7fDuimO2LObnmyjj8uak5rrm55NC6mD7CVy3yaWlrSKnOGoMEyMfepM
uwm5fQ9bv8ITX7JK/+19RahIPa2MwPjmdKk2zyny/jKM3209f0jA4MLGI73K126Yi41nWsd4Vcos
SpsDpwo1ny/GvUaLFJIatpHsWkD1rA8BMqVThJlvczhPPWxcT/poSgX5vLY5MVaaq76Qe4gSYJlz
fBuN5yN3oTJrPwPTxctGULuGTA6O9fPfMd6taXS5aUH1m68K+hzh4LMsE0V9VeLUpalnCG5317YL
LeiHN2OzH6s1M0i94rzlD5O0XLEY2PgiPTvSBI700hZ5AfnL5UYFbhWKItDKPScBgbu/1ciuUC3b
gZJkrjPeq1v80RL9vJEm9kBuc4Nv+U854k1llBu3rxgd5h+gXP6bVOnkwxXTx+rv7B10dy570rc5
FnzdKan+vG9fk8DXyZIHARWF2v+zTsxdDqnhs8/qzdodHVgGeJnN0TeoNyxi2QWtR/rBjNJHo3l4
WVMUGjooVUAn0XhidoWFouLKHsqfY+HpfnuONgpHv8W7GRYEePhKtZYCpi02tpgU/e0gySc83EPf
r9o5i6RpKBQBQ78nFbWPNfqMDXRyqLbQYxhlFMyUZQ5uSmZIYtQoMCQd8lU9It6gwgHfLXJFYm+4
6yBZTQkDYz72HGTa8oZT7VJjdUBruTihWSNKtFmH+dehj6M5DUZpGMh+DXH565Hpc7D3nL2CrHwC
+fYSycxLboMJxUVG1GCjg56ZVMq+R49dlvsUfGweySCLMkVn5SfPaaElDVjyY1QN0MTCFz1wIPs+
lgEOwtdOQvZ5snLl7OP31Uy39xNzkVOPZV6GCk/2vjHSGheYSMKRiSyGAzfseed6XhUkgTvYMPsl
Wmnu0pExUP+es+nikoIpylD+cxkSYwyvMTrijOFgQ66zUN70BzVLyGnW4ImZu8TCFBMRgrT47P65
mL4KOEebRgCuWC67wFnH0nfWavGBCQfPjbV9kzoD70nkFzEmakbR/QEvebhkYlAHxsgGkHXkHfPf
U9xsWr4vOfyAkN2BM9XZnoRx2Wq+bS3A9X7TbduuDvQUxT6ihsIFq5IT0waUHUVcuyTi2yRdsbs3
kwuWB1Cm+BCuOx8rjx8n+/Neictx7rMw30oflZ6VtExFFXPN8tJcR6O71q/cxQxg11aDG1pqUTzh
Ib9grIaJnfGWQJcYSozpIIZ1D6arVsmYj3b1gw7Yts3lQesF4RIMUCs89Z9SLYHL8VL8Na6E6+yW
svUeJDMfvw708rU9XInBYkFSlcA+mmLM7853PxqwZkAvGZ0mOgxTmBBBBz8iTLNUo2w56p89JP5J
zcXMYBAAZQi4yPjYtySP+K1i1HBwCyNtD/db1wrcOGvfprVQbWaO91GLIgsJNUON2C7s/jqNJrwn
NU5NWGZRmoATa1mUENc9t2YXxPvai75iWuaeifmaYAOM7RbwzMJtV1HAybb+CPx9jqOWsA5wSFDb
i1WxgTOJVjojel/fkKyfrLQz4QCD+iowtftVawU5c3nApu59Y2U0/pmmSDbVdbji8wGcEmFOtM4M
iObM+HOIv2x9oKWMIlZocJl/LWE1s/MRS80cJHfEUwpxbqFLTsVqjiDr/r2ryV9Wx8wFCiMgD6/z
xnhnmalP2yJMdugkWK7pV5FEd1FmXSk3EOeCBJfFg0OvpCwOL+A6Vn0fnFBF8Go0E7mJIgi4hS5U
VtwMKg/p5sKj9+wAuBCLV+OFSBxRVX4nZ3pQKionAMIn/s446bIDqPpRmmRuBPvh5vVWQjtqnvM0
SkIpd0wH0ME0SSG5Sc0vs1LOBzSKIrb6L79h7yayNxFWBHORZE05WsWX42pZmqXv5FRqeSKsfKu5
EcQRjVBR00+MQHxWo4r1wkdYJicpDtfqZS4rsQvKz4XH2Pk/7vAoglcA7goONtcylt9QyZPmm+Ma
wJAxCtL3q+X9vovoQcln0pbdRsFv+rYYrJVhWJY1vJ5W0+psiPm91T5Oingfp/49Kbwif9ewnjt7
cIENrFG3uxRv3/Sjimb2Sazlg+GJ65TTHQhnfTNugxdoxXS1kvrpCHtULtNN5PbPwXavQyHFXU3K
YrWuBhjwxT2Law/Ruftf1dsROp2KFKaYYkZ+mxmz3Q15EXGFx/O2MAgjbLJwE6MI97rfbMak0pMW
M4ug2NfSI1PNQtYuaw9EHC9+CnHliUGRtAu/3LJRNJIIPPr//oEzAXeI7gDv0b4hTj71Alqr4C0O
i6efbtEHz9hScDJGTVIgldtywwyIjEe1wL95t67lFByy1+vG4cuXQ6Ymd5BeSZu/H4HqdvDetxQI
50InyB4NrkrVFFbaVSqGjPbAxGTn+664kCKLdtBM+CLVZ0iov03MOZX3FXmTKkmW5W5z93Jg7pWK
wAe48XAGlT3S2yfEpkfHuS1VstlCCg1Nc8aSzjHRBsczulVOQFSSUuY7NbbDn6Tm2S90kTaykSUe
OrrKlrEUTeHp3OhuCzTm1nUqfXGhhl0j9jpCWbaHuPDdqCHBOCScQOlavtSgKQHHMgw0xAPYYzt0
2KWiR/df2czUkM7oAOhYLWuhfY7yPwUGLGfwDl0xv+i8IU7XthTTyluyK6PGD/V5ZAjuN9LZu0wT
Oz15Lk+9b5riRrDverxWmFh7ti7R39dGndQocVf29Y1vGlG1Dq4OAQt8Iec7cFJspiz2yhkUhQYY
S6xhcWpA55WcEjiR0CBUChR2giYB0u/XiPMS6bSgU0cbUNUS6hLMXtssDTwYvzqiK/LbRD3BSfPX
Q3r4csnR1pNvgFXrhOf/FYE4+Uv/8e7iR5xl5A3ixQpIbmMnRcOVlMaEb/pkervxSY6lLZtlAPlu
/AF1QfVxqa2AQVepbeY1mZS0+d40tWyc8zQhjlQGQommt3HCfCep3/dlFhHU1s/EIVSt9ty+M1lp
uHhat6nh6LByEeGkpKQBotcQlVwE9aGlnQU9vnEfcJ3Ourc9mnnX+Jr/Bdg7mGGmWSsCfWfgXgcr
qwfxJePRhaxvVfTD38YEeRHFQOx6wdubXRmj1Qqu19sAU69CfkpYMObxGNkqivE3mLHtzy3zEOSu
Pm5YbjKlI4NDZ1+EHJ6Sjfp2PW7tJWGJOChtoBLerw9sNcYQ2tdlRv5ztm+u3ftWxzE7Vyy1Y8wg
fNJ9xJSLwg4TjZnFpdu/5Ekylvz8J4CRkCD/2G6++rUg4aRV2f0nyqZ3yUC0I7evLMJA0Qb/y2C2
cNUNaBA91/QjQlQ7+jU7Y4CkrSVk97m8kqFfqAQtT1PHgqoT2VKcZ1NzU7BhQkPqVbYmOp6iwSAC
F4S906XtOHR4dFgKSzH95aFM9dyglmW8pePDanyx25yJygO+MAONnc9qE+DpootshmgP83Wr2vJw
yYtoBGf42Xxsqrfb83z04LfrpKi6Z/Jvm0Y4xxNv19XLJtJzKdzswlKhAk0E5lf/feV+QdAltx9a
Eh4jvfECZxBr5GlIiGKcjHpmBvt5gewUuXc8AfcNO0UadZ1TEZFUM1RjwAohV/1LQkagGHbIQnQL
dZooGu5KitvABv9WZByo6Hc/of4/VB81zbMrwFPPodLZy3P019wWhEyLz98UMLjd7sxPR/UWucRI
bvgamzfutA6f+X+8EBIk8O4WzizaEoODHshJ20io7Z/1WFuyiKCZCnn+BJOyDhRsu4srDSGqdu3n
YuVGvz9NRrMV8TWUG00N0YsYQgSrO9LuHZo7PX2Tq36FwkrXzIaOz69dnANEKM42vrxebDCEq9JD
4yCs1HT8mIsja022jXL7y1MLLSk4s/lgNfo4yLoBWdf4NQLaf8fL5BlzBku/8eMM9XYgDhOlkLof
cwSZaqsNgigV76r/68D9zHBV5y3q3paxJ2QnYWuonvp/J/hzVoSxvgjCodTSyHKUbrETslEkJ0+C
N7ZMnJxc8TAuYbn09hRFIpSPgT8cQKvF/ibGz/a9hd6+LUWiTSrpRA4N9Lk9j/+fCTB/LYTJ2pA9
M/OP/tcjzss5HbXjKbqiTJFEIGEh2GvcYJ/7Pkmawi5alktvBkTc4hVCcbimEXze/WaVmrPE9zIx
1cPr5JfJG6vtXHL7PT9K//NVuI4qiJJsWfSKAexvy3A5y2J/6yUI/+Dm60OtTQA0LcL4sNhQ5o82
8NGgm4X+SeU7IL2Cc9ZbkKw62vNSe8q5sth+MxJV1uG/JYQHe3ZtfpT1AYit7yN+2YHhiRSKjJqp
ALPQfY93fG2pzhCbIArvBBbciBZjAo+3pNyGtp9GyB8gKlzkqDSZE+8CnNeEcGGYqHKPgsTtLv13
kNix75ddwyq9IfJbkmQmlWEm7tqKQ0GyL+xzLvDpEc79EounBLDE5kloBgvu8dwnPC8Yqu31UQeY
jDSRvLbBrPJIYVPgEHnWaEypDiAtz3Sen7c6bBTeREWHf2qNxMBRI2qR2n4czUxjHJJ1AKq2MNM+
2Fa+tiLQ+EfE+Rt0i2yOA+t99dDxvHHR8Pzh0E8qKnA4IDU80nJaf+PsYKRFLp3QG43UGNN/k8kQ
cec1Eae93ivU/HWQhsZ60Io9vvq7Q6vVKhUZJhTQwUgvU4InojybxxMPlbFakUKbe+Q+T40KpN4J
Sx/nqfMM7Y5o+jPWctSaOuz1TFHeTkC4bv9w9WkZgm+geT0udGU6p2qqXjSbZtfcpSjmID5TsRLh
M5ui0vc2P9VOxFCh7+XqHa/JrKwuzRzxrSIB175LOyADquFyqgOcWYchM0zFR5AKMLtC1y0Y9ZSY
+huSHS9mDoSGVpbNS8sxJjbsxKLlbMvwTuAis/FfHQMeCeoilhO3RroiZRyxauHRZ5Ml394/K6md
wqSh2O8xx9x2vuKetWvaJw/wPxuaBQlMBaxDwiYS7ybYnh5B3PLsErQ1ZwHUtOy5YKcnQbSWpnnu
qh0Wpll1q2WF6Z48m1KtG/DNlCwXOSqYskJkkQcI1W15icCX9zanB/7od5Albq+gLTPdGMdIYp92
3p8zSaLI8MMOqKmdddvYcu1d8QI/dvg5y1EZTrbn4mpAbfdNw4VTQ+ko//LbktEJOEbVbmVowk9e
eYHhzl6d6XV5vDrPwNNqdZ5nGTGOCRpRDiXexrcBm/on33Ln+RVeweC4FdldbsBi2vFehjc9akMy
+4cdy+26EFhpMgIGKNr+tkhyTghPMM7o39lWuExU3PU37uhjqRizEK6R0znkY9okEVD3BccpDzO4
BvQbD+Du4mD4bLx50B1lk7nig9CCOVtLaT0gT28hSdSdJLqOafg5U6Wsz6ewwrV9kuFrG7Eu7+pl
XI+yUA4uVwYKu+dBEV9UebsFwWeXeQDzXXBHLFsliSnd/TzbXLFOCQP8aayzaiBi1JYi3IFxcuYS
dvdTRMt/+1Jv6DfWrPqXYbauHdQWqR1MiQzx3ZW1Oejub/a0dpKIq7bslFCI0i8/HWlpuj5neWsU
Z958DqdunuqeDOpTEDKlIXTGV41+sS3Ur+VbLxgybFrF/NRBor23NNuyajUvH7Rb/6S6zEJHG3VS
B6ChVydttCOnDHlb1T+MSVsTxU1PxhkI0XWCQDq3Ip3BeRZpAbsRWc0vwK+93OIOBLbNioM1eXhM
sFElC3c7OcvMOIAKANVVgvt4XT7Asc3plSGLtv/XR8ZtWhAlTwHn4Hm0AHEjEdXaXcW3Imac4vvv
Zkr2/Uxlk5Md6qKlQUTZFaCeUbYQ7fS3eiYbSklb3TDhB1gz2RnRMYJEUjC1Nan8HZx9qi3bmR81
fK4ybLDrUsybar7D2RqvxsBsMN+h2j346CklKnJ2SL7rhCnIv3nic5eFbgCd/kvl60FgrvNlyFQi
61ku380XTTO6k8dLfF03jsn29FkvzQtIOvSconHK9Z+o5pdGNA+JvEhVO0/l0iPvuKrqFbwib96K
6jkCTxqzVGrpiGr3P9q9Pj89JAcT2TU5HMpoP38JkTmhhoT7iI3hyk40FPAnKmZ4nx1x+fHH2kq6
7OfA6VnkilHqXMBEmFJ7+usLdSpnj1tIOOs8G/Hz3LheAKRzMs+Ve8amxgd7hYfUNGwf1sqYlH9j
hidZjm9VdU1CM6Y+ZKi7AnJavNeRkg3xc0iiRDGFWAs4KjvoSET/Vy46v/Kc9uzDbiS7rYPiBJ4a
jXrmblYcABVfRd1E7ojnW0yQNnILfwFQM5F9RyRf7qRe0AzP+5Wj7NRWiSOVAU8hv/XHgH6HntPq
YmUcXhjkFsoyPewxMWH8k75QMQhmA25U2cFDVD2E+DVOxtLCWER5frCFDygAyzDeQF43LhYeVXa3
jgYbxWQ+tcoQ2NEcDNkrNiL+9b7xOf46EN9aQ9OlKdqNrWyb/AQWtUHfhUw5xscE1tK8deGnc1Zl
B5A8r1/jfANCDlLAbsZ+ogDTkbIEg8BybIBCzWKyatJfrFLZuAtNJ0gGEeX38fQxGqHj1ac2XiBa
O2J0zYdruXR7Ai/YKtIupm8dkYW2PHb4d0pWRA9NTTVZYgbT7722slaUZU7oXOr2v3FZXLFbU/YD
JEeA6sqKin8xMzmDhyA5XuuDMn1uMwxrivureKCthKmjXiWB0uMnEcvU95LsMFhSWRfMtkT3eJ64
AkHphpfV+4zfoETa7esXVLia5aUxVjW0rAuqqhC5wJeot/NY6+kTykaLuBcElBD189YEaxCqIEr0
gIvglbiZ6foTYyYpcarwquiuqNuYqQTxfPFjf3YVjsDJzRpcMKUIkYTBJ6J82ptgIhMTCqjaAe3A
dC0n5oV7JRXDq0b47v8cKBOCZ19ndXX0RzvkibcGqEtpptmKR8/+BWrcNa7UTFZ2t/pEre9Ih9ql
ENvYpV/qIceMNCd0CCAZkjWta0BLguYwjVQIMDIxS7CgtCGO60T4FHg0Y7CnE/gSptDMLOmQ7O+m
Wlx52yQuhU8vPPXRe+g+M46dUyq+zfxwg65Sqm1BPj/n4Lmfyr49K8EpGP2ylEnkcU5yDAMEIuMs
exn0FwLp7BQrx67M1BYlkRYcJK3tLv0L0ejGq6jphIc5p77r+4xjW8CKCCUcipf7QmmoQSeEr4gH
e4ZXGEGgBkChmP/NHFQCYiFJYEtJXEU64eku5L02/sZ+e08FJDjafA7GY7r8z4PnRUwvfrZmEs9E
QQmSzCSaIdbAKH/eIpUSl1HDoAOUOK0XaJeSFAAoYotpAeOro/sZGFGXlz2Y1mnO+fRFOLRKiuYP
f/7YkP1dNqahaATRqLCqA5AjpITT0xOXdd2sTqYHRYsjeFIiS46kstLwR0DFMbx6Wq40Z3f8Kxoq
lTFJne6gfy/ghmvz5c+++x9BpNANpzFjGChFUCg3P1ckjqL8qcwIaBd5CBmNjiVTJ4iQG+IVRDYM
K+NneE2SCDJX7+eD+sdn88KDdr11Ibojxh5ch/5aGRLm1phXZ/ZZC+SG8lvxrszO2+ixPY4v9qd6
El6CRNgHkO6ny5OQhGunFaksX/dUa1WrelTWEfghuY1RqoZZ6Z7UO4ptbQ1Wc8tLIPJoMp7mi1zo
lGSEST7nAuJPi+RQVaUy/UsLIdpm3svfGnd3mSfjo8/eUvQ2n9DsfoZwyBkPz0n19gHISLG4ulAY
fCGFEHRWBbQwPimP4v2x4I2gnVePEkVPTPr0l7N42VOuUS10wZYATjtS17TA6FnCOJLihVuL+9PE
F+0Nahy8NkVQFimFOwwhttvjEkbKTBSCt9FJBxpQHf4qyj65quOPLY8E52Fmjlmcp3gdWMuUx3mW
p5rqzG0q2JvuWdOXFSi/CyQpuagXn3DMKpGAtll1NgETVpL75IlSMsMuD4aryAxFJq1b2BhAUtMX
RhxSCOnTc3ERfihJy6+pscmCp966fdIVaJSqPo7EtR3KWjBLAnlG26yjBZTqG+HaXGW65zPL9b1y
2MWfar14YJVMasKKfzuO+Ch2FA/2n87m6BJdmNXCojrnnHxp+gmwixbBBDXscHneT18oZgAkuXkA
CzxF/w/uz9wEQnWQp87QI33G+I8FaUK+VjhDwP449eR80tX6KNghTKXgVNwuOKlr9MzxfXYfZz9K
b0HIOpVXPm+a0012nrD3ZbYgE4teE0OkqK1jQpGi8FnVRV/yajKdxSM3u034BQHvZ9bNh5C983ZD
8B/ZgFhzzIwZCi+4jK7krGGkkI1QaDGh+uh34w3eHwgsnV5OPDP/RCK2QbSKCvbQvv/7L/FuJ8X0
oVWRm4cewHNbZoBxw/HLQhTmDbZiQBZjY1//49tVoLECUw0h6lpAAO8OfHKk+1BCqEhGEwh66xK7
afYFJ6JIS30HJtO4NEIxuVY5TV0sapGWHBb6F3jlq7imL0UABv8ytvDYTlYyeW3gL5DEHNV0Vj6A
/BqdLZ2DiOCJj9YmH9DWRKDPGssxzpRAAA3v7tS+blh6q1vKq4yscDeM7mRNzQYh80M/znUgxb3d
QhbntEXE7kc3d9pnepHcYFWC0hMJFzhDfquJR9aIjmv05v60UBmp0YHe18q0DDkuUTOUV+ccfIgO
LsD9DYDNUd1YayGGXG4HIhG0AKbXP0t3BF7MdNeocM7EuNNfYBnP4dCwMhTX8iBfMQcxI0vYI68b
LRqPtYqm7WDxquF53N0PiCZJ2dX+Ig==
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
