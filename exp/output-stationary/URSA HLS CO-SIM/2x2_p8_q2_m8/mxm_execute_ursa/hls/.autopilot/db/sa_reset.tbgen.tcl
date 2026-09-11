set moduleName sa_reset
set isTopModule 0
set isCombinational 1
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {sa_reset}
set C_modelType { void 0 }
set C_modelArgList {
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3 int 20 regular {pointer 1} {global 1}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2 int 20 regular {pointer 1} {global 1}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1 int 20 regular {pointer 1} {global 1}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i int 20 regular {pointer 1} {global 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3", "interface" : "wire", "bitwidth" : 20, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2", "interface" : "wire", "bitwidth" : 20, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1", "interface" : "wire", "bitwidth" : 20, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i", "interface" : "wire", "bitwidth" : 20, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 9
set portList { 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3 sc_out sc_lv 20 signal 0 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2 sc_out sc_lv 20 signal 1 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1 sc_out sc_lv 20 signal 2 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i sc_out sc_lv 20 signal 3 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3", "role": "ap_vld" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2", "role": "ap_vld" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1", "role": "ap_vld" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "sa_reset",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i", "Type" : "Vld", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	sa_reset {
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3 {Type O LastRead -1 FirstWrite 0}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2 {Type O LastRead -1 FirstWrite 0}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1 {Type O LastRead -1 FirstWrite 0}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3 { ap_vld {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3 out_data 1 20 }  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3_ap_vld out_vld 1 1 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2 { ap_vld {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2 out_data 1 20 }  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2_ap_vld out_vld 1 1 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1 { ap_vld {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1 out_data 1 20 }  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1_ap_vld out_vld 1 1 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i { ap_vld {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i out_data 1 20 }  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_ap_vld out_vld 1 1 } } }
}
