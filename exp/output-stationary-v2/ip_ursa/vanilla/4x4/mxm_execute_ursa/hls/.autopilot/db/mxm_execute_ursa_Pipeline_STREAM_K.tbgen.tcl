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
	{ add30 int 17 regular  }
	{ m int 16 regular  }
	{ add_ln53_2 int 8 regular  }
	{ a_buf int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ add_i_1 int 17 regular  }
	{ empty_21 int 8 regular  }
	{ a_buf_1 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ add_i_2 int 17 regular  }
	{ a_buf_2 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ add_ln197 int 17 regular  }
	{ a_buf_3 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ b_buf int 8 regular {array 256 { 1 3 } 1 1 }  }
	{ b_buf_1 int 8 regular {array 256 { 1 3 } 1 1 }  }
	{ empty_22 int 8 regular  }
	{ b_buf_2 int 8 regular {array 256 { 1 3 } 1 1 }  }
	{ empty int 8 regular  }
	{ b_buf_3 int 8 regular {array 256 { 1 3 } 1 1 }  }
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_15 int 20 regular {pointer 2} {global 2}  }
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_14 int 20 regular {pointer 2} {global 2}  }
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_13 int 20 regular {pointer 2} {global 2}  }
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_12 int 20 regular {pointer 2} {global 2}  }
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_11 int 20 regular {pointer 2} {global 2}  }
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_10 int 20 regular {pointer 2} {global 2}  }
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_9 int 20 regular {pointer 2} {global 2}  }
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_8 int 20 regular {pointer 2} {global 2}  }
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_7 int 20 regular {pointer 2} {global 2}  }
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_6 int 20 regular {pointer 2} {global 2}  }
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_5 int 20 regular {pointer 2} {global 2}  }
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_4 int 20 regular {pointer 2} {global 2}  }
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_3 int 20 regular {pointer 2} {global 2}  }
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_2 int 20 regular {pointer 2} {global 2}  }
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_1 int 20 regular {pointer 2} {global 2}  }
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s int 20 regular {pointer 2} {global 2}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "add30", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "m", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln53_2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "a_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_i_1", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "empty_21", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "a_buf_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_i_2", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "a_buf_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln197", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "a_buf_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_buf", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "b_buf_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty_22", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "b_buf_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "b_buf_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_15", "interface" : "wire", "bitwidth" : 20, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_14", "interface" : "wire", "bitwidth" : 20, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_13", "interface" : "wire", "bitwidth" : 20, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_12", "interface" : "wire", "bitwidth" : 20, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_11", "interface" : "wire", "bitwidth" : 20, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_10", "interface" : "wire", "bitwidth" : 20, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_9", "interface" : "wire", "bitwidth" : 20, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_8", "interface" : "wire", "bitwidth" : 20, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_7", "interface" : "wire", "bitwidth" : 20, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_6", "interface" : "wire", "bitwidth" : 20, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_5", "interface" : "wire", "bitwidth" : 20, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_4", "interface" : "wire", "bitwidth" : 20, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_3", "interface" : "wire", "bitwidth" : 20, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_2", "interface" : "wire", "bitwidth" : 20, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_1", "interface" : "wire", "bitwidth" : 20, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s", "interface" : "wire", "bitwidth" : 20, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 87
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ add30 sc_in sc_lv 17 signal 0 } 
	{ m sc_in sc_lv 16 signal 1 } 
	{ add_ln53_2 sc_in sc_lv 8 signal 2 } 
	{ a_buf_address0 sc_out sc_lv 6 signal 3 } 
	{ a_buf_ce0 sc_out sc_logic 1 signal 3 } 
	{ a_buf_q0 sc_in sc_lv 32 signal 3 } 
	{ add_i_1 sc_in sc_lv 17 signal 4 } 
	{ empty_21 sc_in sc_lv 8 signal 5 } 
	{ a_buf_1_address0 sc_out sc_lv 6 signal 6 } 
	{ a_buf_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ a_buf_1_q0 sc_in sc_lv 32 signal 6 } 
	{ add_i_2 sc_in sc_lv 17 signal 7 } 
	{ a_buf_2_address0 sc_out sc_lv 6 signal 8 } 
	{ a_buf_2_ce0 sc_out sc_logic 1 signal 8 } 
	{ a_buf_2_q0 sc_in sc_lv 32 signal 8 } 
	{ add_ln197 sc_in sc_lv 17 signal 9 } 
	{ a_buf_3_address0 sc_out sc_lv 6 signal 10 } 
	{ a_buf_3_ce0 sc_out sc_logic 1 signal 10 } 
	{ a_buf_3_q0 sc_in sc_lv 32 signal 10 } 
	{ b_buf_address0 sc_out sc_lv 8 signal 11 } 
	{ b_buf_ce0 sc_out sc_logic 1 signal 11 } 
	{ b_buf_q0 sc_in sc_lv 8 signal 11 } 
	{ b_buf_1_address0 sc_out sc_lv 8 signal 12 } 
	{ b_buf_1_ce0 sc_out sc_logic 1 signal 12 } 
	{ b_buf_1_q0 sc_in sc_lv 8 signal 12 } 
	{ empty_22 sc_in sc_lv 8 signal 13 } 
	{ b_buf_2_address0 sc_out sc_lv 8 signal 14 } 
	{ b_buf_2_ce0 sc_out sc_logic 1 signal 14 } 
	{ b_buf_2_q0 sc_in sc_lv 8 signal 14 } 
	{ empty sc_in sc_lv 8 signal 15 } 
	{ b_buf_3_address0 sc_out sc_lv 8 signal 16 } 
	{ b_buf_3_ce0 sc_out sc_logic 1 signal 16 } 
	{ b_buf_3_q0 sc_in sc_lv 8 signal 16 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_15_i sc_in sc_lv 20 signal 17 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_15_o sc_out sc_lv 20 signal 17 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_15_o_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_14_i sc_in sc_lv 20 signal 18 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_14_o sc_out sc_lv 20 signal 18 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_14_o_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_13_i sc_in sc_lv 20 signal 19 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_13_o sc_out sc_lv 20 signal 19 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_13_o_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_12_i sc_in sc_lv 20 signal 20 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_12_o sc_out sc_lv 20 signal 20 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_12_o_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_11_i sc_in sc_lv 20 signal 21 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_11_o sc_out sc_lv 20 signal 21 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_11_o_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_10_i sc_in sc_lv 20 signal 22 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_10_o sc_out sc_lv 20 signal 22 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_10_o_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_9_i sc_in sc_lv 20 signal 23 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_9_o sc_out sc_lv 20 signal 23 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_9_o_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_8_i sc_in sc_lv 20 signal 24 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_8_o sc_out sc_lv 20 signal 24 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_8_o_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_7_i sc_in sc_lv 20 signal 25 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_7_o sc_out sc_lv 20 signal 25 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_7_o_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_6_i sc_in sc_lv 20 signal 26 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_6_o sc_out sc_lv 20 signal 26 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_6_o_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_5_i sc_in sc_lv 20 signal 27 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_5_o sc_out sc_lv 20 signal 27 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_5_o_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_4_i sc_in sc_lv 20 signal 28 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_4_o sc_out sc_lv 20 signal 28 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_4_o_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_3_i sc_in sc_lv 20 signal 29 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_3_o sc_out sc_lv 20 signal 29 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_3_o_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_2_i sc_in sc_lv 20 signal 30 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_2_o sc_out sc_lv 20 signal 30 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_2_o_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_1_i sc_in sc_lv 20 signal 31 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_1_o sc_out sc_lv 20 signal 31 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_1_o_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_i sc_in sc_lv 20 signal 32 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_o sc_out sc_lv 20 signal 32 } 
	{ mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_o_ap_vld sc_out sc_logic 1 outvld 32 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "add30", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "add30", "role": "default" }} , 
 	{ "name": "m", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "m", "role": "default" }} , 
 	{ "name": "add_ln53_2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "add_ln53_2", "role": "default" }} , 
 	{ "name": "a_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "a_buf", "role": "address0" }} , 
 	{ "name": "a_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_buf", "role": "ce0" }} , 
 	{ "name": "a_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_buf", "role": "q0" }} , 
 	{ "name": "add_i_1", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "add_i_1", "role": "default" }} , 
 	{ "name": "empty_21", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "empty_21", "role": "default" }} , 
 	{ "name": "a_buf_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "a_buf_1", "role": "address0" }} , 
 	{ "name": "a_buf_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_buf_1", "role": "ce0" }} , 
 	{ "name": "a_buf_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_buf_1", "role": "q0" }} , 
 	{ "name": "add_i_2", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "add_i_2", "role": "default" }} , 
 	{ "name": "a_buf_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "a_buf_2", "role": "address0" }} , 
 	{ "name": "a_buf_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_buf_2", "role": "ce0" }} , 
 	{ "name": "a_buf_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_buf_2", "role": "q0" }} , 
 	{ "name": "add_ln197", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "add_ln197", "role": "default" }} , 
 	{ "name": "a_buf_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "a_buf_3", "role": "address0" }} , 
 	{ "name": "a_buf_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_buf_3", "role": "ce0" }} , 
 	{ "name": "a_buf_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_buf_3", "role": "q0" }} , 
 	{ "name": "b_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_buf", "role": "address0" }} , 
 	{ "name": "b_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buf", "role": "ce0" }} , 
 	{ "name": "b_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_buf", "role": "q0" }} , 
 	{ "name": "b_buf_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_buf_1", "role": "address0" }} , 
 	{ "name": "b_buf_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buf_1", "role": "ce0" }} , 
 	{ "name": "b_buf_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_buf_1", "role": "q0" }} , 
 	{ "name": "empty_22", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "empty_22", "role": "default" }} , 
 	{ "name": "b_buf_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_buf_2", "role": "address0" }} , 
 	{ "name": "b_buf_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buf_2", "role": "ce0" }} , 
 	{ "name": "b_buf_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_buf_2", "role": "q0" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "b_buf_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_buf_3", "role": "address0" }} , 
 	{ "name": "b_buf_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buf_3", "role": "ce0" }} , 
 	{ "name": "b_buf_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_buf_3", "role": "q0" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_15_i", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_15", "role": "i" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_15_o", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_15", "role": "o" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_15_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_15", "role": "o_ap_vld" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_14_i", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_14", "role": "i" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_14_o", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_14", "role": "o" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_14_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_14", "role": "o_ap_vld" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_13_i", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_13", "role": "i" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_13_o", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_13", "role": "o" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_13_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_13", "role": "o_ap_vld" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_12_i", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_12", "role": "i" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_12_o", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_12", "role": "o" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_12_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_12", "role": "o_ap_vld" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_11_i", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_11", "role": "i" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_11_o", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_11", "role": "o" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_11_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_11", "role": "o_ap_vld" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_10_i", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_10", "role": "i" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_10_o", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_10", "role": "o" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_10_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_10", "role": "o_ap_vld" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_9_i", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_9", "role": "i" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_9_o", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_9", "role": "o" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_9_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_9", "role": "o_ap_vld" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_8_i", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_8", "role": "i" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_8_o", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_8", "role": "o" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_8_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_8", "role": "o_ap_vld" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_7_i", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_7", "role": "i" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_7_o", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_7", "role": "o" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_7_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_7", "role": "o_ap_vld" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_6_i", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_6", "role": "i" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_6_o", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_6", "role": "o" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_6_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_6", "role": "o_ap_vld" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_5_i", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_5", "role": "i" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_5_o", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_5", "role": "o" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_5_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_5", "role": "o_ap_vld" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_4_i", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_4", "role": "i" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_4_o", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_4", "role": "o" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_4_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_4", "role": "o_ap_vld" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_3_i", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_3", "role": "i" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_3_o", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_3", "role": "o" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_3_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_3", "role": "o_ap_vld" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_2", "role": "i" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_2_o", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_2", "role": "o" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_2_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_2", "role": "o_ap_vld" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_1", "role": "i" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_1", "role": "o" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_1", "role": "o_ap_vld" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_i", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s", "role": "i" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_o", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s", "role": "o" }} , 
 	{ "name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "mxm_execute_ursa_Pipeline_STREAM_K",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "48", "EstimateLatencyMax" : "156",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "add30", "Type" : "None", "Direction" : "I"},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln53_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "add_i_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buf_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "add_i_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buf_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "add_ln197", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buf_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_buf_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_buf_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_buf_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_39", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "STREAM_K", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8s_20s_20_4_1_U18", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8ns_20s_20_4_1_U19", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8ns_20s_20_4_1_U20", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8ns_20s_20_4_1_U21", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8s_20s_20_4_1_U22", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8s_20s_20_4_1_U23", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8s_20s_20_4_1_U24", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8s_20s_20_4_1_U25", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8s_20s_20_4_1_U26", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8s_20s_20_4_1_U27", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8s_20s_20_4_1_U28", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8s_20s_20_4_1_U29", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8s_20s_20_4_1_U30", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8s_20s_20_4_1_U31", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8s_20s_20_4_1_U32", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8s_20s_20_4_1_U33", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mxm_execute_ursa_Pipeline_STREAM_K {
		add30 {Type I LastRead 0 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		add_ln53_2 {Type I LastRead 0 FirstWrite -1}
		a_buf {Type I LastRead 0 FirstWrite -1}
		add_i_1 {Type I LastRead 0 FirstWrite -1}
		empty_21 {Type I LastRead 0 FirstWrite -1}
		a_buf_1 {Type I LastRead 0 FirstWrite -1}
		add_i_2 {Type I LastRead 0 FirstWrite -1}
		a_buf_2 {Type I LastRead 0 FirstWrite -1}
		add_ln197 {Type I LastRead 0 FirstWrite -1}
		a_buf_3 {Type I LastRead 0 FirstWrite -1}
		b_buf {Type I LastRead 1 FirstWrite -1}
		b_buf_1 {Type I LastRead 1 FirstWrite -1}
		empty_22 {Type I LastRead 0 FirstWrite -1}
		b_buf_2 {Type I LastRead 1 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		b_buf_3 {Type I LastRead 1 FirstWrite -1}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_39 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_36 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_33 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_30 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_38 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_35 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_32 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_29 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_37 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_34 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_31 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_28 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_27 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_26 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_25 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_24 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_23 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_22 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_21 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_20 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_19 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_18 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_17 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_16 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_15 {Type IO LastRead 4 FirstWrite 5}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_14 {Type IO LastRead 4 FirstWrite 5}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_13 {Type IO LastRead 4 FirstWrite 5}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_12 {Type IO LastRead 4 FirstWrite 5}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_11 {Type IO LastRead 4 FirstWrite 5}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_10 {Type IO LastRead 4 FirstWrite 5}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_9 {Type IO LastRead 4 FirstWrite 5}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_8 {Type IO LastRead 4 FirstWrite 5}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_7 {Type IO LastRead 4 FirstWrite 5}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_6 {Type IO LastRead 4 FirstWrite 5}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_5 {Type IO LastRead 4 FirstWrite 5}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_4 {Type IO LastRead 4 FirstWrite 5}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_3 {Type IO LastRead 4 FirstWrite 5}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_2 {Type IO LastRead 4 FirstWrite 5}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_1 {Type IO LastRead 4 FirstWrite 5}
		mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s {Type IO LastRead 4 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "48", "Max" : "156"}
	, {"Name" : "Interval", "Min" : "48", "Max" : "156"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	add30 { ap_none {  { add30 in_data 0 17 } } }
	m { ap_none {  { m in_data 0 16 } } }
	add_ln53_2 { ap_none {  { add_ln53_2 in_data 0 8 } } }
	a_buf { ap_memory {  { a_buf_address0 mem_address 1 6 }  { a_buf_ce0 mem_ce 1 1 }  { a_buf_q0 mem_dout 0 32 } } }
	add_i_1 { ap_none {  { add_i_1 in_data 0 17 } } }
	empty_21 { ap_none {  { empty_21 in_data 0 8 } } }
	a_buf_1 { ap_memory {  { a_buf_1_address0 mem_address 1 6 }  { a_buf_1_ce0 mem_ce 1 1 }  { a_buf_1_q0 mem_dout 0 32 } } }
	add_i_2 { ap_none {  { add_i_2 in_data 0 17 } } }
	a_buf_2 { ap_memory {  { a_buf_2_address0 mem_address 1 6 }  { a_buf_2_ce0 mem_ce 1 1 }  { a_buf_2_q0 mem_dout 0 32 } } }
	add_ln197 { ap_none {  { add_ln197 in_data 0 17 } } }
	a_buf_3 { ap_memory {  { a_buf_3_address0 mem_address 1 6 }  { a_buf_3_ce0 mem_ce 1 1 }  { a_buf_3_q0 mem_dout 0 32 } } }
	b_buf { ap_memory {  { b_buf_address0 mem_address 1 8 }  { b_buf_ce0 mem_ce 1 1 }  { b_buf_q0 in_data 0 8 } } }
	b_buf_1 { ap_memory {  { b_buf_1_address0 mem_address 1 8 }  { b_buf_1_ce0 mem_ce 1 1 }  { b_buf_1_q0 in_data 0 8 } } }
	empty_22 { ap_none {  { empty_22 in_data 0 8 } } }
	b_buf_2 { ap_memory {  { b_buf_2_address0 mem_address 1 8 }  { b_buf_2_ce0 mem_ce 1 1 }  { b_buf_2_q0 in_data 0 8 } } }
	empty { ap_none {  { empty in_data 0 8 } } }
	b_buf_3 { ap_memory {  { b_buf_3_address0 mem_address 1 8 }  { b_buf_3_ce0 mem_ce 1 1 }  { b_buf_3_q0 in_data 0 8 } } }
	mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_15 { ap_ovld {  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_15_i in_data 0 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_15_o out_data 1 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_15_o_ap_vld out_vld 1 1 } } }
	mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_14 { ap_ovld {  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_14_i in_data 0 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_14_o out_data 1 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_14_o_ap_vld out_vld 1 1 } } }
	mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_13 { ap_ovld {  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_13_i in_data 0 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_13_o out_data 1 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_13_o_ap_vld out_vld 1 1 } } }
	mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_12 { ap_ovld {  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_12_i in_data 0 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_12_o out_data 1 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_12_o_ap_vld out_vld 1 1 } } }
	mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_11 { ap_ovld {  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_11_i in_data 0 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_11_o out_data 1 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_11_o_ap_vld out_vld 1 1 } } }
	mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_10 { ap_ovld {  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_10_i in_data 0 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_10_o out_data 1 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_10_o_ap_vld out_vld 1 1 } } }
	mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_9 { ap_ovld {  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_9_i in_data 0 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_9_o out_data 1 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_9_o_ap_vld out_vld 1 1 } } }
	mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_8 { ap_ovld {  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_8_i in_data 0 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_8_o out_data 1 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_8_o_ap_vld out_vld 1 1 } } }
	mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_7 { ap_ovld {  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_7_i in_data 0 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_7_o out_data 1 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_7_o_ap_vld out_vld 1 1 } } }
	mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_6 { ap_ovld {  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_6_i in_data 0 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_6_o out_data 1 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_6_o_ap_vld out_vld 1 1 } } }
	mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_5 { ap_ovld {  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_5_i in_data 0 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_5_o out_data 1 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_5_o_ap_vld out_vld 1 1 } } }
	mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_4 { ap_ovld {  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_4_i in_data 0 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_4_o out_data 1 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_4_o_ap_vld out_vld 1 1 } } }
	mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_3 { ap_ovld {  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_3_i in_data 0 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_3_o out_data 1 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_3_o_ap_vld out_vld 1 1 } } }
	mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_2 { ap_ovld {  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_2_i in_data 0 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_2_o out_data 1 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_2_o_ap_vld out_vld 1 1 } } }
	mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_1 { ap_ovld {  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_1_i in_data 0 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_1_o out_data 1 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_1_o_ap_vld out_vld 1 1 } } }
	mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s { ap_ovld {  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_i in_data 0 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_o out_data 1 20 }  { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_o_ap_vld out_vld 1 1 } } }
}
