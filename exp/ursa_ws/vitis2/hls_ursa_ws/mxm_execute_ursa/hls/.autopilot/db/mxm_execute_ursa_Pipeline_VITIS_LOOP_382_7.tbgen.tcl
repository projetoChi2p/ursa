set moduleName mxm_execute_ursa_Pipeline_VITIS_LOOP_382_7
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
set C_modelName {mxm_execute_ursa_Pipeline_VITIS_LOOP_382_7}
set C_modelType { void 0 }
set C_modelArgList {
	{ ca int 32 regular {axi_master 1}  }
	{ cmp124_7 int 1 regular  }
	{ cmp124_6 int 1 regular  }
	{ cmp124_5 int 1 regular  }
	{ cmp124_4 int 1 regular  }
	{ cmp124_3 int 1 regular  }
	{ cmp124_2 int 1 regular  }
	{ cmp124_1 int 1 regular  }
	{ c_tile_acc int 32 regular {array 64 { 1 1 } 1 1 }  }
	{ empty int 13 regular  }
	{ a0_p int 16 regular  }
	{ zext_ln309 int 16 regular  }
	{ cmp124 int 1 regular  }
	{ base_col_B_cast int 16 regular  }
	{ addr_c0 int 64 regular  }
	{ zext_ln391 int 16 regular  }
	{ zext_ln391_1 int 16 regular  }
	{ zext_ln391_2 int 16 regular  }
	{ zext_ln391_3 int 16 regular  }
	{ zext_ln391_4 int 16 regular  }
	{ zext_ln391_5 int 16 regular  }
	{ zext_ln382 int 16 regular  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "ca", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "addr_c0","offset": { "type": "dynamic","port_name": "addr_c0","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "cmp124_7", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp124_6", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp124_5", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp124_4", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp124_3", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp124_2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp124_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "c_tile_acc", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "a0_p", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln309", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "cmp124", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "base_col_B_cast", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "addr_c0", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln391", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln391_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln391_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln391_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln391_4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln391_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln382", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 78
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_ca_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ca_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ca_AWADDR sc_out sc_lv 64 signal 0 } 
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
	{ m_axi_ca_ARADDR sc_out sc_lv 64 signal 0 } 
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
	{ cmp124_7 sc_in sc_lv 1 signal 1 } 
	{ cmp124_6 sc_in sc_lv 1 signal 2 } 
	{ cmp124_5 sc_in sc_lv 1 signal 3 } 
	{ cmp124_4 sc_in sc_lv 1 signal 4 } 
	{ cmp124_3 sc_in sc_lv 1 signal 5 } 
	{ cmp124_2 sc_in sc_lv 1 signal 6 } 
	{ cmp124_1 sc_in sc_lv 1 signal 7 } 
	{ c_tile_acc_address0 sc_out sc_lv 6 signal 8 } 
	{ c_tile_acc_ce0 sc_out sc_logic 1 signal 8 } 
	{ c_tile_acc_q0 sc_in sc_lv 32 signal 8 } 
	{ c_tile_acc_address1 sc_out sc_lv 6 signal 8 } 
	{ c_tile_acc_ce1 sc_out sc_logic 1 signal 8 } 
	{ c_tile_acc_q1 sc_in sc_lv 32 signal 8 } 
	{ empty sc_in sc_lv 13 signal 9 } 
	{ a0_p sc_in sc_lv 16 signal 10 } 
	{ zext_ln309 sc_in sc_lv 16 signal 11 } 
	{ cmp124 sc_in sc_lv 1 signal 12 } 
	{ base_col_B_cast sc_in sc_lv 16 signal 13 } 
	{ addr_c0 sc_in sc_lv 64 signal 14 } 
	{ zext_ln391 sc_in sc_lv 16 signal 15 } 
	{ zext_ln391_1 sc_in sc_lv 16 signal 16 } 
	{ zext_ln391_2 sc_in sc_lv 16 signal 17 } 
	{ zext_ln391_3 sc_in sc_lv 16 signal 18 } 
	{ zext_ln391_4 sc_in sc_lv 16 signal 19 } 
	{ zext_ln391_5 sc_in sc_lv 16 signal 20 } 
	{ zext_ln382 sc_in sc_lv 16 signal 21 } 
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
 	{ "name": "m_axi_ca_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ca", "role": "AWADDR" }} , 
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
 	{ "name": "m_axi_ca_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ca", "role": "ARADDR" }} , 
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
 	{ "name": "cmp124_7", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp124_7", "role": "default" }} , 
 	{ "name": "cmp124_6", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp124_6", "role": "default" }} , 
 	{ "name": "cmp124_5", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp124_5", "role": "default" }} , 
 	{ "name": "cmp124_4", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp124_4", "role": "default" }} , 
 	{ "name": "cmp124_3", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp124_3", "role": "default" }} , 
 	{ "name": "cmp124_2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp124_2", "role": "default" }} , 
 	{ "name": "cmp124_1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp124_1", "role": "default" }} , 
 	{ "name": "c_tile_acc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "c_tile_acc", "role": "address0" }} , 
 	{ "name": "c_tile_acc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_tile_acc", "role": "ce0" }} , 
 	{ "name": "c_tile_acc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_tile_acc", "role": "q0" }} , 
 	{ "name": "c_tile_acc_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "c_tile_acc", "role": "address1" }} , 
 	{ "name": "c_tile_acc_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_tile_acc", "role": "ce1" }} , 
 	{ "name": "c_tile_acc_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_tile_acc", "role": "q1" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "a0_p", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a0_p", "role": "default" }} , 
 	{ "name": "zext_ln309", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln309", "role": "default" }} , 
 	{ "name": "cmp124", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp124", "role": "default" }} , 
 	{ "name": "base_col_B_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "base_col_B_cast", "role": "default" }} , 
 	{ "name": "addr_c0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "addr_c0", "role": "default" }} , 
 	{ "name": "zext_ln391", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln391", "role": "default" }} , 
 	{ "name": "zext_ln391_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln391_1", "role": "default" }} , 
 	{ "name": "zext_ln391_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln391_2", "role": "default" }} , 
 	{ "name": "zext_ln391_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln391_3", "role": "default" }} , 
 	{ "name": "zext_ln391_4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln391_4", "role": "default" }} , 
 	{ "name": "zext_ln391_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln391_5", "role": "default" }} , 
 	{ "name": "zext_ln382", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln382", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "mxm_execute_ursa_Pipeline_VITIS_LOOP_382_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "73", "EstimateLatencyMax" : "73",
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
					{"Name" : "ca_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "ca_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "ca_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "cmp124_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp124_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp124_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp124_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp124_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp124_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp124_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_tile_acc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "a0_p", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln309", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp124", "Type" : "None", "Direction" : "I"},
			{"Name" : "base_col_B_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr_c0", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln391", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln391_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln391_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln391_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln391_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln391_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln382", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_382_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage7", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage7_subdone", "QuitState" : "ap_ST_fsm_pp0_stage7", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage7_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16ns_16ns_32_1_1_U566", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mxm_execute_ursa_Pipeline_VITIS_LOOP_382_7 {
		ca {Type O LastRead 11 FirstWrite 3}
		cmp124_7 {Type I LastRead 0 FirstWrite -1}
		cmp124_6 {Type I LastRead 0 FirstWrite -1}
		cmp124_5 {Type I LastRead 0 FirstWrite -1}
		cmp124_4 {Type I LastRead 0 FirstWrite -1}
		cmp124_3 {Type I LastRead 0 FirstWrite -1}
		cmp124_2 {Type I LastRead 0 FirstWrite -1}
		cmp124_1 {Type I LastRead 0 FirstWrite -1}
		c_tile_acc {Type I LastRead 4 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		a0_p {Type I LastRead 0 FirstWrite -1}
		zext_ln309 {Type I LastRead 0 FirstWrite -1}
		cmp124 {Type I LastRead 0 FirstWrite -1}
		base_col_B_cast {Type I LastRead 0 FirstWrite -1}
		addr_c0 {Type I LastRead 0 FirstWrite -1}
		zext_ln391 {Type I LastRead 0 FirstWrite -1}
		zext_ln391_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln391_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln391_3 {Type I LastRead 0 FirstWrite -1}
		zext_ln391_4 {Type I LastRead 0 FirstWrite -1}
		zext_ln391_5 {Type I LastRead 0 FirstWrite -1}
		zext_ln382 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "73", "Max" : "73"}
	, {"Name" : "Interval", "Min" : "73", "Max" : "73"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_ca_AWVALID VALID 1 1 }  { m_axi_ca_AWREADY READY 0 1 }  { m_axi_ca_AWADDR ADDR 1 64 }  { m_axi_ca_AWID ID 1 1 }  { m_axi_ca_AWLEN SIZE 1 32 }  { m_axi_ca_AWSIZE BURST 1 3 }  { m_axi_ca_AWBURST LOCK 1 2 }  { m_axi_ca_AWLOCK CACHE 1 2 }  { m_axi_ca_AWCACHE PROT 1 4 }  { m_axi_ca_AWPROT QOS 1 3 }  { m_axi_ca_AWQOS REGION 1 4 }  { m_axi_ca_AWREGION USER 1 4 }  { m_axi_ca_AWUSER DATA 1 1 }  { m_axi_ca_WVALID VALID 1 1 }  { m_axi_ca_WREADY READY 0 1 }  { m_axi_ca_WDATA FIFONUM 1 32 }  { m_axi_ca_WSTRB STRB 1 4 }  { m_axi_ca_WLAST LAST 1 1 }  { m_axi_ca_WID ID 1 1 }  { m_axi_ca_WUSER DATA 1 1 }  { m_axi_ca_ARVALID VALID 1 1 }  { m_axi_ca_ARREADY READY 0 1 }  { m_axi_ca_ARADDR ADDR 1 64 }  { m_axi_ca_ARID ID 1 1 }  { m_axi_ca_ARLEN SIZE 1 32 }  { m_axi_ca_ARSIZE BURST 1 3 }  { m_axi_ca_ARBURST LOCK 1 2 }  { m_axi_ca_ARLOCK CACHE 1 2 }  { m_axi_ca_ARCACHE PROT 1 4 }  { m_axi_ca_ARPROT QOS 1 3 }  { m_axi_ca_ARQOS REGION 1 4 }  { m_axi_ca_ARREGION USER 1 4 }  { m_axi_ca_ARUSER DATA 1 1 }  { m_axi_ca_RVALID VALID 0 1 }  { m_axi_ca_RREADY READY 1 1 }  { m_axi_ca_RDATA FIFONUM 0 32 }  { m_axi_ca_RLAST LAST 0 1 }  { m_axi_ca_RID ID 0 1 }  { m_axi_ca_RFIFONUM LEN 0 10 }  { m_axi_ca_RUSER DATA 0 1 }  { m_axi_ca_RRESP RESP 0 2 }  { m_axi_ca_BVALID VALID 0 1 }  { m_axi_ca_BREADY READY 1 1 }  { m_axi_ca_BRESP RESP 0 2 }  { m_axi_ca_BID ID 0 1 }  { m_axi_ca_BUSER DATA 0 1 } } }
	cmp124_7 { ap_none {  { cmp124_7 in_data 0 1 } } }
	cmp124_6 { ap_none {  { cmp124_6 in_data 0 1 } } }
	cmp124_5 { ap_none {  { cmp124_5 in_data 0 1 } } }
	cmp124_4 { ap_none {  { cmp124_4 in_data 0 1 } } }
	cmp124_3 { ap_none {  { cmp124_3 in_data 0 1 } } }
	cmp124_2 { ap_none {  { cmp124_2 in_data 0 1 } } }
	cmp124_1 { ap_none {  { cmp124_1 in_data 0 1 } } }
	c_tile_acc { ap_memory {  { c_tile_acc_address0 mem_address 1 6 }  { c_tile_acc_ce0 mem_ce 1 1 }  { c_tile_acc_q0 mem_dout 0 32 }  { c_tile_acc_address1 MemPortADDR2 1 6 }  { c_tile_acc_ce1 MemPortCE2 1 1 }  { c_tile_acc_q1 MemPortDOUT2 0 32 } } }
	empty { ap_none {  { empty in_data 0 13 } } }
	a0_p { ap_none {  { a0_p in_data 0 16 } } }
	zext_ln309 { ap_none {  { zext_ln309 in_data 0 16 } } }
	cmp124 { ap_none {  { cmp124 in_data 0 1 } } }
	base_col_B_cast { ap_none {  { base_col_B_cast in_data 0 16 } } }
	addr_c0 { ap_none {  { addr_c0 in_data 0 64 } } }
	zext_ln391 { ap_none {  { zext_ln391 in_data 0 16 } } }
	zext_ln391_1 { ap_none {  { zext_ln391_1 in_data 0 16 } } }
	zext_ln391_2 { ap_none {  { zext_ln391_2 in_data 0 16 } } }
	zext_ln391_3 { ap_none {  { zext_ln391_3 in_data 0 16 } } }
	zext_ln391_4 { ap_none {  { zext_ln391_4 in_data 0 16 } } }
	zext_ln391_5 { ap_none {  { zext_ln391_5 in_data 0 16 } } }
	zext_ln382 { ap_none {  { zext_ln382 in_data 0 16 } } }
}
