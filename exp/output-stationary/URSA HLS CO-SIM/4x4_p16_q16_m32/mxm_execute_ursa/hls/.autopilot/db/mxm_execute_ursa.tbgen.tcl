set moduleName mxm_execute_ursa
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {mxm_execute_ursa}
set C_modelType { int 8 }
set C_modelArgList {
	{ aw int 8 regular {axi_master 0}  }
	{ bi int 8 regular {axi_master 0}  }
	{ ca int 32 regular {axi_master 1}  }
	{ addr_a0 int 32 regular {axi_slave 0}  }
	{ a0_p uint 16 regular {axi_slave 0}  }
	{ addr_b0 int 32 regular {axi_slave 0}  }
	{ b0_q uint 16 regular {axi_slave 0}  }
	{ addr_c0 int 32 regular {axi_slave 0}  }
	{ m uint 16 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "aw", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "addr_a0","offset": { "type": "dynamic","port_name": "addr_a0","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "bi", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "addr_b0","offset": { "type": "dynamic","port_name": "addr_b0","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "ca", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "addr_c0","offset": { "type": "dynamic","port_name": "addr_c0","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "addr_a0", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "a0_p", "interface" : "axi_slave", "bundle":"ap","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "addr_b0", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "b0_q", "interface" : "axi_slave", "bundle":"ap","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "addr_c0", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "m", "interface" : "axi_slave", "bundle":"ap","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"ap","type":"ap_none","bitwidth" : 8, "offset" : {"out":16}} ]}
# RTL Port declarations: 
set portNum 172
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_aw_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_aw_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_aw_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_aw_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_aw_AWLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_aw_ARLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_aw_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_aw_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_aw_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_aw_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_aw_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_aw_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_aw_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_bi_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bi_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bi_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_bi_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bi_AWLEN sc_out sc_lv 8 signal 1 } 
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
	{ m_axi_bi_ARLEN sc_out sc_lv 8 signal 1 } 
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
	{ m_axi_bi_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_bi_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_bi_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_bi_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_bi_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_bi_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_bi_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_ca_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_ca_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_ca_AWADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_ca_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_ca_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_ca_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_ca_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_ca_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_ca_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_ca_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_ca_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_ca_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_ca_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_ca_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_ca_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_ca_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_ca_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_ca_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_ca_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_ca_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_ca_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_ca_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_ca_ARADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_ca_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_ca_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_ca_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_ca_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_ca_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_ca_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_ca_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_ca_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_ca_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_ca_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_ca_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_ca_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_ca_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_ca_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_ca_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_ca_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_ca_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_ca_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_ca_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_ca_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_ca_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_ca_BUSER sc_in sc_lv 1 signal 2 } 
	{ s_axi_ap_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ap_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ap_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_ap_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ap_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ap_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_ap_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_ap_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ap_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ap_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_ap_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_ap_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_ap_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_ap_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_ap_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_ap_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_ap_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_ap_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap", "role": "AWADDR" },"address":[{"name":"mxm_execute_ursa","role":"start","value":"0","valid_bit":"0"},{"name":"mxm_execute_ursa","role":"continue","value":"0","valid_bit":"4"},{"name":"mxm_execute_ursa","role":"auto_start","value":"0","valid_bit":"7"},{"name":"a0_p","role":"data","value":"24"},{"name":"b0_q","role":"data","value":"32"},{"name":"m","role":"data","value":"40"}] },
	{ "name": "s_axi_ap_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap", "role": "AWVALID" } },
	{ "name": "s_axi_ap_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap", "role": "AWREADY" } },
	{ "name": "s_axi_ap_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap", "role": "WVALID" } },
	{ "name": "s_axi_ap_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap", "role": "WREADY" } },
	{ "name": "s_axi_ap_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap", "role": "WDATA" } },
	{ "name": "s_axi_ap_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ap", "role": "WSTRB" } },
	{ "name": "s_axi_ap_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap", "role": "ARADDR" },"address":[{"name":"mxm_execute_ursa","role":"start","value":"0","valid_bit":"0"},{"name":"mxm_execute_ursa","role":"done","value":"0","valid_bit":"1"},{"name":"mxm_execute_ursa","role":"idle","value":"0","valid_bit":"2"},{"name":"mxm_execute_ursa","role":"ready","value":"0","valid_bit":"3"},{"name":"mxm_execute_ursa","role":"auto_start","value":"0","valid_bit":"7"},{"name":"return","role":"data","value":"16"}] },
	{ "name": "s_axi_ap_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap", "role": "ARVALID" } },
	{ "name": "s_axi_ap_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap", "role": "ARREADY" } },
	{ "name": "s_axi_ap_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap", "role": "RVALID" } },
	{ "name": "s_axi_ap_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap", "role": "RREADY" } },
	{ "name": "s_axi_ap_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap", "role": "RDATA" } },
	{ "name": "s_axi_ap_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap", "role": "RRESP" } },
	{ "name": "s_axi_ap_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap", "role": "BVALID" } },
	{ "name": "s_axi_ap_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap", "role": "BREADY" } },
	{ "name": "s_axi_ap_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap", "role": "interrupt" } },
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"addr_a0","role":"data","value":"16"},{"name":"addr_b0","role":"data","value":"24"},{"name":"addr_c0","role":"data","value":"32"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_aw_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "AWVALID" }} , 
 	{ "name": "m_axi_aw_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "AWREADY" }} , 
 	{ "name": "m_axi_aw_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aw", "role": "AWADDR" }} , 
 	{ "name": "m_axi_aw_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aw", "role": "AWID" }} , 
 	{ "name": "m_axi_aw_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "aw", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_aw_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "aw", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_bi_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bi", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_bi_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bi", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_bi_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "RUSER" }} , 
 	{ "name": "m_axi_bi_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bi", "role": "RRESP" }} , 
 	{ "name": "m_axi_bi_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "BVALID" }} , 
 	{ "name": "m_axi_bi_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "BREADY" }} , 
 	{ "name": "m_axi_bi_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bi", "role": "BRESP" }} , 
 	{ "name": "m_axi_bi_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "BID" }} , 
 	{ "name": "m_axi_bi_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bi", "role": "BUSER" }} , 
 	{ "name": "m_axi_ca_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "AWVALID" }} , 
 	{ "name": "m_axi_ca_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "AWREADY" }} , 
 	{ "name": "m_axi_ca_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ca", "role": "AWADDR" }} , 
 	{ "name": "m_axi_ca_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "AWID" }} , 
 	{ "name": "m_axi_ca_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ca", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_ca_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ca", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_ca_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "RUSER" }} , 
 	{ "name": "m_axi_ca_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ca", "role": "RRESP" }} , 
 	{ "name": "m_axi_ca_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "BVALID" }} , 
 	{ "name": "m_axi_ca_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "BREADY" }} , 
 	{ "name": "m_axi_ca_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ca", "role": "BRESP" }} , 
 	{ "name": "m_axi_ca_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "BID" }} , 
 	{ "name": "m_axi_ca_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ca", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "23", "24", "25", "26", "27", "28", "29", "30"],
		"CDFG" : "mxm_execute_ursa",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "70379747901515",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aw", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "aw", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "bi", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "bi", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "ca", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ca_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "ca_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "ca_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_sa_store_fu_358", "Port" : "ca", "Inst_start_state" : "17", "Inst_end_state" : "38"}]},
			{"Name" : "addr_a0", "Type" : "None", "Direction" : "I"},
			{"Name" : "a0_p", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr_b0", "Type" : "None", "Direction" : "I"},
			{"Name" : "b0_q", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr_c0", "Type" : "None", "Direction" : "I"},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_5", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_39", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_39", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_36", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_36", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_38", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_38", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_35", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_37", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_37", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_34", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_33", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_32", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_31", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_30", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_29", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_28", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_27", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_27", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_26", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_26", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_25", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_24", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_23", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_22", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "call_ln178_sa_reset_fu_398", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21", "Inst_start_state" : "39", "Inst_end_state" : "39"},
					{"ID" : "23", "SubInstance" : "grp_sa_store_fu_358", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21", "Inst_start_state" : "17", "Inst_end_state" : "38"},
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "call_ln178_sa_reset_fu_398", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20", "Inst_start_state" : "39", "Inst_end_state" : "39"},
					{"ID" : "23", "SubInstance" : "grp_sa_store_fu_358", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20", "Inst_start_state" : "17", "Inst_end_state" : "38"},
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "call_ln178_sa_reset_fu_398", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19", "Inst_start_state" : "39", "Inst_end_state" : "39"},
					{"ID" : "23", "SubInstance" : "grp_sa_store_fu_358", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19", "Inst_start_state" : "17", "Inst_end_state" : "38"},
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "call_ln178_sa_reset_fu_398", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18", "Inst_start_state" : "39", "Inst_end_state" : "39"},
					{"ID" : "23", "SubInstance" : "grp_sa_store_fu_358", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18", "Inst_start_state" : "17", "Inst_end_state" : "38"},
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "call_ln178_sa_reset_fu_398", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17", "Inst_start_state" : "39", "Inst_end_state" : "39"},
					{"ID" : "23", "SubInstance" : "grp_sa_store_fu_358", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17", "Inst_start_state" : "17", "Inst_end_state" : "38"},
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "call_ln178_sa_reset_fu_398", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16", "Inst_start_state" : "39", "Inst_end_state" : "39"},
					{"ID" : "23", "SubInstance" : "grp_sa_store_fu_358", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16", "Inst_start_state" : "17", "Inst_end_state" : "38"},
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "call_ln178_sa_reset_fu_398", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15", "Inst_start_state" : "39", "Inst_end_state" : "39"},
					{"ID" : "23", "SubInstance" : "grp_sa_store_fu_358", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15", "Inst_start_state" : "17", "Inst_end_state" : "38"},
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "call_ln178_sa_reset_fu_398", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14", "Inst_start_state" : "39", "Inst_end_state" : "39"},
					{"ID" : "23", "SubInstance" : "grp_sa_store_fu_358", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14", "Inst_start_state" : "17", "Inst_end_state" : "38"},
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "call_ln178_sa_reset_fu_398", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13", "Inst_start_state" : "39", "Inst_end_state" : "39"},
					{"ID" : "23", "SubInstance" : "grp_sa_store_fu_358", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13", "Inst_start_state" : "17", "Inst_end_state" : "38"},
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "call_ln178_sa_reset_fu_398", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12", "Inst_start_state" : "39", "Inst_end_state" : "39"},
					{"ID" : "23", "SubInstance" : "grp_sa_store_fu_358", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12", "Inst_start_state" : "17", "Inst_end_state" : "38"},
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "call_ln178_sa_reset_fu_398", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11", "Inst_start_state" : "39", "Inst_end_state" : "39"},
					{"ID" : "23", "SubInstance" : "grp_sa_store_fu_358", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11", "Inst_start_state" : "17", "Inst_end_state" : "38"},
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "call_ln178_sa_reset_fu_398", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10", "Inst_start_state" : "39", "Inst_end_state" : "39"},
					{"ID" : "23", "SubInstance" : "grp_sa_store_fu_358", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10", "Inst_start_state" : "17", "Inst_end_state" : "38"},
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "call_ln178_sa_reset_fu_398", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9", "Inst_start_state" : "39", "Inst_end_state" : "39"},
					{"ID" : "23", "SubInstance" : "grp_sa_store_fu_358", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9", "Inst_start_state" : "17", "Inst_end_state" : "38"},
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "call_ln178_sa_reset_fu_398", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8", "Inst_start_state" : "39", "Inst_end_state" : "39"},
					{"ID" : "23", "SubInstance" : "grp_sa_store_fu_358", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8", "Inst_start_state" : "17", "Inst_end_state" : "38"},
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "call_ln178_sa_reset_fu_398", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7", "Inst_start_state" : "39", "Inst_end_state" : "39"},
					{"ID" : "23", "SubInstance" : "grp_sa_store_fu_358", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7", "Inst_start_state" : "17", "Inst_end_state" : "38"},
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "call_ln178_sa_reset_fu_398", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6", "Inst_start_state" : "39", "Inst_end_state" : "39"},
					{"ID" : "23", "SubInstance" : "grp_sa_store_fu_358", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6", "Inst_start_state" : "17", "Inst_end_state" : "38"},
					{"ID" : "1", "SubInstance" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Port" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_sa_store_fu_358", "SubBlockPort" : ["ca_blk_n_AW", "ca_blk_n_W", "ca_blk_n_B"]}],
		"Loop" : [
			{"Name" : "TILE_ROW_TILE_COL", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "39", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state39"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"],
		"CDFG" : "mxm_execute_ursa_Pipeline_STREAM_K",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "40", "EstimateLatencyMax" : "262180",
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
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_39", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "STREAM_K", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260.mul_17s_16ns_32_1_1_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260.mul_17s_16ns_32_1_1_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260.mul_17s_16ns_32_1_1_U3", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260.mul_17s_16ns_32_1_1_U4", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260.mac_muladd_8ns_8s_20s_20_4_1_U5", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260.mac_muladd_8ns_8s_20s_20_4_1_U6", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260.mac_muladd_8ns_8s_20s_20_4_1_U7", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260.mac_muladd_8ns_8s_20s_20_4_1_U8", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260.mac_muladd_8ns_8s_20s_20_4_1_U9", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260.mac_muladd_8ns_8s_20s_20_4_1_U10", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260.mac_muladd_8ns_8s_20s_20_4_1_U11", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260.mac_muladd_8ns_8s_20s_20_4_1_U12", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260.mac_muladd_8ns_8s_20s_20_4_1_U13", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260.mac_muladd_8ns_8s_20s_20_4_1_U14", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260.mac_muladd_8ns_8s_20s_20_4_1_U15", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260.mac_muladd_8ns_8s_20s_20_4_1_U16", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260.mac_muladd_8s_8ns_20s_20_4_1_U17", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260.mac_muladd_8ns_8s_20s_20_4_1_U18", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260.mac_muladd_8s_8ns_20s_20_4_1_U19", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260.mac_muladd_8s_8ns_20s_20_4_1_U20", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_260.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sa_store_fu_358", "Parent" : "0",
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
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ln178_sa_reset_fu_398", "Parent" : "0",
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
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ap_s_axi_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aw_m_axi_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bi_m_axi_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ca_m_axi_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_14ns_14ns_28_1_1_U87", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mxm_execute_ursa {
		aw {Type I LastRead 12 FirstWrite -1}
		bi {Type I LastRead 14 FirstWrite -1}
		ca {Type O LastRead 17 FirstWrite 1}
		addr_a0 {Type I LastRead 0 FirstWrite -1}
		a0_p {Type I LastRead 0 FirstWrite -1}
		addr_b0 {Type I LastRead 0 FirstWrite -1}
		b0_q {Type I LastRead 0 FirstWrite -1}
		addr_c0 {Type I LastRead 0 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_5 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_39 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_36 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_4 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_38 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_35 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_37 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_34 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_33 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_32 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_31 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_30 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_29 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_28 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_27 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_26 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_25 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_24 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_23 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_22 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6 {Type IO LastRead -1 FirstWrite -1}}
	mxm_execute_ursa_Pipeline_STREAM_K {
		bi {Type I LastRead 14 FirstWrite -1}
		aw {Type I LastRead 12 FirstWrite -1}
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
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_5 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_39 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_36 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_4 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_38 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_35 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_37 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_34 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_33 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_32 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_31 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_30 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_29 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_28 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_27 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_26 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_25 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_24 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_23 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_22 {Type IO LastRead -1 FirstWrite -1}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21 {Type IO LastRead 14 FirstWrite 15}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20 {Type IO LastRead 15 FirstWrite 16}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19 {Type IO LastRead 16 FirstWrite 17}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18 {Type IO LastRead 17 FirstWrite 18}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17 {Type IO LastRead 13 FirstWrite 14}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16 {Type IO LastRead 12 FirstWrite 13}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15 {Type IO LastRead 13 FirstWrite 14}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14 {Type IO LastRead 14 FirstWrite 15}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13 {Type IO LastRead 14 FirstWrite 15}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12 {Type IO LastRead 11 FirstWrite 12}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11 {Type IO LastRead 10 FirstWrite 11}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10 {Type IO LastRead 11 FirstWrite 12}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9 {Type IO LastRead 15 FirstWrite 16}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8 {Type IO LastRead 12 FirstWrite 13}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7 {Type IO LastRead 9 FirstWrite 10}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6 {Type IO LastRead 8 FirstWrite 9}}
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
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6 {Type I LastRead 16 FirstWrite -1}}
	sa_reset {
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21 {Type O LastRead -1 FirstWrite 0}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20 {Type O LastRead -1 FirstWrite 0}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19 {Type O LastRead -1 FirstWrite 0}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18 {Type O LastRead -1 FirstWrite 0}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17 {Type O LastRead -1 FirstWrite 0}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16 {Type O LastRead -1 FirstWrite 0}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15 {Type O LastRead -1 FirstWrite 0}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14 {Type O LastRead -1 FirstWrite 0}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13 {Type O LastRead -1 FirstWrite 0}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12 {Type O LastRead -1 FirstWrite 0}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11 {Type O LastRead -1 FirstWrite 0}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10 {Type O LastRead -1 FirstWrite 0}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9 {Type O LastRead -1 FirstWrite 0}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8 {Type O LastRead -1 FirstWrite 0}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7 {Type O LastRead -1 FirstWrite 0}
		mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "70379747901515"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "-1881178036"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	aw { m_axi {  { m_axi_aw_AWVALID VALID 1 1 }  { m_axi_aw_AWREADY READY 0 1 }  { m_axi_aw_AWADDR ADDR 1 32 }  { m_axi_aw_AWID ID 1 1 }  { m_axi_aw_AWLEN SIZE 1 8 }  { m_axi_aw_AWSIZE BURST 1 3 }  { m_axi_aw_AWBURST LOCK 1 2 }  { m_axi_aw_AWLOCK CACHE 1 2 }  { m_axi_aw_AWCACHE PROT 1 4 }  { m_axi_aw_AWPROT QOS 1 3 }  { m_axi_aw_AWQOS REGION 1 4 }  { m_axi_aw_AWREGION USER 1 4 }  { m_axi_aw_AWUSER DATA 1 1 }  { m_axi_aw_WVALID VALID 1 1 }  { m_axi_aw_WREADY READY 0 1 }  { m_axi_aw_WDATA FIFONUM 1 32 }  { m_axi_aw_WSTRB STRB 1 4 }  { m_axi_aw_WLAST LAST 1 1 }  { m_axi_aw_WID ID 1 1 }  { m_axi_aw_WUSER DATA 1 1 }  { m_axi_aw_ARVALID VALID 1 1 }  { m_axi_aw_ARREADY READY 0 1 }  { m_axi_aw_ARADDR ADDR 1 32 }  { m_axi_aw_ARID ID 1 1 }  { m_axi_aw_ARLEN SIZE 1 8 }  { m_axi_aw_ARSIZE BURST 1 3 }  { m_axi_aw_ARBURST LOCK 1 2 }  { m_axi_aw_ARLOCK CACHE 1 2 }  { m_axi_aw_ARCACHE PROT 1 4 }  { m_axi_aw_ARPROT QOS 1 3 }  { m_axi_aw_ARQOS REGION 1 4 }  { m_axi_aw_ARREGION USER 1 4 }  { m_axi_aw_ARUSER DATA 1 1 }  { m_axi_aw_RVALID VALID 0 1 }  { m_axi_aw_RREADY READY 1 1 }  { m_axi_aw_RDATA FIFONUM 0 32 }  { m_axi_aw_RLAST LAST 0 1 }  { m_axi_aw_RID ID 0 1 }  { m_axi_aw_RUSER DATA 0 1 }  { m_axi_aw_RRESP RESP 0 2 }  { m_axi_aw_BVALID VALID 0 1 }  { m_axi_aw_BREADY READY 1 1 }  { m_axi_aw_BRESP RESP 0 2 }  { m_axi_aw_BID ID 0 1 }  { m_axi_aw_BUSER DATA 0 1 } } }
	bi { m_axi {  { m_axi_bi_AWVALID VALID 1 1 }  { m_axi_bi_AWREADY READY 0 1 }  { m_axi_bi_AWADDR ADDR 1 32 }  { m_axi_bi_AWID ID 1 1 }  { m_axi_bi_AWLEN SIZE 1 8 }  { m_axi_bi_AWSIZE BURST 1 3 }  { m_axi_bi_AWBURST LOCK 1 2 }  { m_axi_bi_AWLOCK CACHE 1 2 }  { m_axi_bi_AWCACHE PROT 1 4 }  { m_axi_bi_AWPROT QOS 1 3 }  { m_axi_bi_AWQOS REGION 1 4 }  { m_axi_bi_AWREGION USER 1 4 }  { m_axi_bi_AWUSER DATA 1 1 }  { m_axi_bi_WVALID VALID 1 1 }  { m_axi_bi_WREADY READY 0 1 }  { m_axi_bi_WDATA FIFONUM 1 32 }  { m_axi_bi_WSTRB STRB 1 4 }  { m_axi_bi_WLAST LAST 1 1 }  { m_axi_bi_WID ID 1 1 }  { m_axi_bi_WUSER DATA 1 1 }  { m_axi_bi_ARVALID VALID 1 1 }  { m_axi_bi_ARREADY READY 0 1 }  { m_axi_bi_ARADDR ADDR 1 32 }  { m_axi_bi_ARID ID 1 1 }  { m_axi_bi_ARLEN SIZE 1 8 }  { m_axi_bi_ARSIZE BURST 1 3 }  { m_axi_bi_ARBURST LOCK 1 2 }  { m_axi_bi_ARLOCK CACHE 1 2 }  { m_axi_bi_ARCACHE PROT 1 4 }  { m_axi_bi_ARPROT QOS 1 3 }  { m_axi_bi_ARQOS REGION 1 4 }  { m_axi_bi_ARREGION USER 1 4 }  { m_axi_bi_ARUSER DATA 1 1 }  { m_axi_bi_RVALID VALID 0 1 }  { m_axi_bi_RREADY READY 1 1 }  { m_axi_bi_RDATA FIFONUM 0 32 }  { m_axi_bi_RLAST LAST 0 1 }  { m_axi_bi_RID ID 0 1 }  { m_axi_bi_RUSER DATA 0 1 }  { m_axi_bi_RRESP RESP 0 2 }  { m_axi_bi_BVALID VALID 0 1 }  { m_axi_bi_BREADY READY 1 1 }  { m_axi_bi_BRESP RESP 0 2 }  { m_axi_bi_BID ID 0 1 }  { m_axi_bi_BUSER DATA 0 1 } } }
	ca { m_axi {  { m_axi_ca_AWVALID VALID 1 1 }  { m_axi_ca_AWREADY READY 0 1 }  { m_axi_ca_AWADDR ADDR 1 32 }  { m_axi_ca_AWID ID 1 1 }  { m_axi_ca_AWLEN SIZE 1 8 }  { m_axi_ca_AWSIZE BURST 1 3 }  { m_axi_ca_AWBURST LOCK 1 2 }  { m_axi_ca_AWLOCK CACHE 1 2 }  { m_axi_ca_AWCACHE PROT 1 4 }  { m_axi_ca_AWPROT QOS 1 3 }  { m_axi_ca_AWQOS REGION 1 4 }  { m_axi_ca_AWREGION USER 1 4 }  { m_axi_ca_AWUSER DATA 1 1 }  { m_axi_ca_WVALID VALID 1 1 }  { m_axi_ca_WREADY READY 0 1 }  { m_axi_ca_WDATA FIFONUM 1 32 }  { m_axi_ca_WSTRB STRB 1 4 }  { m_axi_ca_WLAST LAST 1 1 }  { m_axi_ca_WID ID 1 1 }  { m_axi_ca_WUSER DATA 1 1 }  { m_axi_ca_ARVALID VALID 1 1 }  { m_axi_ca_ARREADY READY 0 1 }  { m_axi_ca_ARADDR ADDR 1 32 }  { m_axi_ca_ARID ID 1 1 }  { m_axi_ca_ARLEN SIZE 1 8 }  { m_axi_ca_ARSIZE BURST 1 3 }  { m_axi_ca_ARBURST LOCK 1 2 }  { m_axi_ca_ARLOCK CACHE 1 2 }  { m_axi_ca_ARCACHE PROT 1 4 }  { m_axi_ca_ARPROT QOS 1 3 }  { m_axi_ca_ARQOS REGION 1 4 }  { m_axi_ca_ARREGION USER 1 4 }  { m_axi_ca_ARUSER DATA 1 1 }  { m_axi_ca_RVALID VALID 0 1 }  { m_axi_ca_RREADY READY 1 1 }  { m_axi_ca_RDATA FIFONUM 0 32 }  { m_axi_ca_RLAST LAST 0 1 }  { m_axi_ca_RID ID 0 1 }  { m_axi_ca_RUSER DATA 0 1 }  { m_axi_ca_RRESP RESP 0 2 }  { m_axi_ca_BVALID VALID 0 1 }  { m_axi_ca_BREADY READY 1 1 }  { m_axi_ca_BRESP RESP 0 2 }  { m_axi_ca_BID ID 0 1 }  { m_axi_ca_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict aw {NUM_READ_OUTSTANDING 8 NUM_WRITE_OUTSTANDING 8 MAX_READ_BURST_LENGTH 64 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict bi {NUM_READ_OUTSTANDING 8 NUM_WRITE_OUTSTANDING 8 MAX_READ_BURST_LENGTH 64 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict ca {NUM_READ_OUTSTANDING 8 NUM_WRITE_OUTSTANDING 8 MAX_READ_BURST_LENGTH 64 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ aw 1 }
	{ bi 1 }
	{ ca 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ aw 1 }
	{ bi 1 }
	{ ca 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
