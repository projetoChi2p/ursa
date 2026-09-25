set moduleName mxm_execute_ursa_Pipeline_LOAD_A
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
set C_modelName {mxm_execute_ursa_Pipeline_LOAD_A}
set C_modelType { void 0 }
set C_modelArgList {
	{ aw int 32 regular {axi_master 0}  }
	{ stride_a int 17 regular  }
	{ sub_i44_cast int 15 regular  }
	{ sext_ln106 int 30 regular  }
	{ a_buf_3 int 32 regular {array 64 { 0 3 } 0 1 }  }
	{ a_buf_2 int 32 regular {array 64 { 0 3 } 0 1 }  }
	{ a_buf_1 int 32 regular {array 64 { 0 3 } 0 1 }  }
	{ a_buf int 32 regular {array 64 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "aw", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "addr_a0","offset": { "type": "dynamic","port_name": "addr_a0","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "stride_a", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "sub_i44_cast", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln106", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "a_buf_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_buf_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_buf_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 71
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_aw_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_aw_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_aw_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_aw_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_aw_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_aw_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_aw_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_aw_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_aw_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_aw_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_aw_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_aw_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_aw_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_aw_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_aw_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_aw_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_aw_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_aw_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_aw_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_aw_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_aw_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_aw_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_aw_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_aw_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_aw_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_aw_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_aw_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_aw_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_aw_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_aw_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_aw_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_aw_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_aw_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_aw_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_aw_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_aw_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_aw_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_aw_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_aw_RFIFONUM sc_in sc_lv 10 signal 0 } 
	{ m_axi_aw_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_aw_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_aw_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_aw_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_aw_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_aw_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_aw_BUSER sc_in sc_lv 1 signal 0 } 
	{ stride_a sc_in sc_lv 17 signal 1 } 
	{ sub_i44_cast sc_in sc_lv 15 signal 2 } 
	{ sext_ln106 sc_in sc_lv 30 signal 3 } 
	{ a_buf_3_address0 sc_out sc_lv 6 signal 4 } 
	{ a_buf_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ a_buf_3_we0 sc_out sc_logic 1 signal 4 } 
	{ a_buf_3_d0 sc_out sc_lv 32 signal 4 } 
	{ a_buf_2_address0 sc_out sc_lv 6 signal 5 } 
	{ a_buf_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ a_buf_2_we0 sc_out sc_logic 1 signal 5 } 
	{ a_buf_2_d0 sc_out sc_lv 32 signal 5 } 
	{ a_buf_1_address0 sc_out sc_lv 6 signal 6 } 
	{ a_buf_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ a_buf_1_we0 sc_out sc_logic 1 signal 6 } 
	{ a_buf_1_d0 sc_out sc_lv 32 signal 6 } 
	{ a_buf_address0 sc_out sc_lv 6 signal 7 } 
	{ a_buf_ce0 sc_out sc_logic 1 signal 7 } 
	{ a_buf_we0 sc_out sc_logic 1 signal 7 } 
	{ a_buf_d0 sc_out sc_lv 32 signal 7 } 
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
 	{ "name": "m_axi_aw_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aw", "role": "WDATA" }} , 
 	{ "name": "m_axi_aw_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aw", "role": "WSTRB" }} , 
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
 	{ "name": "m_axi_aw_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aw", "role": "RDATA" }} , 
 	{ "name": "m_axi_aw_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "RLAST" }} , 
 	{ "name": "m_axi_aw_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "RID" }} , 
 	{ "name": "m_axi_aw_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "aw", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_aw_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "RUSER" }} , 
 	{ "name": "m_axi_aw_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aw", "role": "RRESP" }} , 
 	{ "name": "m_axi_aw_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "BVALID" }} , 
 	{ "name": "m_axi_aw_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "BREADY" }} , 
 	{ "name": "m_axi_aw_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aw", "role": "BRESP" }} , 
 	{ "name": "m_axi_aw_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "BID" }} , 
 	{ "name": "m_axi_aw_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "BUSER" }} , 
 	{ "name": "stride_a", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "stride_a", "role": "default" }} , 
 	{ "name": "sub_i44_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "sub_i44_cast", "role": "default" }} , 
 	{ "name": "sext_ln106", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "sext_ln106", "role": "default" }} , 
 	{ "name": "a_buf_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "a_buf_3", "role": "address0" }} , 
 	{ "name": "a_buf_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_buf_3", "role": "ce0" }} , 
 	{ "name": "a_buf_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_buf_3", "role": "we0" }} , 
 	{ "name": "a_buf_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_buf_3", "role": "d0" }} , 
 	{ "name": "a_buf_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "a_buf_2", "role": "address0" }} , 
 	{ "name": "a_buf_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_buf_2", "role": "ce0" }} , 
 	{ "name": "a_buf_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_buf_2", "role": "we0" }} , 
 	{ "name": "a_buf_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_buf_2", "role": "d0" }} , 
 	{ "name": "a_buf_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "a_buf_1", "role": "address0" }} , 
 	{ "name": "a_buf_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_buf_1", "role": "ce0" }} , 
 	{ "name": "a_buf_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_buf_1", "role": "we0" }} , 
 	{ "name": "a_buf_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_buf_1", "role": "d0" }} , 
 	{ "name": "a_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "a_buf", "role": "address0" }} , 
 	{ "name": "a_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_buf", "role": "ce0" }} , 
 	{ "name": "a_buf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_buf", "role": "we0" }} , 
 	{ "name": "a_buf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_buf", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "mxm_execute_ursa_Pipeline_LOAD_A",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "39", "EstimateLatencyMax" : "147",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aw", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aw_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "stride_a", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_i44_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln106", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buf_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_buf_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_buf_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_buf", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "LOAD_A", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mxm_execute_ursa_Pipeline_LOAD_A {
		aw {Type I LastRead 1 FirstWrite -1}
		stride_a {Type I LastRead 0 FirstWrite -1}
		sub_i44_cast {Type I LastRead 0 FirstWrite -1}
		sext_ln106 {Type I LastRead 0 FirstWrite -1}
		a_buf_3 {Type O LastRead -1 FirstWrite 2}
		a_buf_2 {Type O LastRead -1 FirstWrite 2}
		a_buf_1 {Type O LastRead -1 FirstWrite 2}
		a_buf {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "39", "Max" : "147"}
	, {"Name" : "Interval", "Min" : "39", "Max" : "147"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_aw_AWVALID VALID 1 1 }  { m_axi_aw_AWREADY READY 0 1 }  { m_axi_aw_AWADDR ADDR 1 32 }  { m_axi_aw_AWID ID 1 1 }  { m_axi_aw_AWLEN SIZE 1 32 }  { m_axi_aw_AWSIZE BURST 1 3 }  { m_axi_aw_AWBURST LOCK 1 2 }  { m_axi_aw_AWLOCK CACHE 1 2 }  { m_axi_aw_AWCACHE PROT 1 4 }  { m_axi_aw_AWPROT QOS 1 3 }  { m_axi_aw_AWQOS REGION 1 4 }  { m_axi_aw_AWREGION USER 1 4 }  { m_axi_aw_AWUSER DATA 1 1 }  { m_axi_aw_WVALID VALID 1 1 }  { m_axi_aw_WREADY READY 0 1 }  { m_axi_aw_WDATA FIFONUM 1 32 }  { m_axi_aw_WSTRB STRB 1 4 }  { m_axi_aw_WLAST LAST 1 1 }  { m_axi_aw_WID ID 1 1 }  { m_axi_aw_WUSER DATA 1 1 }  { m_axi_aw_ARVALID VALID 1 1 }  { m_axi_aw_ARREADY READY 0 1 }  { m_axi_aw_ARADDR ADDR 1 32 }  { m_axi_aw_ARID ID 1 1 }  { m_axi_aw_ARLEN SIZE 1 32 }  { m_axi_aw_ARSIZE BURST 1 3 }  { m_axi_aw_ARBURST LOCK 1 2 }  { m_axi_aw_ARLOCK CACHE 1 2 }  { m_axi_aw_ARCACHE PROT 1 4 }  { m_axi_aw_ARPROT QOS 1 3 }  { m_axi_aw_ARQOS REGION 1 4 }  { m_axi_aw_ARREGION USER 1 4 }  { m_axi_aw_ARUSER DATA 1 1 }  { m_axi_aw_RVALID VALID 0 1 }  { m_axi_aw_RREADY READY 1 1 }  { m_axi_aw_RDATA FIFONUM 0 32 }  { m_axi_aw_RLAST LAST 0 1 }  { m_axi_aw_RID ID 0 1 }  { m_axi_aw_RFIFONUM LEN 0 10 }  { m_axi_aw_RUSER DATA 0 1 }  { m_axi_aw_RRESP RESP 0 2 }  { m_axi_aw_BVALID VALID 0 1 }  { m_axi_aw_BREADY READY 1 1 }  { m_axi_aw_BRESP RESP 0 2 }  { m_axi_aw_BID ID 0 1 }  { m_axi_aw_BUSER DATA 0 1 } } }
	stride_a { ap_none {  { stride_a in_data 0 17 } } }
	sub_i44_cast { ap_none {  { sub_i44_cast in_data 0 15 } } }
	sext_ln106 { ap_none {  { sext_ln106 in_data 0 30 } } }
	a_buf_3 { ap_memory {  { a_buf_3_address0 mem_address 1 6 }  { a_buf_3_ce0 mem_ce 1 1 }  { a_buf_3_we0 mem_we 1 1 }  { a_buf_3_d0 mem_din 1 32 } } }
	a_buf_2 { ap_memory {  { a_buf_2_address0 mem_address 1 6 }  { a_buf_2_ce0 mem_ce 1 1 }  { a_buf_2_we0 mem_we 1 1 }  { a_buf_2_d0 mem_din 1 32 } } }
	a_buf_1 { ap_memory {  { a_buf_1_address0 mem_address 1 6 }  { a_buf_1_ce0 mem_ce 1 1 }  { a_buf_1_we0 mem_we 1 1 }  { a_buf_1_d0 mem_din 1 32 } } }
	a_buf { ap_memory {  { a_buf_address0 mem_address 1 6 }  { a_buf_ce0 mem_ce 1 1 }  { a_buf_we0 mem_we 1 1 }  { a_buf_d0 mem_din 1 32 } } }
}
