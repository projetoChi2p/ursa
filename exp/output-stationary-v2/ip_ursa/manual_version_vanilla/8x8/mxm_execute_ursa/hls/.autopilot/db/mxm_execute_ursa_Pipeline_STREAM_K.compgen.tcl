# This script segment is generated automatically by AutoPilot

set id 26
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


set id 27
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
    id 95 \
    name a_buf \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename a_buf \
    op interface \
    ports { a_buf_address0 { O 5 vector } a_buf_ce0 { O 1 bit } a_buf_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'a_buf'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 98 \
    name a_buf_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename a_buf_1 \
    op interface \
    ports { a_buf_1_address0 { O 5 vector } a_buf_1_ce0 { O 1 bit } a_buf_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'a_buf_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 100 \
    name a_buf_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename a_buf_2 \
    op interface \
    ports { a_buf_2_address0 { O 5 vector } a_buf_2_ce0 { O 1 bit } a_buf_2_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'a_buf_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 102 \
    name a_buf_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename a_buf_3 \
    op interface \
    ports { a_buf_3_address0 { O 5 vector } a_buf_3_ce0 { O 1 bit } a_buf_3_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'a_buf_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 104 \
    name a_buf_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename a_buf_4 \
    op interface \
    ports { a_buf_4_address0 { O 5 vector } a_buf_4_ce0 { O 1 bit } a_buf_4_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'a_buf_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 106 \
    name a_buf_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename a_buf_5 \
    op interface \
    ports { a_buf_5_address0 { O 5 vector } a_buf_5_ce0 { O 1 bit } a_buf_5_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'a_buf_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 108 \
    name a_buf_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename a_buf_6 \
    op interface \
    ports { a_buf_6_address0 { O 5 vector } a_buf_6_ce0 { O 1 bit } a_buf_6_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'a_buf_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 110 \
    name a_buf_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename a_buf_7 \
    op interface \
    ports { a_buf_7_address0 { O 5 vector } a_buf_7_ce0 { O 1 bit } a_buf_7_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'a_buf_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 111 \
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
    id 112 \
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
    id 114 \
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
    id 116 \
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


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 118 \
    name b_buf_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename b_buf_4 \
    op interface \
    ports { b_buf_4_address0 { O 8 vector } b_buf_4_ce0 { O 1 bit } b_buf_4_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'b_buf_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 120 \
    name b_buf_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename b_buf_5 \
    op interface \
    ports { b_buf_5_address0 { O 8 vector } b_buf_5_ce0 { O 1 bit } b_buf_5_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'b_buf_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 122 \
    name b_buf_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename b_buf_6 \
    op interface \
    ports { b_buf_6_address0 { O 8 vector } b_buf_6_ce0 { O 1 bit } b_buf_6_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'b_buf_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 124 \
    name b_buf_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename b_buf_7 \
    op interface \
    ports { b_buf_7_address0 { O 8 vector } b_buf_7_ce0 { O 1 bit } b_buf_7_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'b_buf_7'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
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
    id 93 \
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
    id 94 \
    name add_ln53_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln53_6 \
    op interface \
    ports { add_ln53_6 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
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
    id 97 \
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
    id 99 \
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
    id 101 \
    name add_i_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_i_3 \
    op interface \
    ports { add_i_3 { I 17 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name add_i_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_i_4 \
    op interface \
    ports { add_i_4 { I 17 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name add_i_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_i_5 \
    op interface \
    ports { add_i_5 { I 17 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name add_i_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_i_6 \
    op interface \
    ports { add_i_6 { I 17 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name add_ln198 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln198 \
    op interface \
    ports { add_ln198 { I 17 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
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
    id 115 \
    name empty_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_23 \
    op interface \
    ports { empty_23 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name empty_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_24 \
    op interface \
    ports { empty_24 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name empty_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_25 \
    op interface \
    ports { empty_25 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name empty_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_26 \
    op interface \
    ports { empty_26 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
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
    id 125 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_39 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_39 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_39_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_39_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_39_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_40 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_40 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_40_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_40_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_40_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_41 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_41 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_41_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_41_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_41_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_42 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_42 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_42_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_42_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_42_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_44 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_44 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_44_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_44_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_44_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_45 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_45 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_45_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_45_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_45_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_46 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_46 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_46_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_46_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_46_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_47 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_47 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_47_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_47_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_47_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_48 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_48 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_48_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_48_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_48_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_49 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_49 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_49_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_49_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_49_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_50 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_50 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_50_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_50_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_50_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_51 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_51 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_51_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_51_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_51_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_52 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_52 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_52_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_52_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_52_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_53 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_53 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_53_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_53_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_53_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_55 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_55 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_55_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_55_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_55_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_56 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_56 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_56_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_56_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_56_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_57 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_57 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_57_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_57_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_57_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_58 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_58 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_58_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_58_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_58_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_59 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_59 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_59_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_59_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_59_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_60 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_60 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_60_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_60_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_60_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_61 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_61 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_61_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_61_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_61_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_62 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_62 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_62_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_62_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_62_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_63 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_63 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_63_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_63_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_63_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_64 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_64 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_64_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_64_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_64_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_66 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_66 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_66_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_66_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_66_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_67 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_67 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_67_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_67_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_67_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_68 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_68 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_68_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_68_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_68_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_69 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_69 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_69_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_69_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_69_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_70 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_70 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_70_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_70_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_70_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_71 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_71 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_71_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_71_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_71_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_72 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_72 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_72_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_72_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_72_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_73 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_73 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_73_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_73_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_73_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_74 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_74 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_74_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_74_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_74_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_75 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_75 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_75_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_75_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_75_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_77 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_77 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_77_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_77_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_77_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_78 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_78 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_78_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_78_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_78_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_79 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_79 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_79_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_79_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_79_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_80 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_80 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_80_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_80_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_80_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_81 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_81 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_81_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_81_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_81_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_82 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_82 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_82_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_82_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_82_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_83 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_83 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_83_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_83_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_83_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_84 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_84 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_84_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_84_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_84_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_85 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_85 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_85_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_85_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_85_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_86 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_86 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_86_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_86_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_86_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_88 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_88 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_88_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_88_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_88_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_89 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_89 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_89_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_89_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_89_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_96 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_96 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_96_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_96_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_96_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_243 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_243 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_243_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_243_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_243_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_232 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_232 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_232_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_232_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_232_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_221 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_221 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_221_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_221_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_221_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_210 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_210 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_210_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_210_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_210_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_199 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_199 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_199_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_199_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_199_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_188 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_188 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_188_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_188_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_188_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_177 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_177 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_177_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_177_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_177_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
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
    id 180 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_21 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_21 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_21_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_21_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_21_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_32 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_32 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_32_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_32_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_32_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_43 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_43 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_43_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_43_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_43_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_54 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_54 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_54_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_54_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_54_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_65 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_65 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_65_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_65_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_65_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_76 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_76 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_76_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_76_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_76_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_87 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_87 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_87_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_87_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_87_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_176 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_176 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_176_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_176_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_176_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_175 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_175 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_175_i { I 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_175_o { O 20 vector } mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_175_o_ap_vld { O 1 bit } } \
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


