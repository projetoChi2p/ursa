# This script segment is generated automatically by AutoPilot

set name mxm_execute_ursa_mul_17s_16ns_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set id 10
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


set id 71
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
    id 94 \
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
    id 95 \
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
    id 96 \
    name sub24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sub24 \
    op interface \
    ports { sub24 { I 17 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name zext_ln265 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln265 \
    op interface \
    ports { zext_ln265 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name m_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_cast \
    op interface \
    ports { m_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name m_cast50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_cast50 \
    op interface \
    ports { m_cast50 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
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
    id 101 \
    name m_cast46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_cast46 \
    op interface \
    ports { m_cast46 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name mul_ln267 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mul_ln267 \
    op interface \
    ports { mul_ln267 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
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
    id 104 \
    name m_cast45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_cast45 \
    op interface \
    ports { m_cast45 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name m_cast61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m_cast61 \
    op interface \
    ports { m_cast61 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name zext_ln49_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln49_1 \
    op interface \
    ports { zext_ln49_1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
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
    id 108 \
    name add_ln270 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln270 \
    op interface \
    ports { add_ln270 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_69 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_69 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_69_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_69_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_69_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_68 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_68 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_68_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_68_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_68_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_67 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_67 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_67_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_67_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_67_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_66 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_66 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_66_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_66_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_66_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_64 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_64 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_64_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_64_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_64_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_63 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_63 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_63_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_63_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_63_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_62 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_62 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_62_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_62_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_62_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_61 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_61 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_61_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_61_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_61_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_60 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_60 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_60_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_60_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_60_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_59 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_59 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_59_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_59_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_59_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_58 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_58 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_58_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_58_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_58_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_57 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_57 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_57_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_57_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_57_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_56 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_56 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_56_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_56_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_56_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_55 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_55 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_55_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_55_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_55_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_53 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_53 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_53_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_53_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_53_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_52 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_52 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_52_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_52_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_52_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_51 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_51 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_51_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_51_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_51_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_50 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_50 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_50_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_50_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_50_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_49 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_49 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_49_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_49_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_49_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_48 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_48 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_48_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_48_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_48_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_47 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_47 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_47_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_47_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_47_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_46 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_46 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_46_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_46_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_46_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_45 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_45 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_45_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_45_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_45_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_44 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_44 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_44_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_44_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_44_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_42 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_42 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_42_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_42_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_42_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_41 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_41 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_41_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_41_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_41_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_40 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_40 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_40_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_40_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_40_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_39 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_39 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_39_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_39_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_39_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_38 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_38 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_38_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_38_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_38_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_37 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_37 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_37_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_37_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_37_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_36 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_36 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_36_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_36_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_36_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_35 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_35 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_35_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_35_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_35_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_34 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_34 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_34_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_34_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_34_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_33 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_33 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_33_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_33_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_33_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_31 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_31 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_31_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_31_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_31_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_30 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_30 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_30_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_30_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_30_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_29 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_29 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_29_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_29_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_29_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_28 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_28 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_28_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_28_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_28_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_27 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_27 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_27_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_27_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_27_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_26 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_26 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_26_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_26_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_26_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_25 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_25 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_25_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_25_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_25_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_24 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_24 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_24_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_24_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_24_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_23 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_23 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_23_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_23_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_23_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_22 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_22 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_22_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_22_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_22_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
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
    id 154 \
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
    id 155 \
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
    id 156 \
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
    id 157 \
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
    id 158 \
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
    id 159 \
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
    id 160 \
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
    id 161 \
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
    id 162 \
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
    id 163 \
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
    id 164 \
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
    id 165 \
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
    id 166 \
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
    id 167 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_5 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_5 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_5_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_5_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_5_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_4 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_4 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_4_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_4_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_4_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_232 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_232 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_232_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_232_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_232_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_231 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_231 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_231_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_231_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_231_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_230 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_230 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_230_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_230_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_230_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_229 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_229 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_229_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_229_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_229_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_228 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_228 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_228_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_228_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_228_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_227 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_227 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_227_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_227_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_227_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_226 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_226 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_226_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_226_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_226_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
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
    id 181 \
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
    id 182 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_32 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_32 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_32_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_32_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_32_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_43 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_43 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_43_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_43_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_43_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_54 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_54 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_54_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_54_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_54_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_65 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_65 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_65_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_65_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_65_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_333 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_333 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_333_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_333_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_333_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_249 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_249 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_249_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_249_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_249_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_225 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_225 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_225_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_225_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_225_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_224 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_224 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_224_i { I 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_224_o { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_224_o_ap_vld { O 1 bit } } \
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


