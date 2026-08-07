# This script segment is generated automatically by AutoPilot

set name mxm_execute_ursa_mul_16ns_16ns_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 576 \
    name c_tile_acc \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename c_tile_acc \
    op interface \
    ports { c_tile_acc_address0 { O 6 vector } c_tile_acc_ce0 { O 1 bit } c_tile_acc_q0 { I 32 vector } c_tile_acc_address1 { O 6 vector } c_tile_acc_ce1 { O 1 bit } c_tile_acc_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_tile_acc'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 568 \
    name ca \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ca \
    op interface \
    ports { m_axi_ca_AWVALID { O 1 bit } m_axi_ca_AWREADY { I 1 bit } m_axi_ca_AWADDR { O 64 vector } m_axi_ca_AWID { O 1 vector } m_axi_ca_AWLEN { O 32 vector } m_axi_ca_AWSIZE { O 3 vector } m_axi_ca_AWBURST { O 2 vector } m_axi_ca_AWLOCK { O 2 vector } m_axi_ca_AWCACHE { O 4 vector } m_axi_ca_AWPROT { O 3 vector } m_axi_ca_AWQOS { O 4 vector } m_axi_ca_AWREGION { O 4 vector } m_axi_ca_AWUSER { O 1 vector } m_axi_ca_WVALID { O 1 bit } m_axi_ca_WREADY { I 1 bit } m_axi_ca_WDATA { O 32 vector } m_axi_ca_WSTRB { O 4 vector } m_axi_ca_WLAST { O 1 bit } m_axi_ca_WID { O 1 vector } m_axi_ca_WUSER { O 1 vector } m_axi_ca_ARVALID { O 1 bit } m_axi_ca_ARREADY { I 1 bit } m_axi_ca_ARADDR { O 64 vector } m_axi_ca_ARID { O 1 vector } m_axi_ca_ARLEN { O 32 vector } m_axi_ca_ARSIZE { O 3 vector } m_axi_ca_ARBURST { O 2 vector } m_axi_ca_ARLOCK { O 2 vector } m_axi_ca_ARCACHE { O 4 vector } m_axi_ca_ARPROT { O 3 vector } m_axi_ca_ARQOS { O 4 vector } m_axi_ca_ARREGION { O 4 vector } m_axi_ca_ARUSER { O 1 vector } m_axi_ca_RVALID { I 1 bit } m_axi_ca_RREADY { O 1 bit } m_axi_ca_RDATA { I 32 vector } m_axi_ca_RLAST { I 1 bit } m_axi_ca_RID { I 1 vector } m_axi_ca_RFIFONUM { I 10 vector } m_axi_ca_RUSER { I 1 vector } m_axi_ca_RRESP { I 2 vector } m_axi_ca_BVALID { I 1 bit } m_axi_ca_BREADY { O 1 bit } m_axi_ca_BRESP { I 2 vector } m_axi_ca_BID { I 1 vector } m_axi_ca_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 569 \
    name cmp124_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp124_7 \
    op interface \
    ports { cmp124_7 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 570 \
    name cmp124_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp124_6 \
    op interface \
    ports { cmp124_6 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 571 \
    name cmp124_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp124_5 \
    op interface \
    ports { cmp124_5 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 572 \
    name cmp124_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp124_4 \
    op interface \
    ports { cmp124_4 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 573 \
    name cmp124_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp124_3 \
    op interface \
    ports { cmp124_3 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 574 \
    name cmp124_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp124_2 \
    op interface \
    ports { cmp124_2 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 575 \
    name cmp124_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp124_1 \
    op interface \
    ports { cmp124_1 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 577 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 13 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 578 \
    name a0_p \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a0_p \
    op interface \
    ports { a0_p { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 579 \
    name zext_ln309 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln309 \
    op interface \
    ports { zext_ln309 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 580 \
    name cmp124 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp124 \
    op interface \
    ports { cmp124 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 581 \
    name base_col_B_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_base_col_B_cast \
    op interface \
    ports { base_col_B_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 582 \
    name addr_c0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_addr_c0 \
    op interface \
    ports { addr_c0 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 583 \
    name zext_ln391 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln391 \
    op interface \
    ports { zext_ln391 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 584 \
    name zext_ln391_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln391_1 \
    op interface \
    ports { zext_ln391_1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 585 \
    name zext_ln391_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln391_2 \
    op interface \
    ports { zext_ln391_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 586 \
    name zext_ln391_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln391_3 \
    op interface \
    ports { zext_ln391_3 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 587 \
    name zext_ln391_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln391_4 \
    op interface \
    ports { zext_ln391_4 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 588 \
    name zext_ln391_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln391_5 \
    op interface \
    ports { zext_ln391_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 589 \
    name zext_ln382 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln382 \
    op interface \
    ports { zext_ln382 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName mxm_execute_ursa_flow_control_loop_pipe_sequential_init_U
set CompName mxm_execute_ursa_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix mxm_execute_ursa_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


