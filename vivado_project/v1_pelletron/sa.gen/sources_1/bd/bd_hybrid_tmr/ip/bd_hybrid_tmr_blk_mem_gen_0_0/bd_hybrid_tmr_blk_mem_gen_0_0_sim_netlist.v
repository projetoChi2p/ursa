// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Tue May 13 14:24:06 2025
// Host        : ulisses-thinkpad running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/ulisses/Projects/nn-apsoc-sa/exp_studies/ulisses/sa_stationary_results/vivado/sa_v1/sa.gen/sources_1/bd/bd_hybrid_tmr/ip/bd_hybrid_tmr_blk_mem_gen_0_0/bd_hybrid_tmr_blk_mem_gen_0_0_sim_netlist.v
// Design      : bd_hybrid_tmr_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_hybrid_tmr_blk_mem_gen_0_0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module bd_hybrid_tmr_blk_mem_gen_0_0
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
  bd_hybrid_tmr_blk_mem_gen_0_0_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33776)
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
