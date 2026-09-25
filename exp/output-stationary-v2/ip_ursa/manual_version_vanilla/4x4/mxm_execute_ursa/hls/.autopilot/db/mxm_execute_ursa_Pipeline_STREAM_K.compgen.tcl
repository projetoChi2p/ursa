# This script segment is generated automatically by AutoPilot

set id 18
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


set id 19
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

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 39 \
    name a_buf \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename a_buf \
    op interface \
    ports { a_buf_address0 { O 6 vector } a_buf_ce0 { O 1 bit } a_buf_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'a_buf'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 42 \
    name a_buf_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename a_buf_1 \
    op interface \
    ports { a_buf_1_address0 { O 6 vector } a_buf_1_ce0 { O 1 bit } a_buf_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'a_buf_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 44 \
    name a_buf_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename a_buf_2 \
    op interface \
    ports { a_buf_2_address0 { O 6 vector } a_buf_2_ce0 { O 1 bit } a_buf_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'a_buf_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 46 \
    name a_buf_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename a_buf_3 \
    op interface \
    ports { a_buf_3_address0 { O 6 vector } a_buf_3_ce0 { O 1 bit } a_buf_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'a_buf_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 47 \
    name b_buf \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename b_buf \
    op interface \
    ports { b_buf_address0 { O 8 vector } b_buf_ce0 { O 1 bit } b_buf_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'b_buf'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 48 \
    name b_buf_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename b_buf_1 \
    op interface \
    ports { b_buf_1_address0 { O 8 vector } b_buf_1_ce0 { O 1 bit } b_buf_1_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'b_buf_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 50 \
    name b_buf_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename b_buf_2 \
    op interface \
    ports { b_buf_2_address0 { O 8 vector } b_buf_2_ce0 { O 1 bit } b_buf_2_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'b_buf_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 52 \
    name b_buf_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename b_buf_3 \
    op interface \
    ports { b_buf_3_address0 { O 8 vector } b_buf_3_ce0 { O 1 bit } b_buf_3_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'b_buf_3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name add30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add30 \
    op interface \
    ports { add30 { I 17 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
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
    id 38 \
    name add_ln53_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln53_2 \
    op interface \
    ports { add_ln53_2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name add_i_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_i_1 \
    op interface \
    ports { add_i_1 { I 17 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name empty_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_21 \
    op interface \
    ports { empty_21 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name add_i_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_i_2 \
    op interface \
    ports { add_i_2 { I 17 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name add_ln197 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln197 \
    op interface \
    ports { add_ln197 { I 17 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name empty_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_22 \
    op interface \
    ports { empty_22 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_15 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_15 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_15_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_15_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_15_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_14 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_14 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_14_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_14_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_14_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_13 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_13 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_13_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_13_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_13_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_12 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_12 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_12_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_12_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_12_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_11 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_11 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_11_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_11_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_11_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_10 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_10 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_10_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_10_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_10_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_9 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_9 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_9_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_9_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_9_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_8 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_8 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_8_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_8_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_8_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_7 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_7 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_7_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_7_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_7_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_6 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_6 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_6_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_6_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_6_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_5 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_5 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_5_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_5_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_5_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_4 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_4 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_4_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_4_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_4_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_3 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_3_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_3_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_2 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_2_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_2_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_1 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_1_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_1_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_o_ap_vld { O 1 bit } } \
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


