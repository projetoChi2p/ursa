set moduleName sa_store
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {sa_store}
set C_modelType { void 0 }
set C_modelArgList {
	{ ca int 32 regular {axi_master 1}  }
	{ out_r int 32 regular  }
	{ b0_q uint 16 regular  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21 int 20 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20 int 20 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19 int 20 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18 int 20 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17 int 20 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16 int 20 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15 int 20 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14 int 20 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13 int 20 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12 int 20 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11 int 20 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10 int 20 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9 int 20 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8 int 20 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7 int 20 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6 int 20 regular {pointer 0} {global 0}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "ca", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "addr_c0","offset": { "type": "dynamic","port_name": "addr_c0","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "out_r", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b0_q", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 73
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_ca_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ca_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ca_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_ca_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_ca_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_ca_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_ca_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_ca_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_ca_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_ca_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_ca_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_ca_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_ca_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_ca_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ca_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ca_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_ca_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_ca_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_ca_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_ca_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_ca_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ca_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ca_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_ca_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_ca_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_ca_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_ca_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_ca_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_ca_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_ca_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_ca_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_ca_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_ca_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_ca_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_ca_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_ca_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_ca_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_ca_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_ca_RFIFONUM sc_in sc_lv 10 signal 0 } 
	{ m_axi_ca_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_ca_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_ca_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_ca_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_ca_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_ca_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_ca_BUSER sc_in sc_lv 1 signal 0 } 
	{ out_r sc_in sc_lv 32 signal 1 } 
	{ b0_q sc_in sc_lv 16 signal 2 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21 sc_in sc_lv 20 signal 3 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20 sc_in sc_lv 20 signal 4 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19 sc_in sc_lv 20 signal 5 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18 sc_in sc_lv 20 signal 6 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17 sc_in sc_lv 20 signal 7 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16 sc_in sc_lv 20 signal 8 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15 sc_in sc_lv 20 signal 9 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14 sc_in sc_lv 20 signal 10 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13 sc_in sc_lv 20 signal 11 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12 sc_in sc_lv 20 signal 12 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11 sc_in sc_lv 20 signal 13 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10 sc_in sc_lv 20 signal 14 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9 sc_in sc_lv 20 signal 15 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8 sc_in sc_lv 20 signal 16 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7 sc_in sc_lv 20 signal 17 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6 sc_in sc_lv 20 signal 18 } 
	{ ca_blk_n_AW sc_out sc_logic 1 signal -1 } 
	{ ca_blk_n_W sc_out sc_logic 1 signal -1 } 
	{ ca_blk_n_B sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_ca_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "AWVALID" }} , 
 	{ "name": "m_axi_ca_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "AWREADY" }} , 
 	{ "name": "m_axi_ca_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ca", "role": "AWADDR" }} , 
 	{ "name": "m_axi_ca_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "AWID" }} , 
 	{ "name": "m_axi_ca_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ca", "role": "AWLEN" }} , 
 	{ "name": "m_axi_ca_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ca", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_ca_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ca", "role": "AWBURST" }} , 
 	{ "name": "m_axi_ca_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ca", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_ca_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ca", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_ca_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ca", "role": "AWPROT" }} , 
 	{ "name": "m_axi_ca_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ca", "role": "AWQOS" }} , 
 	{ "name": "m_axi_ca_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ca", "role": "AWREGION" }} , 
 	{ "name": "m_axi_ca_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "AWUSER" }} , 
 	{ "name": "m_axi_ca_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "WVALID" }} , 
 	{ "name": "m_axi_ca_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "WREADY" }} , 
 	{ "name": "m_axi_ca_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ca", "role": "WDATA" }} , 
 	{ "name": "m_axi_ca_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ca", "role": "WSTRB" }} , 
 	{ "name": "m_axi_ca_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "WLAST" }} , 
 	{ "name": "m_axi_ca_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "WID" }} , 
 	{ "name": "m_axi_ca_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "WUSER" }} , 
 	{ "name": "m_axi_ca_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "ARVALID" }} , 
 	{ "name": "m_axi_ca_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "ARREADY" }} , 
 	{ "name": "m_axi_ca_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ca", "role": "ARADDR" }} , 
 	{ "name": "m_axi_ca_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "ARID" }} , 
 	{ "name": "m_axi_ca_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ca", "role": "ARLEN" }} , 
 	{ "name": "m_axi_ca_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ca", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_ca_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ca", "role": "ARBURST" }} , 
 	{ "name": "m_axi_ca_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ca", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_ca_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ca", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_ca_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ca", "role": "ARPROT" }} , 
 	{ "name": "m_axi_ca_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ca", "role": "ARQOS" }} , 
 	{ "name": "m_axi_ca_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ca", "role": "ARREGION" }} , 
 	{ "name": "m_axi_ca_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "ARUSER" }} , 
 	{ "name": "m_axi_ca_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "RVALID" }} , 
 	{ "name": "m_axi_ca_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "RREADY" }} , 
 	{ "name": "m_axi_ca_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ca", "role": "RDATA" }} , 
 	{ "name": "m_axi_ca_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "RLAST" }} , 
 	{ "name": "m_axi_ca_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "RID" }} , 
 	{ "name": "m_axi_ca_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ca", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_ca_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "RUSER" }} , 
 	{ "name": "m_axi_ca_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ca", "role": "RRESP" }} , 
 	{ "name": "m_axi_ca_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "BVALID" }} , 
 	{ "name": "m_axi_ca_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "BREADY" }} , 
 	{ "name": "m_axi_ca_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ca", "role": "BRESP" }} , 
 	{ "name": "m_axi_ca_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "BID" }} , 
 	{ "name": "m_axi_ca_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "BUSER" }} , 
 	{ "name": "out_r", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "default" }} , 
 	{ "name": "b0_q", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b0_q", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6", "role": "default" }} , 
 	{ "name": "ca_blk_n_AW", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ca_blk_n_AW", "role": "default" }} , 
 	{ "name": "ca_blk_n_W", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ca_blk_n_W", "role": "default" }} , 
 	{ "name": "ca_blk_n_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ca_blk_n_B", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "sa_store",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "16",
		"VariableLatency" : "0", "ExactLatency" : "21", "EstimateLatencyMin" : "21", "EstimateLatencyMax" : "21",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ca", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ca_blk_n_AW", "Type" : "RtlPort"},
					{"Name" : "ca_blk_n_W", "Type" : "RtlPort"},
					{"Name" : "ca_blk_n_B", "Type" : "RtlPort"}]},
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "b0_q", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	sa_store {
		ca {Type O LastRead 17 FirstWrite 1}
		out_r {Type I LastRead 0 FirstWrite -1}
		b0_q {Type I LastRead 3 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21 {Type I LastRead 1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20 {Type I LastRead 2 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19 {Type I LastRead 3 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18 {Type I LastRead 4 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17 {Type I LastRead 5 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16 {Type I LastRead 6 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15 {Type I LastRead 7 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14 {Type I LastRead 8 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13 {Type I LastRead 9 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12 {Type I LastRead 10 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11 {Type I LastRead 11 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10 {Type I LastRead 12 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9 {Type I LastRead 13 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8 {Type I LastRead 14 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7 {Type I LastRead 15 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6 {Type I LastRead 16 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "21", "Max" : "21"}
	, {"Name" : "Interval", "Min" : "16", "Max" : "16"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_ca_AWVALID VALID 1 1 }  { m_axi_ca_AWREADY READY 0 1 }  { m_axi_ca_AWADDR ADDR 1 32 }  { m_axi_ca_AWID ID 1 1 }  { m_axi_ca_AWLEN SIZE 1 32 }  { m_axi_ca_AWSIZE BURST 1 3 }  { m_axi_ca_AWBURST LOCK 1 2 }  { m_axi_ca_AWLOCK CACHE 1 2 }  { m_axi_ca_AWCACHE PROT 1 4 }  { m_axi_ca_AWPROT QOS 1 3 }  { m_axi_ca_AWQOS REGION 1 4 }  { m_axi_ca_AWREGION USER 1 4 }  { m_axi_ca_AWUSER DATA 1 1 }  { m_axi_ca_WVALID VALID 1 1 }  { m_axi_ca_WREADY READY 0 1 }  { m_axi_ca_WDATA FIFONUM 1 32 }  { m_axi_ca_WSTRB STRB 1 4 }  { m_axi_ca_WLAST LAST 1 1 }  { m_axi_ca_WID ID 1 1 }  { m_axi_ca_WUSER DATA 1 1 }  { m_axi_ca_ARVALID VALID 1 1 }  { m_axi_ca_ARREADY READY 0 1 }  { m_axi_ca_ARADDR ADDR 1 32 }  { m_axi_ca_ARID ID 1 1 }  { m_axi_ca_ARLEN SIZE 1 32 }  { m_axi_ca_ARSIZE BURST 1 3 }  { m_axi_ca_ARBURST LOCK 1 2 }  { m_axi_ca_ARLOCK CACHE 1 2 }  { m_axi_ca_ARCACHE PROT 1 4 }  { m_axi_ca_ARPROT QOS 1 3 }  { m_axi_ca_ARQOS REGION 1 4 }  { m_axi_ca_ARREGION USER 1 4 }  { m_axi_ca_ARUSER DATA 1 1 }  { m_axi_ca_RVALID VALID 0 1 }  { m_axi_ca_RREADY READY 1 1 }  { m_axi_ca_RDATA FIFONUM 0 32 }  { m_axi_ca_RLAST LAST 0 1 }  { m_axi_ca_RID ID 0 1 }  { m_axi_ca_RFIFONUM LEN 0 10 }  { m_axi_ca_RUSER DATA 0 1 }  { m_axi_ca_RRESP RESP 0 2 }  { m_axi_ca_BVALID VALID 0 1 }  { m_axi_ca_BREADY READY 1 1 }  { m_axi_ca_BRESP RESP 0 2 }  { m_axi_ca_BID ID 0 1 }  { m_axi_ca_BUSER DATA 0 1 } } }
	out_r { ap_none {  { out_r in_data 0 32 } } }
	b0_q { ap_none {  { b0_q in_data 0 16 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21 in_data 0 20 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20 in_data 0 20 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19 in_data 0 20 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18 in_data 0 20 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17 in_data 0 20 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16 in_data 0 20 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15 in_data 0 20 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14 in_data 0 20 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13 in_data 0 20 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12 in_data 0 20 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11 in_data 0 20 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10 in_data 0 20 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9 in_data 0 20 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8 in_data 0 20 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7 in_data 0 20 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6 in_data 0 20 } } }
}
