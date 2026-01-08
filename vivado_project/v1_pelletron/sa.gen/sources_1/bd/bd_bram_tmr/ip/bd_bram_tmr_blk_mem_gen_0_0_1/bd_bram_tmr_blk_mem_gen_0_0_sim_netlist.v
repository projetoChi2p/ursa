// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Sun May 11 11:41:18 2025
// Host        : ulisses-thinkpad running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/ulisses/Projects/nn-apsoc-sa/exp_studies/ulisses/sa_stationary_results/vivado/sa_v1/sa.gen/sources_1/bd/bd_bram_tmr/ip/bd_bram_tmr_blk_mem_gen_0_0_1/bd_bram_tmr_blk_mem_gen_0_0_sim_netlist.v
// Design      : bd_bram_tmr_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_bram_tmr_blk_mem_gen_0_0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module bd_bram_tmr_blk_mem_gen_0_0
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
  bd_bram_tmr_blk_mem_gen_0_0_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33744)
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
