set moduleName mxm_execute_ursa_Pipeline_LOAD_B
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
set C_modelName {mxm_execute_ursa_Pipeline_LOAD_B}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln213 int 14 regular  }
	{ bi int 32 regular {axi_master 0}  }
	{ select_ln123 int 16 regular  }
	{ b_buf_3 int 8 regular {array 256 { 0 3 } 0 1 }  }
	{ b_buf_2 int 8 regular {array 256 { 0 3 } 0 1 }  }
	{ b_buf_1 int 8 regular {array 256 { 0 3 } 0 1 }  }
	{ b_buf int 8 regular {array 256 { 0 3 } 0 1 }  }
	{ addr_b0 int 32 regular  }
	{ zext_ln195 int 14 regular  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln213", "interface" : "wire", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "bi", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "addr_b0","offset": { "type": "dynamic","port_name": "addr_b0","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "select_ln123", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_buf_3", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_buf_2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_buf_1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_buf", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "addr_b0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln195", "interface" : "wire", "bitwidth" : 14, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 72
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_bi_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bi_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bi_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_bi_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bi_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_bi_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_bi_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_bi_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_bi_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_bi_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_bi_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_bi_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_bi_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bi_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bi_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bi_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_bi_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_bi_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_bi_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bi_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bi_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bi_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bi_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_bi_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bi_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_bi_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_bi_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_bi_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_bi_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_bi_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_bi_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_bi_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_bi_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bi_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_bi_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_bi_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_bi_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_bi_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_bi_RFIFONUM sc_in sc_lv 10 signal 1 } 
	{ m_axi_bi_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_bi_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_bi_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_bi_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_bi_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_bi_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_bi_BUSER sc_in sc_lv 1 signal 1 } 
	{ zext_ln213 sc_in sc_lv 14 signal 0 } 
	{ select_ln123 sc_in sc_lv 16 signal 2 } 
	{ b_buf_3_address0 sc_out sc_lv 8 signal 3 } 
	{ b_buf_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ b_buf_3_we0 sc_out sc_logic 1 signal 3 } 
	{ b_buf_3_d0 sc_out sc_lv 8 signal 3 } 
	{ b_buf_2_address0 sc_out sc_lv 8 signal 4 } 
	{ b_buf_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ b_buf_2_we0 sc_out sc_logic 1 signal 4 } 
	{ b_buf_2_d0 sc_out sc_lv 8 signal 4 } 
	{ b_buf_1_address0 sc_out sc_lv 8 signal 5 } 
	{ b_buf_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ b_buf_1_we0 sc_out sc_logic 1 signal 5 } 
	{ b_buf_1_d0 sc_out sc_lv 8 signal 5 } 
	{ b_buf_address0 sc_out sc_lv 8 signal 6 } 
	{ b_buf_ce0 sc_out sc_logic 1 signal 6 } 
	{ b_buf_we0 sc_out sc_logic 1 signal 6 } 
	{ b_buf_d0 sc_out sc_lv 8 signal 6 } 
	{ addr_b0 sc_in sc_lv 32 signal 7 } 
	{ zext_ln195 sc_in sc_lv 14 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "m_axi_bi_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bi", "role": "WDATA" }} , 
 	{ "name": "m_axi_bi_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bi", "role": "WSTRB" }} , 
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
 	{ "name": "m_axi_bi_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bi", "role": "RDATA" }} , 
 	{ "name": "m_axi_bi_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "RLAST" }} , 
 	{ "name": "m_axi_bi_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "RID" }} , 
 	{ "name": "m_axi_bi_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bi", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_bi_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "RUSER" }} , 
 	{ "name": "m_axi_bi_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bi", "role": "RRESP" }} , 
 	{ "name": "m_axi_bi_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "BVALID" }} , 
 	{ "name": "m_axi_bi_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "BREADY" }} , 
 	{ "name": "m_axi_bi_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bi", "role": "BRESP" }} , 
 	{ "name": "m_axi_bi_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "BID" }} , 
 	{ "name": "m_axi_bi_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "BUSER" }} , 
 	{ "name": "zext_ln213", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "zext_ln213", "role": "default" }} , 
 	{ "name": "select_ln123", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "select_ln123", "role": "default" }} , 
 	{ "name": "b_buf_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_buf_3", "role": "address0" }} , 
 	{ "name": "b_buf_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buf_3", "role": "ce0" }} , 
 	{ "name": "b_buf_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buf_3", "role": "we0" }} , 
 	{ "name": "b_buf_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_buf_3", "role": "d0" }} , 
 	{ "name": "b_buf_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_buf_2", "role": "address0" }} , 
 	{ "name": "b_buf_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buf_2", "role": "ce0" }} , 
 	{ "name": "b_buf_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buf_2", "role": "we0" }} , 
 	{ "name": "b_buf_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_buf_2", "role": "d0" }} , 
 	{ "name": "b_buf_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_buf_1", "role": "address0" }} , 
 	{ "name": "b_buf_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buf_1", "role": "ce0" }} , 
 	{ "name": "b_buf_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buf_1", "role": "we0" }} , 
 	{ "name": "b_buf_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_buf_1", "role": "d0" }} , 
 	{ "name": "b_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_buf", "role": "address0" }} , 
 	{ "name": "b_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buf", "role": "ce0" }} , 
 	{ "name": "b_buf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buf", "role": "we0" }} , 
 	{ "name": "b_buf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_buf", "role": "d0" }} , 
 	{ "name": "addr_b0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr_b0", "role": "default" }} , 
 	{ "name": "zext_ln195", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "zext_ln195", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "mxm_execute_ursa_Pipeline_LOAD_B",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "47", "EstimateLatencyMax" : "155",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln213", "Type" : "None", "Direction" : "I"},
			{"Name" : "bi", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bi_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "bi_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "select_ln123", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_buf_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b_buf_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b_buf_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b_buf", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "addr_b0", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln195", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "LOAD_B", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter11", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter11", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mxm_execute_ursa_Pipeline_LOAD_B {
		zext_ln213 {Type I LastRead 0 FirstWrite -1}
		bi {Type I LastRead 10 FirstWrite -1}
		select_ln123 {Type I LastRead 0 FirstWrite -1}
		b_buf_3 {Type O LastRead -1 FirstWrite 11}
		b_buf_2 {Type O LastRead -1 FirstWrite 11}
		b_buf_1 {Type O LastRead -1 FirstWrite 11}
		b_buf {Type O LastRead -1 FirstWrite 11}
		addr_b0 {Type I LastRead 0 FirstWrite -1}
		zext_ln195 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "47", "Max" : "155"}
	, {"Name" : "Interval", "Min" : "47", "Max" : "155"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln213 { ap_none {  { zext_ln213 in_data 0 14 } } }
	 { m_axi {  { m_axi_bi_AWVALID VALID 1 1 }  { m_axi_bi_AWREADY READY 0 1 }  { m_axi_bi_AWADDR ADDR 1 32 }  { m_axi_bi_AWID ID 1 1 }  { m_axi_bi_AWLEN SIZE 1 32 }  { m_axi_bi_AWSIZE BURST 1 3 }  { m_axi_bi_AWBURST LOCK 1 2 }  { m_axi_bi_AWLOCK CACHE 1 2 }  { m_axi_bi_AWCACHE PROT 1 4 }  { m_axi_bi_AWPROT QOS 1 3 }  { m_axi_bi_AWQOS REGION 1 4 }  { m_axi_bi_AWREGION USER 1 4 }  { m_axi_bi_AWUSER DATA 1 1 }  { m_axi_bi_WVALID VALID 1 1 }  { m_axi_bi_WREADY READY 0 1 }  { m_axi_bi_WDATA FIFONUM 1 32 }  { m_axi_bi_WSTRB STRB 1 4 }  { m_axi_bi_WLAST LAST 1 1 }  { m_axi_bi_WID ID 1 1 }  { m_axi_bi_WUSER DATA 1 1 }  { m_axi_bi_ARVALID VALID 1 1 }  { m_axi_bi_ARREADY READY 0 1 }  { m_axi_bi_ARADDR ADDR 1 32 }  { m_axi_bi_ARID ID 1 1 }  { m_axi_bi_ARLEN SIZE 1 32 }  { m_axi_bi_ARSIZE BURST 1 3 }  { m_axi_bi_ARBURST LOCK 1 2 }  { m_axi_bi_ARLOCK CACHE 1 2 }  { m_axi_bi_ARCACHE PROT 1 4 }  { m_axi_bi_ARPROT QOS 1 3 }  { m_axi_bi_ARQOS REGION 1 4 }  { m_axi_bi_ARREGION USER 1 4 }  { m_axi_bi_ARUSER DATA 1 1 }  { m_axi_bi_RVALID VALID 0 1 }  { m_axi_bi_RREADY READY 1 1 }  { m_axi_bi_RDATA FIFONUM 0 32 }  { m_axi_bi_RLAST LAST 0 1 }  { m_axi_bi_RID ID 0 1 }  { m_axi_bi_RFIFONUM LEN 0 10 }  { m_axi_bi_RUSER DATA 0 1 }  { m_axi_bi_RRESP RESP 0 2 }  { m_axi_bi_BVALID VALID 0 1 }  { m_axi_bi_BREADY READY 1 1 }  { m_axi_bi_BRESP RESP 0 2 }  { m_axi_bi_BID ID 0 1 }  { m_axi_bi_BUSER DATA 0 1 } } }
	select_ln123 { ap_none {  { select_ln123 in_data 0 16 } } }
	b_buf_3 { ap_memory {  { b_buf_3_address0 mem_address 1 8 }  { b_buf_3_ce0 mem_ce 1 1 }  { b_buf_3_we0 mem_we 1 1 }  { b_buf_3_d0 mem_din 1 8 } } }
	b_buf_2 { ap_memory {  { b_buf_2_address0 mem_address 1 8 }  { b_buf_2_ce0 mem_ce 1 1 }  { b_buf_2_we0 mem_we 1 1 }  { b_buf_2_d0 mem_din 1 8 } } }
	b_buf_1 { ap_memory {  { b_buf_1_address0 mem_address 1 8 }  { b_buf_1_ce0 mem_ce 1 1 }  { b_buf_1_we0 mem_we 1 1 }  { b_buf_1_d0 mem_din 1 8 } } }
	b_buf { ap_memory {  { b_buf_address0 mem_address 1 8 }  { b_buf_ce0 mem_ce 1 1 }  { b_buf_we0 mem_we 1 1 }  { b_buf_d0 mem_din 1 8 } } }
	addr_b0 { ap_none {  { addr_b0 in_data 0 32 } } }
	zext_ln195 { ap_none {  { zext_ln195 in_data 0 14 } } }
}
