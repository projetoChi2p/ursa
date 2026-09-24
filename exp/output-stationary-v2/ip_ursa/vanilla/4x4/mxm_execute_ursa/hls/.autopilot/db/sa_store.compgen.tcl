# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name ca \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ca \
    op interface \
    ports { m_axi_ca_AWVALID { O 1 bit } m_axi_ca_AWREADY { I 1 bit } m_axi_ca_AWADDR { O 32 vector } m_axi_ca_AWID { O 1 vector } m_axi_ca_AWLEN { O 32 vector } m_axi_ca_AWSIZE { O 3 vector } m_axi_ca_AWBURST { O 2 vector } m_axi_ca_AWLOCK { O 2 vector } m_axi_ca_AWCACHE { O 4 vector } m_axi_ca_AWPROT { O 3 vector } m_axi_ca_AWQOS { O 4 vector } m_axi_ca_AWREGION { O 4 vector } m_axi_ca_AWUSER { O 1 vector } m_axi_ca_WVALID { O 1 bit } m_axi_ca_WREADY { I 1 bit } m_axi_ca_WDATA { O 32 vector } m_axi_ca_WSTRB { O 4 vector } m_axi_ca_WLAST { O 1 bit } m_axi_ca_WID { O 1 vector } m_axi_ca_WUSER { O 1 vector } m_axi_ca_ARVALID { O 1 bit } m_axi_ca_ARREADY { I 1 bit } m_axi_ca_ARADDR { O 32 vector } m_axi_ca_ARID { O 1 vector } m_axi_ca_ARLEN { O 32 vector } m_axi_ca_ARSIZE { O 3 vector } m_axi_ca_ARBURST { O 2 vector } m_axi_ca_ARLOCK { O 2 vector } m_axi_ca_ARCACHE { O 4 vector } m_axi_ca_ARPROT { O 3 vector } m_axi_ca_ARQOS { O 4 vector } m_axi_ca_ARREGION { O 4 vector } m_axi_ca_ARUSER { O 1 vector } m_axi_ca_RVALID { I 1 bit } m_axi_ca_RREADY { O 1 bit } m_axi_ca_RDATA { I 32 vector } m_axi_ca_RLAST { I 1 bit } m_axi_ca_RID { I 1 vector } m_axi_ca_RFIFONUM { I 10 vector } m_axi_ca_RUSER { I 1 vector } m_axi_ca_RRESP { I 2 vector } m_axi_ca_BVALID { I 1 bit } m_axi_ca_BREADY { O 1 bit } m_axi_ca_BRESP { I 2 vector } m_axi_ca_BID { I 1 vector } m_axi_ca_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name out_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_r \
    op interface \
    ports { out_r { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name b0_q \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b0_q \
    op interface \
    ports { b0_q { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_15 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_15 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_14 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_14 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_13 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_13 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_12 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_12 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_11 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_11 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_10 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_10 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_9 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_9 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_8 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_8 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_7 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_7 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_6 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_6 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_5 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_5 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_4 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_4 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_3 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_3 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_2 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_2 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_1 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_1 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s { I 20 vector } } \
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


