# This script segment is generated automatically by AutoPilot

set name mxm_execute_ursa_mul_17s_16ns_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set id 5
set name mxm_execute_ursa_mac_muladd_8ns_8s_20s_20_4_1
set corename simcore_mac
set op mac
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 8
set in0_signed 0
set in1_width 8
set in1_signed 1
set in2_width 20
set in2_signed 1
set ce_width 1
set ce_signed 0
set out_width 20
set arg_lists {i0 {8 0 +} i1 {8 1 +} m {16 1 +} i2 {20 1 +} p {20 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3 ALLOW_PRAGMA 1
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 17
set name mxm_execute_ursa_mac_muladd_8s_8ns_20s_20_4_1
set corename simcore_mac
set op mac
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 8
set in0_signed 1
set in1_width 8
set in1_signed 0
set in2_width 20
set in2_signed 1
set ce_width 1
set ce_signed 0
set out_width 20
set arg_lists {i0 {8 1 +} i1 {8 0 +} m {16 1 +} i2 {20 1 +} p {20 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3 ALLOW_PRAGMA 1
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name bi \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bi \
    op interface \
    ports { m_axi_bi_AWVALID { O 1 bit } m_axi_bi_AWREADY { I 1 bit } m_axi_bi_AWADDR { O 32 vector } m_axi_bi_AWID { O 1 vector } m_axi_bi_AWLEN { O 32 vector } m_axi_bi_AWSIZE { O 3 vector } m_axi_bi_AWBURST { O 2 vector } m_axi_bi_AWLOCK { O 2 vector } m_axi_bi_AWCACHE { O 4 vector } m_axi_bi_AWPROT { O 3 vector } m_axi_bi_AWQOS { O 4 vector } m_axi_bi_AWREGION { O 4 vector } m_axi_bi_AWUSER { O 1 vector } m_axi_bi_WVALID { O 1 bit } m_axi_bi_WREADY { I 1 bit } m_axi_bi_WDATA { O 8 vector } m_axi_bi_WSTRB { O 1 vector } m_axi_bi_WLAST { O 1 bit } m_axi_bi_WID { O 1 vector } m_axi_bi_WUSER { O 1 vector } m_axi_bi_ARVALID { O 1 bit } m_axi_bi_ARREADY { I 1 bit } m_axi_bi_ARADDR { O 32 vector } m_axi_bi_ARID { O 1 vector } m_axi_bi_ARLEN { O 32 vector } m_axi_bi_ARSIZE { O 3 vector } m_axi_bi_ARBURST { O 2 vector } m_axi_bi_ARLOCK { O 2 vector } m_axi_bi_ARCACHE { O 4 vector } m_axi_bi_ARPROT { O 3 vector } m_axi_bi_ARQOS { O 4 vector } m_axi_bi_ARREGION { O 4 vector } m_axi_bi_ARUSER { O 1 vector } m_axi_bi_RVALID { I 1 bit } m_axi_bi_RREADY { O 1 bit } m_axi_bi_RDATA { I 8 vector } m_axi_bi_RLAST { I 1 bit } m_axi_bi_RID { I 1 vector } m_axi_bi_RFIFONUM { I 12 vector } m_axi_bi_RUSER { I 1 vector } m_axi_bi_RRESP { I 2 vector } m_axi_bi_BVALID { I 1 bit } m_axi_bi_BREADY { O 1 bit } m_axi_bi_BRESP { I 2 vector } m_axi_bi_BID { I 1 vector } m_axi_bi_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name aw \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_aw \
    op interface \
    ports { m_axi_aw_AWVALID { O 1 bit } m_axi_aw_AWREADY { I 1 bit } m_axi_aw_AWADDR { O 32 vector } m_axi_aw_AWID { O 1 vector } m_axi_aw_AWLEN { O 32 vector } m_axi_aw_AWSIZE { O 3 vector } m_axi_aw_AWBURST { O 2 vector } m_axi_aw_AWLOCK { O 2 vector } m_axi_aw_AWCACHE { O 4 vector } m_axi_aw_AWPROT { O 3 vector } m_axi_aw_AWQOS { O 4 vector } m_axi_aw_AWREGION { O 4 vector } m_axi_aw_AWUSER { O 1 vector } m_axi_aw_WVALID { O 1 bit } m_axi_aw_WREADY { I 1 bit } m_axi_aw_WDATA { O 8 vector } m_axi_aw_WSTRB { O 1 vector } m_axi_aw_WLAST { O 1 bit } m_axi_aw_WID { O 1 vector } m_axi_aw_WUSER { O 1 vector } m_axi_aw_ARVALID { O 1 bit } m_axi_aw_ARREADY { I 1 bit } m_axi_aw_ARADDR { O 32 vector } m_axi_aw_ARID { O 1 vector } m_axi_aw_ARLEN { O 32 vector } m_axi_aw_ARSIZE { O 3 vector } m_axi_aw_ARBURST { O 2 vector } m_axi_aw_ARLOCK { O 2 vector } m_axi_aw_ARCACHE { O 4 vector } m_axi_aw_ARPROT { O 3 vector } m_axi_aw_ARQOS { O 4 vector } m_axi_aw_ARREGION { O 4 vector } m_axi_aw_ARUSER { O 1 vector } m_axi_aw_RVALID { I 1 bit } m_axi_aw_RREADY { O 1 bit } m_axi_aw_RDATA { I 8 vector } m_axi_aw_RLAST { I 1 bit } m_axi_aw_RID { I 1 vector } m_axi_aw_RFIFONUM { I 12 vector } m_axi_aw_RUSER { I 1 vector } m_axi_aw_RRESP { I 2 vector } m_axi_aw_BVALID { I 1 bit } m_axi_aw_BREADY { O 1 bit } m_axi_aw_BRESP { I 2 vector } m_axi_aw_BID { I 1 vector } m_axi_aw_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name sub22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sub22 \
    op interface \
    ports { sub22 { I 17 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name zext_ln129 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln129 \
    op interface \
    ports { zext_ln129 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name zext_ln132 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln132 \
    op interface \
    ports { zext_ln132 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name m \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m \
    op interface \
    ports { m { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name select_ln138_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln138_1 \
    op interface \
    ports { select_ln138_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name addr_a0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_addr_a0 \
    op interface \
    ports { addr_a0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name zext_ln132_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln132_1 \
    op interface \
    ports { zext_ln132_1 { I 18 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name zext_ln51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln51 \
    op interface \
    ports { zext_ln51 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name addr_b0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_addr_b0 \
    op interface \
    ports { addr_b0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name select_ln135 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln135 \
    op interface \
    ports { select_ln135 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6_o_ap_vld { O 1 bit } } \
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


