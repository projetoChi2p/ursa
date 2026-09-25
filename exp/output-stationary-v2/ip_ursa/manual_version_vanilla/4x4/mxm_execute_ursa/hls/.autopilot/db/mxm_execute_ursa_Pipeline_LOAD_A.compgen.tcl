# This script segment is generated automatically by AutoPilot

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
    id 5 \
    name a_buf_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename a_buf_3 \
    op interface \
    ports { a_buf_3_address0 { O 6 vector } a_buf_3_ce0 { O 1 bit } a_buf_3_we0 { O 1 bit } a_buf_3_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'a_buf_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6 \
    name a_buf_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename a_buf_2 \
    op interface \
    ports { a_buf_2_address0 { O 6 vector } a_buf_2_ce0 { O 1 bit } a_buf_2_we0 { O 1 bit } a_buf_2_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'a_buf_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7 \
    name a_buf_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename a_buf_1 \
    op interface \
    ports { a_buf_1_address0 { O 6 vector } a_buf_1_ce0 { O 1 bit } a_buf_1_we0 { O 1 bit } a_buf_1_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'a_buf_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 8 \
    name a_buf \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename a_buf \
    op interface \
    ports { a_buf_address0 { O 6 vector } a_buf_ce0 { O 1 bit } a_buf_we0 { O 1 bit } a_buf_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'a_buf'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name aw \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_aw \
    op interface \
    ports { m_axi_aw_AWVALID { O 1 bit } m_axi_aw_AWREADY { I 1 bit } m_axi_aw_AWADDR { O 32 vector } m_axi_aw_AWID { O 1 vector } m_axi_aw_AWLEN { O 32 vector } m_axi_aw_AWSIZE { O 3 vector } m_axi_aw_AWBURST { O 2 vector } m_axi_aw_AWLOCK { O 2 vector } m_axi_aw_AWCACHE { O 4 vector } m_axi_aw_AWPROT { O 3 vector } m_axi_aw_AWQOS { O 4 vector } m_axi_aw_AWREGION { O 4 vector } m_axi_aw_AWUSER { O 1 vector } m_axi_aw_WVALID { O 1 bit } m_axi_aw_WREADY { I 1 bit } m_axi_aw_WDATA { O 32 vector } m_axi_aw_WSTRB { O 4 vector } m_axi_aw_WLAST { O 1 bit } m_axi_aw_WID { O 1 vector } m_axi_aw_WUSER { O 1 vector } m_axi_aw_ARVALID { O 1 bit } m_axi_aw_ARREADY { I 1 bit } m_axi_aw_ARADDR { O 32 vector } m_axi_aw_ARID { O 1 vector } m_axi_aw_ARLEN { O 32 vector } m_axi_aw_ARSIZE { O 3 vector } m_axi_aw_ARBURST { O 2 vector } m_axi_aw_ARLOCK { O 2 vector } m_axi_aw_ARCACHE { O 4 vector } m_axi_aw_ARPROT { O 3 vector } m_axi_aw_ARQOS { O 4 vector } m_axi_aw_ARREGION { O 4 vector } m_axi_aw_ARUSER { O 1 vector } m_axi_aw_RVALID { I 1 bit } m_axi_aw_RREADY { O 1 bit } m_axi_aw_RDATA { I 32 vector } m_axi_aw_RLAST { I 1 bit } m_axi_aw_RID { I 1 vector } m_axi_aw_RFIFONUM { I 10 vector } m_axi_aw_RUSER { I 1 vector } m_axi_aw_RRESP { I 2 vector } m_axi_aw_BVALID { I 1 bit } m_axi_aw_BREADY { O 1 bit } m_axi_aw_BRESP { I 2 vector } m_axi_aw_BID { I 1 vector } m_axi_aw_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name stride_a \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_stride_a \
    op interface \
    ports { stride_a { I 17 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name sub_i44_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sub_i44_cast \
    op interface \
    ports { sub_i44_cast { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name sext_ln106 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln106 \
    op interface \
    ports { sext_ln106 { I 30 vector } } \
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


