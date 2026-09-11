set moduleName mxm_execute_ursa_Pipeline_STREAM_K
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {mxm_execute_ursa_Pipeline_STREAM_K}
set C_modelType { void 0 }
set C_modelArgList {
	{ bi int 8 regular {axi_master 0}  }
	{ aw int 8 regular {axi_master 0}  }
	{ sub22 int 17 regular  }
	{ zext_ln129 int 16 regular  }
	{ zext_ln132 int 16 regular  }
	{ m int 16 regular  }
	{ select_ln138_1 int 32 regular  }
	{ addr_a0 int 32 regular  }
	{ zext_ln132_1 int 17 regular  }
	{ zext_ln51 int 16 regular  }
	{ addr_b0 int 32 regular  }
	{ select_ln135 int 16 regular  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3 int 20 regular {pointer 2} {global 2}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2 int 20 regular {pointer 2} {global 2}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1 int 20 regular {pointer 2} {global 2}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i int 20 regular {pointer 2} {global 2}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "bi", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "addr_b0","offset": { "type": "dynamic","port_name": "addr_b0","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "aw", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "addr_a0","offset": { "type": "dynamic","port_name": "addr_a0","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sub22", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln129", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln132", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "m", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln138_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "addr_a0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln132_1", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln51", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "addr_b0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln135", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3", "interface" : "wire", "bitwidth" : 20, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2", "interface" : "wire", "bitwidth" : 20, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1", "interface" : "wire", "bitwidth" : 20, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i", "interface" : "wire", "bitwidth" : 20, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 120
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_aw_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_aw_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_aw_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_aw_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_aw_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_aw_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_aw_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_aw_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_aw_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_aw_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_aw_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_aw_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_aw_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_aw_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_aw_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_aw_WDATA sc_out sc_lv 8 signal 1 } 
	{ m_axi_aw_WSTRB sc_out sc_lv 1 signal 1 } 
	{ m_axi_aw_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_aw_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_aw_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_aw_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_aw_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_aw_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_aw_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_aw_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_aw_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_aw_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_aw_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_aw_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_aw_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_aw_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_aw_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_aw_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_aw_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_aw_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_aw_RDATA sc_in sc_lv 8 signal 1 } 
	{ m_axi_aw_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_aw_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_aw_RFIFONUM sc_in sc_lv 12 signal 1 } 
	{ m_axi_aw_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_aw_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_aw_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_aw_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_aw_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_aw_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_aw_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_bi_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_bi_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_bi_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_bi_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_bi_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_bi_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_bi_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_bi_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_bi_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_bi_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_bi_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_bi_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_bi_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_bi_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_bi_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_bi_WDATA sc_out sc_lv 8 signal 0 } 
	{ m_axi_bi_WSTRB sc_out sc_lv 1 signal 0 } 
	{ m_axi_bi_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_bi_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_bi_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_bi_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_bi_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_bi_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_bi_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_bi_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_bi_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_bi_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_bi_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_bi_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_bi_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_bi_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_bi_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_bi_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_bi_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_bi_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_bi_RDATA sc_in sc_lv 8 signal 0 } 
	{ m_axi_bi_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_bi_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_bi_RFIFONUM sc_in sc_lv 12 signal 0 } 
	{ m_axi_bi_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_bi_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_bi_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_bi_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_bi_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_bi_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_bi_BUSER sc_in sc_lv 1 signal 0 } 
	{ sub22 sc_in sc_lv 17 signal 2 } 
	{ zext_ln129 sc_in sc_lv 16 signal 3 } 
	{ zext_ln132 sc_in sc_lv 16 signal 4 } 
	{ m sc_in sc_lv 16 signal 5 } 
	{ select_ln138_1 sc_in sc_lv 32 signal 6 } 
	{ addr_a0 sc_in sc_lv 32 signal 7 } 
	{ zext_ln132_1 sc_in sc_lv 17 signal 8 } 
	{ zext_ln51 sc_in sc_lv 16 signal 9 } 
	{ addr_b0 sc_in sc_lv 32 signal 10 } 
	{ select_ln135 sc_in sc_lv 16 signal 11 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3_i sc_in sc_lv 20 signal 12 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3_o sc_out sc_lv 20 signal 12 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3_o_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2_i sc_in sc_lv 20 signal 13 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2_o sc_out sc_lv 20 signal 13 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2_o_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1_i sc_in sc_lv 20 signal 14 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1_o sc_out sc_lv 20 signal 14 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1_o_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_i sc_in sc_lv 20 signal 15 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_o sc_out sc_lv 20 signal 15 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_o_ap_vld sc_out sc_logic 1 outvld 15 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_aw_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "AWVALID" }} , 
 	{ "name": "m_axi_aw_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "AWREADY" }} , 
 	{ "name": "m_axi_aw_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aw", "role": "AWADDR" }} , 
 	{ "name": "m_axi_aw_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "AWID" }} , 
 	{ "name": "m_axi_aw_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aw", "role": "AWLEN" }} , 
 	{ "name": "m_axi_aw_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aw", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_aw_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aw", "role": "AWBURST" }} , 
 	{ "name": "m_axi_aw_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aw", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_aw_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aw", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_aw_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aw", "role": "AWPROT" }} , 
 	{ "name": "m_axi_aw_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aw", "role": "AWQOS" }} , 
 	{ "name": "m_axi_aw_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aw", "role": "AWREGION" }} , 
 	{ "name": "m_axi_aw_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "AWUSER" }} , 
 	{ "name": "m_axi_aw_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "WVALID" }} , 
 	{ "name": "m_axi_aw_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "WREADY" }} , 
 	{ "name": "m_axi_aw_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "aw", "role": "WDATA" }} , 
 	{ "name": "m_axi_aw_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "WSTRB" }} , 
 	{ "name": "m_axi_aw_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "WLAST" }} , 
 	{ "name": "m_axi_aw_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "WID" }} , 
 	{ "name": "m_axi_aw_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "WUSER" }} , 
 	{ "name": "m_axi_aw_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "ARVALID" }} , 
 	{ "name": "m_axi_aw_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "ARREADY" }} , 
 	{ "name": "m_axi_aw_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aw", "role": "ARADDR" }} , 
 	{ "name": "m_axi_aw_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "ARID" }} , 
 	{ "name": "m_axi_aw_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aw", "role": "ARLEN" }} , 
 	{ "name": "m_axi_aw_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aw", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_aw_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aw", "role": "ARBURST" }} , 
 	{ "name": "m_axi_aw_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aw", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_aw_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aw", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_aw_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aw", "role": "ARPROT" }} , 
 	{ "name": "m_axi_aw_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aw", "role": "ARQOS" }} , 
 	{ "name": "m_axi_aw_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aw", "role": "ARREGION" }} , 
 	{ "name": "m_axi_aw_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "ARUSER" }} , 
 	{ "name": "m_axi_aw_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "RVALID" }} , 
 	{ "name": "m_axi_aw_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "RREADY" }} , 
 	{ "name": "m_axi_aw_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "aw", "role": "RDATA" }} , 
 	{ "name": "m_axi_aw_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "RLAST" }} , 
 	{ "name": "m_axi_aw_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "RID" }} , 
 	{ "name": "m_axi_aw_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "aw", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_aw_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "RUSER" }} , 
 	{ "name": "m_axi_aw_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aw", "role": "RRESP" }} , 
 	{ "name": "m_axi_aw_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "BVALID" }} , 
 	{ "name": "m_axi_aw_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "BREADY" }} , 
 	{ "name": "m_axi_aw_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aw", "role": "BRESP" }} , 
 	{ "name": "m_axi_aw_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "BID" }} , 
 	{ "name": "m_axi_aw_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "BUSER" }} , 
 	{ "name": "m_axi_bi_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bi_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bi_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bi", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bi_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "AWID" }} , 
 	{ "name": "m_axi_bi_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bi", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bi_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bi", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bi_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bi", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bi_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bi", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bi_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bi", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bi_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bi", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bi_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bi", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bi_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bi", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bi_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bi_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "WVALID" }} , 
 	{ "name": "m_axi_bi_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "WREADY" }} , 
 	{ "name": "m_axi_bi_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bi", "role": "WDATA" }} , 
 	{ "name": "m_axi_bi_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bi_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "WLAST" }} , 
 	{ "name": "m_axi_bi_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "WID" }} , 
 	{ "name": "m_axi_bi_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "WUSER" }} , 
 	{ "name": "m_axi_bi_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bi_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bi_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bi", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bi_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "ARID" }} , 
 	{ "name": "m_axi_bi_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bi", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bi_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bi", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bi_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bi", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bi_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bi", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bi_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bi", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bi_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bi", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bi_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bi", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bi_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bi", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bi_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bi_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "RVALID" }} , 
 	{ "name": "m_axi_bi_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "RREADY" }} , 
 	{ "name": "m_axi_bi_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bi", "role": "RDATA" }} , 
 	{ "name": "m_axi_bi_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "RLAST" }} , 
 	{ "name": "m_axi_bi_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "RID" }} , 
 	{ "name": "m_axi_bi_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "bi", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_bi_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "RUSER" }} , 
 	{ "name": "m_axi_bi_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bi", "role": "RRESP" }} , 
 	{ "name": "m_axi_bi_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "BVALID" }} , 
 	{ "name": "m_axi_bi_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "BREADY" }} , 
 	{ "name": "m_axi_bi_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bi", "role": "BRESP" }} , 
 	{ "name": "m_axi_bi_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "BID" }} , 
 	{ "name": "m_axi_bi_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "BUSER" }} , 
 	{ "name": "sub22", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "sub22", "role": "default" }} , 
 	{ "name": "zext_ln129", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln129", "role": "default" }} , 
 	{ "name": "zext_ln132", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln132", "role": "default" }} , 
 	{ "name": "m", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "m", "role": "default" }} , 
 	{ "name": "select_ln138_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln138_1", "role": "default" }} , 
 	{ "name": "addr_a0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr_a0", "role": "default" }} , 
 	{ "name": "zext_ln132_1", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "zext_ln132_1", "role": "default" }} , 
 	{ "name": "zext_ln51", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln51", "role": "default" }} , 
 	{ "name": "addr_b0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr_b0", "role": "default" }} , 
 	{ "name": "select_ln135", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "select_ln135", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3_i", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3", "role": "i" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3_o", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3", "role": "o" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3", "role": "o_ap_vld" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2", "role": "i" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2_o", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2", "role": "o" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2", "role": "o_ap_vld" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1", "role": "i" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1", "role": "o" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1", "role": "o_ap_vld" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_i", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i", "role": "i" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_o", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i", "role": "o" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "mxm_execute_ursa_Pipeline_STREAM_K",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "131090",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bi", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bi_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "bi_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "aw", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aw_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "aw_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sub22", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln129", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln132", "Type" : "None", "Direction" : "I"},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln138_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr_a0", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln132_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln51", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr_b0", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln135", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "STREAM_K", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_17s_16ns_32_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_17s_16ns_32_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8s_20s_20_4_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8s_20s_20_4_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8s_20s_20_4_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8ns_20s_20_4_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mxm_execute_ursa_Pipeline_STREAM_K {
		bi {Type I LastRead 12 FirstWrite -1}
		aw {Type I LastRead 10 FirstWrite -1}
		sub22 {Type I LastRead 0 FirstWrite -1}
		zext_ln129 {Type I LastRead 0 FirstWrite -1}
		zext_ln132 {Type I LastRead 0 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		select_ln138_1 {Type I LastRead 0 FirstWrite -1}
		addr_a0 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln51 {Type I LastRead 0 FirstWrite -1}
		addr_b0 {Type I LastRead 0 FirstWrite -1}
		select_ln135 {Type I LastRead 0 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_5 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_4 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3 {Type IO LastRead 14 FirstWrite 15}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2 {Type IO LastRead 15 FirstWrite 16}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1 {Type IO LastRead 13 FirstWrite 14}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i {Type IO LastRead 14 FirstWrite 15}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "20", "Max" : "131090"}
	, {"Name" : "Interval", "Min" : "20", "Max" : "131090"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_bi_AWVALID VALID 1 1 }  { m_axi_bi_AWREADY READY 0 1 }  { m_axi_bi_AWADDR ADDR 1 32 }  { m_axi_bi_AWID ID 1 1 }  { m_axi_bi_AWLEN SIZE 1 32 }  { m_axi_bi_AWSIZE BURST 1 3 }  { m_axi_bi_AWBURST LOCK 1 2 }  { m_axi_bi_AWLOCK CACHE 1 2 }  { m_axi_bi_AWCACHE PROT 1 4 }  { m_axi_bi_AWPROT QOS 1 3 }  { m_axi_bi_AWQOS REGION 1 4 }  { m_axi_bi_AWREGION USER 1 4 }  { m_axi_bi_AWUSER DATA 1 1 }  { m_axi_bi_WVALID VALID 1 1 }  { m_axi_bi_WREADY READY 0 1 }  { m_axi_bi_WDATA FIFONUM 1 8 }  { m_axi_bi_WSTRB STRB 1 1 }  { m_axi_bi_WLAST LAST 1 1 }  { m_axi_bi_WID ID 1 1 }  { m_axi_bi_WUSER DATA 1 1 }  { m_axi_bi_ARVALID VALID 1 1 }  { m_axi_bi_ARREADY READY 0 1 }  { m_axi_bi_ARADDR ADDR 1 32 }  { m_axi_bi_ARID ID 1 1 }  { m_axi_bi_ARLEN SIZE 1 32 }  { m_axi_bi_ARSIZE BURST 1 3 }  { m_axi_bi_ARBURST LOCK 1 2 }  { m_axi_bi_ARLOCK CACHE 1 2 }  { m_axi_bi_ARCACHE PROT 1 4 }  { m_axi_bi_ARPROT QOS 1 3 }  { m_axi_bi_ARQOS REGION 1 4 }  { m_axi_bi_ARREGION USER 1 4 }  { m_axi_bi_ARUSER DATA 1 1 }  { m_axi_bi_RVALID VALID 0 1 }  { m_axi_bi_RREADY READY 1 1 }  { m_axi_bi_RDATA FIFONUM 0 8 }  { m_axi_bi_RLAST LAST 0 1 }  { m_axi_bi_RID ID 0 1 }  { m_axi_bi_RFIFONUM LEN 0 12 }  { m_axi_bi_RUSER DATA 0 1 }  { m_axi_bi_RRESP RESP 0 2 }  { m_axi_bi_BVALID VALID 0 1 }  { m_axi_bi_BREADY READY 1 1 }  { m_axi_bi_BRESP RESP 0 2 }  { m_axi_bi_BID ID 0 1 }  { m_axi_bi_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_aw_AWVALID VALID 1 1 }  { m_axi_aw_AWREADY READY 0 1 }  { m_axi_aw_AWADDR ADDR 1 32 }  { m_axi_aw_AWID ID 1 1 }  { m_axi_aw_AWLEN SIZE 1 32 }  { m_axi_aw_AWSIZE BURST 1 3 }  { m_axi_aw_AWBURST LOCK 1 2 }  { m_axi_aw_AWLOCK CACHE 1 2 }  { m_axi_aw_AWCACHE PROT 1 4 }  { m_axi_aw_AWPROT QOS 1 3 }  { m_axi_aw_AWQOS REGION 1 4 }  { m_axi_aw_AWREGION USER 1 4 }  { m_axi_aw_AWUSER DATA 1 1 }  { m_axi_aw_WVALID VALID 1 1 }  { m_axi_aw_WREADY READY 0 1 }  { m_axi_aw_WDATA FIFONUM 1 8 }  { m_axi_aw_WSTRB STRB 1 1 }  { m_axi_aw_WLAST LAST 1 1 }  { m_axi_aw_WID ID 1 1 }  { m_axi_aw_WUSER DATA 1 1 }  { m_axi_aw_ARVALID VALID 1 1 }  { m_axi_aw_ARREADY READY 0 1 }  { m_axi_aw_ARADDR ADDR 1 32 }  { m_axi_aw_ARID ID 1 1 }  { m_axi_aw_ARLEN SIZE 1 32 }  { m_axi_aw_ARSIZE BURST 1 3 }  { m_axi_aw_ARBURST LOCK 1 2 }  { m_axi_aw_ARLOCK CACHE 1 2 }  { m_axi_aw_ARCACHE PROT 1 4 }  { m_axi_aw_ARPROT QOS 1 3 }  { m_axi_aw_ARQOS REGION 1 4 }  { m_axi_aw_ARREGION USER 1 4 }  { m_axi_aw_ARUSER DATA 1 1 }  { m_axi_aw_RVALID VALID 0 1 }  { m_axi_aw_RREADY READY 1 1 }  { m_axi_aw_RDATA FIFONUM 0 8 }  { m_axi_aw_RLAST LAST 0 1 }  { m_axi_aw_RID ID 0 1 }  { m_axi_aw_RFIFONUM LEN 0 12 }  { m_axi_aw_RUSER DATA 0 1 }  { m_axi_aw_RRESP RESP 0 2 }  { m_axi_aw_BVALID VALID 0 1 }  { m_axi_aw_BREADY READY 1 1 }  { m_axi_aw_BRESP RESP 0 2 }  { m_axi_aw_BID ID 0 1 }  { m_axi_aw_BUSER DATA 0 1 } } }
	sub22 { ap_none {  { sub22 in_data 0 17 } } }
	zext_ln129 { ap_none {  { zext_ln129 in_data 0 16 } } }
	zext_ln132 { ap_none {  { zext_ln132 in_data 0 16 } } }
	m { ap_none {  { m in_data 0 16 } } }
	select_ln138_1 { ap_none {  { select_ln138_1 in_data 0 32 } } }
	addr_a0 { ap_none {  { addr_a0 in_data 0 32 } } }
	zext_ln132_1 { ap_none {  { zext_ln132_1 in_data 0 17 } } }
	zext_ln51 { ap_none {  { zext_ln51 in_data 0 16 } } }
	addr_b0 { ap_none {  { addr_b0 in_data 0 32 } } }
	select_ln135 { ap_none {  { select_ln135 in_data 0 16 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3 { ap_ovld {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3_i in_data 0 20 }  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3_o out_data 1 20 }  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3_o_ap_vld out_vld 1 1 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2 { ap_ovld {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2_i in_data 0 20 }  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2_o out_data 1 20 }  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2_o_ap_vld out_vld 1 1 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1 { ap_ovld {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1_i in_data 0 20 }  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1_o out_data 1 20 }  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1_o_ap_vld out_vld 1 1 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i { ap_ovld {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_i in_data 0 20 }  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_o out_data 1 20 }  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_o_ap_vld out_vld 1 1 } } }
}
