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
	{ idx int 30 regular  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_63 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_62 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_61 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_60 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_59 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_58 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_57 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_56 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_55 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_54 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_53 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_52 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_51 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_50 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_49 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_48 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_47 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_46 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_45 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_44 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_43 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_42 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_41 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_40 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_39 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_38 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_37 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_36 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_35 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_34 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_33 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_32 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_31 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_30 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_29 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_28 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_27 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_26 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_25 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_24 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_23 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_22 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_5 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_4 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1 int 32 regular {pointer 0} {global 0}  }
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i int 32 regular {pointer 0} {global 0}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "ca", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "addr_c0","offset": { "type": "dynamic","port_name": "addr_c0","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "out_r", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b0_q", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "idx", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_63", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_62", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_61", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_60", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_59", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_58", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_57", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_56", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_55", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_54", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_53", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_52", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_51", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_50", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_49", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_48", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_47", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_46", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_45", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_44", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_43", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_42", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_41", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_40", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_39", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_38", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_37", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_36", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_35", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_34", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_33", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_32", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_31", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_30", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_29", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_28", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_27", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_26", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_25", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_24", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_23", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_22", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 122
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
	{ m_axi_ca_RFIFONUM sc_in sc_lv 8 signal 0 } 
	{ m_axi_ca_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_ca_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_ca_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_ca_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_ca_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_ca_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_ca_BUSER sc_in sc_lv 1 signal 0 } 
	{ out_r sc_in sc_lv 32 signal 1 } 
	{ b0_q sc_in sc_lv 16 signal 2 } 
	{ idx sc_in sc_lv 30 signal 3 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_63 sc_in sc_lv 32 signal 4 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_62 sc_in sc_lv 32 signal 5 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_61 sc_in sc_lv 32 signal 6 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_60 sc_in sc_lv 32 signal 7 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_59 sc_in sc_lv 32 signal 8 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_58 sc_in sc_lv 32 signal 9 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_57 sc_in sc_lv 32 signal 10 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_56 sc_in sc_lv 32 signal 11 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_55 sc_in sc_lv 32 signal 12 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_54 sc_in sc_lv 32 signal 13 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_53 sc_in sc_lv 32 signal 14 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_52 sc_in sc_lv 32 signal 15 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_51 sc_in sc_lv 32 signal 16 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_50 sc_in sc_lv 32 signal 17 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_49 sc_in sc_lv 32 signal 18 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_48 sc_in sc_lv 32 signal 19 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_47 sc_in sc_lv 32 signal 20 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_46 sc_in sc_lv 32 signal 21 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_45 sc_in sc_lv 32 signal 22 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_44 sc_in sc_lv 32 signal 23 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_43 sc_in sc_lv 32 signal 24 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_42 sc_in sc_lv 32 signal 25 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_41 sc_in sc_lv 32 signal 26 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_40 sc_in sc_lv 32 signal 27 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_39 sc_in sc_lv 32 signal 28 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_38 sc_in sc_lv 32 signal 29 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_37 sc_in sc_lv 32 signal 30 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_36 sc_in sc_lv 32 signal 31 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_35 sc_in sc_lv 32 signal 32 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_34 sc_in sc_lv 32 signal 33 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_33 sc_in sc_lv 32 signal 34 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_32 sc_in sc_lv 32 signal 35 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_31 sc_in sc_lv 32 signal 36 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_30 sc_in sc_lv 32 signal 37 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_29 sc_in sc_lv 32 signal 38 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_28 sc_in sc_lv 32 signal 39 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_27 sc_in sc_lv 32 signal 40 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_26 sc_in sc_lv 32 signal 41 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_25 sc_in sc_lv 32 signal 42 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_24 sc_in sc_lv 32 signal 43 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_23 sc_in sc_lv 32 signal 44 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_22 sc_in sc_lv 32 signal 45 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21 sc_in sc_lv 32 signal 46 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20 sc_in sc_lv 32 signal 47 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19 sc_in sc_lv 32 signal 48 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18 sc_in sc_lv 32 signal 49 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17 sc_in sc_lv 32 signal 50 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16 sc_in sc_lv 32 signal 51 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15 sc_in sc_lv 32 signal 52 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14 sc_in sc_lv 32 signal 53 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13 sc_in sc_lv 32 signal 54 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12 sc_in sc_lv 32 signal 55 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11 sc_in sc_lv 32 signal 56 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10 sc_in sc_lv 32 signal 57 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9 sc_in sc_lv 32 signal 58 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8 sc_in sc_lv 32 signal 59 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7 sc_in sc_lv 32 signal 60 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6 sc_in sc_lv 32 signal 61 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_5 sc_in sc_lv 32 signal 62 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_4 sc_in sc_lv 32 signal 63 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3 sc_in sc_lv 32 signal 64 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2 sc_in sc_lv 32 signal 65 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1 sc_in sc_lv 32 signal 66 } 
	{ mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i sc_in sc_lv 32 signal 67 } 
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
 	{ "name": "m_axi_ca_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ca", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_ca_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "RUSER" }} , 
 	{ "name": "m_axi_ca_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ca", "role": "RRESP" }} , 
 	{ "name": "m_axi_ca_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "BVALID" }} , 
 	{ "name": "m_axi_ca_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "BREADY" }} , 
 	{ "name": "m_axi_ca_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ca", "role": "BRESP" }} , 
 	{ "name": "m_axi_ca_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "BID" }} , 
 	{ "name": "m_axi_ca_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "BUSER" }} , 
 	{ "name": "out_r", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "default" }} , 
 	{ "name": "b0_q", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b0_q", "role": "default" }} , 
 	{ "name": "idx", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "idx", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_63", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_63", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_62", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_62", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_61", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_61", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_60", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_60", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_59", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_59", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_58", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_58", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_57", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_57", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_56", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_56", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_55", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_55", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_54", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_54", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_53", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_53", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_52", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_52", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_51", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_51", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_50", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_50", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_49", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_49", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_48", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_48", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_47", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_47", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_46", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_46", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_45", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_45", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_44", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_44", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_43", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_43", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_42", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_42", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_41", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_41", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_40", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_40", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_39", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_39", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_38", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_38", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_37", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_37", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_36", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_36", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_35", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_35", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_34", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_34", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_33", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_33", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_32", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_32", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_31", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_31", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_30", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_30", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_29", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_29", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_28", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_28", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_27", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_27", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_26", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_26", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_25", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_25", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_24", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_24", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_23", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_23", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_22", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_22", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_5", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_4", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1", "role": "default" }} , 
 	{ "name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i", "role": "default" }} , 
 	{ "name": "ca_blk_n_AW", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ca_blk_n_AW", "role": "default" }} , 
 	{ "name": "ca_blk_n_W", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ca_blk_n_W", "role": "default" }} , 
 	{ "name": "ca_blk_n_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ca_blk_n_B", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "sa_store",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "64",
		"VariableLatency" : "0", "ExactLatency" : "70", "EstimateLatencyMin" : "70", "EstimateLatencyMax" : "70",
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
			{"Name" : "idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_22", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	sa_store {
		ca {Type O LastRead 66 FirstWrite 2}
		out_r {Type I LastRead 0 FirstWrite -1}
		b0_q {Type I LastRead 8 FirstWrite -1}
		idx {Type I LastRead 0 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_63 {Type I LastRead 2 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_62 {Type I LastRead 3 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_61 {Type I LastRead 4 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_60 {Type I LastRead 5 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_59 {Type I LastRead 6 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_58 {Type I LastRead 7 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_57 {Type I LastRead 8 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_56 {Type I LastRead 9 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_55 {Type I LastRead 10 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_54 {Type I LastRead 11 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_53 {Type I LastRead 12 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_52 {Type I LastRead 13 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_51 {Type I LastRead 14 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_50 {Type I LastRead 15 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_49 {Type I LastRead 16 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_48 {Type I LastRead 17 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_47 {Type I LastRead 18 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_46 {Type I LastRead 19 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_45 {Type I LastRead 20 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_44 {Type I LastRead 21 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_43 {Type I LastRead 22 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_42 {Type I LastRead 23 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_41 {Type I LastRead 24 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_40 {Type I LastRead 25 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_39 {Type I LastRead 26 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_38 {Type I LastRead 27 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_37 {Type I LastRead 28 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_36 {Type I LastRead 29 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_35 {Type I LastRead 30 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_34 {Type I LastRead 31 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_33 {Type I LastRead 32 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_32 {Type I LastRead 33 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_31 {Type I LastRead 34 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_30 {Type I LastRead 35 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_29 {Type I LastRead 36 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_28 {Type I LastRead 37 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_27 {Type I LastRead 38 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_26 {Type I LastRead 39 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_25 {Type I LastRead 40 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_24 {Type I LastRead 41 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_23 {Type I LastRead 42 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_22 {Type I LastRead 43 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21 {Type I LastRead 44 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20 {Type I LastRead 45 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19 {Type I LastRead 46 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18 {Type I LastRead 47 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17 {Type I LastRead 48 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16 {Type I LastRead 49 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15 {Type I LastRead 50 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14 {Type I LastRead 51 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13 {Type I LastRead 52 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12 {Type I LastRead 53 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11 {Type I LastRead 54 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10 {Type I LastRead 55 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9 {Type I LastRead 56 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8 {Type I LastRead 57 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7 {Type I LastRead 58 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6 {Type I LastRead 59 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_5 {Type I LastRead 60 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_4 {Type I LastRead 61 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3 {Type I LastRead 62 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2 {Type I LastRead 63 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1 {Type I LastRead 64 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i {Type I LastRead 65 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "70", "Max" : "70"}
	, {"Name" : "Interval", "Min" : "64", "Max" : "64"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_ca_AWVALID VALID 1 1 }  { m_axi_ca_AWREADY READY 0 1 }  { m_axi_ca_AWADDR ADDR 1 32 }  { m_axi_ca_AWID ID 1 1 }  { m_axi_ca_AWLEN SIZE 1 32 }  { m_axi_ca_AWSIZE BURST 1 3 }  { m_axi_ca_AWBURST LOCK 1 2 }  { m_axi_ca_AWLOCK CACHE 1 2 }  { m_axi_ca_AWCACHE PROT 1 4 }  { m_axi_ca_AWPROT QOS 1 3 }  { m_axi_ca_AWQOS REGION 1 4 }  { m_axi_ca_AWREGION USER 1 4 }  { m_axi_ca_AWUSER DATA 1 1 }  { m_axi_ca_WVALID VALID 1 1 }  { m_axi_ca_WREADY READY 0 1 }  { m_axi_ca_WDATA FIFONUM 1 32 }  { m_axi_ca_WSTRB STRB 1 4 }  { m_axi_ca_WLAST LAST 1 1 }  { m_axi_ca_WID ID 1 1 }  { m_axi_ca_WUSER DATA 1 1 }  { m_axi_ca_ARVALID VALID 1 1 }  { m_axi_ca_ARREADY READY 0 1 }  { m_axi_ca_ARADDR ADDR 1 32 }  { m_axi_ca_ARID ID 1 1 }  { m_axi_ca_ARLEN SIZE 1 32 }  { m_axi_ca_ARSIZE BURST 1 3 }  { m_axi_ca_ARBURST LOCK 1 2 }  { m_axi_ca_ARLOCK CACHE 1 2 }  { m_axi_ca_ARCACHE PROT 1 4 }  { m_axi_ca_ARPROT QOS 1 3 }  { m_axi_ca_ARQOS REGION 1 4 }  { m_axi_ca_ARREGION USER 1 4 }  { m_axi_ca_ARUSER DATA 1 1 }  { m_axi_ca_RVALID VALID 0 1 }  { m_axi_ca_RREADY READY 1 1 }  { m_axi_ca_RDATA FIFONUM 0 32 }  { m_axi_ca_RLAST LAST 0 1 }  { m_axi_ca_RID ID 0 1 }  { m_axi_ca_RFIFONUM LEN 0 8 }  { m_axi_ca_RUSER DATA 0 1 }  { m_axi_ca_RRESP RESP 0 2 }  { m_axi_ca_BVALID VALID 0 1 }  { m_axi_ca_BREADY READY 1 1 }  { m_axi_ca_BRESP RESP 0 2 }  { m_axi_ca_BID ID 0 1 }  { m_axi_ca_BUSER DATA 0 1 } } }
	out_r { ap_none {  { out_r in_data 0 32 } } }
	b0_q { ap_none {  { b0_q in_data 0 16 } } }
	idx { ap_none {  { idx in_data 0 30 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_63 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_63 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_62 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_62 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_61 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_61 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_60 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_60 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_59 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_59 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_58 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_58 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_57 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_57 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_56 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_56 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_55 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_55 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_54 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_54 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_53 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_53 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_52 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_52 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_51 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_51 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_50 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_50 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_49 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_49 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_48 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_48 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_47 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_47 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_46 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_46 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_45 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_45 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_44 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_44 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_43 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_43 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_42 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_42 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_41 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_41 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_40 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_40 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_39 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_39 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_38 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_38 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_37 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_37 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_36 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_36 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_35 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_35 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_34 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_34 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_33 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_33 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_32 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_32 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_31 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_31 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_30 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_30 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_29 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_29 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_28 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_28 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_27 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_27 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_26 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_26 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_25 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_25 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_24 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_24 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_23 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_23 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_22 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_22 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_5 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_5 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_4 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_4 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1 { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1 in_data 0 32 } } }
	mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i { ap_none {  { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i in_data 0 32 } } }
}
