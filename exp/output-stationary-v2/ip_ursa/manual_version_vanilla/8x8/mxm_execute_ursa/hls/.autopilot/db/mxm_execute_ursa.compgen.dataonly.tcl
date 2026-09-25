# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_ap {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
ap_return { 
	dir o
	width 8
	depth 1
	mode ap_ctrl_hs
	offset 16
	offset_end 0
}
a0_p { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
b0_q { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
m { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
interrupt {
}
}
dict set axilite_register_dict ap $port_ap


set port_control {
addr_a0 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
addr_b0 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
addr_c0 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
}
dict set axilite_register_dict control $port_control


