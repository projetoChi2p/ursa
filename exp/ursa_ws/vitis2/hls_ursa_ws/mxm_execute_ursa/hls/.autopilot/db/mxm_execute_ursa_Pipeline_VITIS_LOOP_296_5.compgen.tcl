# This script segment is generated automatically by AutoPilot

set name mxm_execute_ursa_mul_8ns_8s_16_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set id 247
set name mxm_execute_ursa_mac_muladd_8ns_8s_19s_20_4_1
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
set in2_width 19
set in2_signed 1
set ce_width 1
set ce_signed 0
set out_width 20
set arg_lists {i0 {8 0 +} i1 {8 1 +} m {16 1 +} i2 {19 1 +} p {20 1 +} c_reg {1} rnd {0} acc {0} }
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


set id 248
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


set id 253
set name mxm_execute_ursa_mac_muladd_8ns_8s_16s_17_4_1
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
set in2_width 16
set in2_signed 1
set ce_width 1
set ce_signed 0
set out_width 17
set arg_lists {i0 {8 0 +} i1 {8 1 +} m {16 1 +} i2 {16 1 +} p {17 1 +} c_reg {1} rnd {0} acc {0} }
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


set id 254
set name mxm_execute_ursa_mac_muladd_8ns_8s_17s_18_4_1
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
set in2_width 17
set in2_signed 1
set ce_width 1
set ce_signed 0
set out_width 18
set arg_lists {i0 {8 0 +} i1 {8 1 +} m {16 1 +} i2 {17 1 +} p {18 1 +} c_reg {1} rnd {0} acc {0} }
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


set id 258
set name mxm_execute_ursa_mac_muladd_8ns_8s_18s_18_4_1
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
set in2_width 18
set in2_signed 1
set ce_width 1
set ce_signed 0
set out_width 18
set arg_lists {i0 {8 0 +} i1 {8 1 +} m {16 1 +} i2 {18 1 +} p {18 1 +} c_reg {1} rnd {0} acc {0} }
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


set id 259
set name mxm_execute_ursa_mac_muladd_8ns_8s_18s_19_4_1
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
set in2_width 18
set in2_signed 1
set ce_width 1
set ce_signed 0
set out_width 19
set arg_lists {i0 {8 0 +} i1 {8 1 +} m {16 1 +} i2 {18 1 +} p {19 1 +} c_reg {1} rnd {0} acc {0} }
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


set id 266
set name mxm_execute_ursa_mac_muladd_8ns_8s_19s_19_4_1
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
set in2_width 19
set in2_signed 1
set ce_width 1
set ce_signed 0
set out_width 19
set arg_lists {i0 {8 0 +} i1 {8 1 +} m {16 1 +} i2 {19 1 +} p {19 1 +} c_reg {1} rnd {0} acc {0} }
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
    id 311 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_288_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_288_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_288_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 312 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_289_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_289_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_289_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 313 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_290_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_290_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_290_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 314 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_291_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_291_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_291_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 315 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_292_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_292_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_292_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 316 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_293_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_293_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_293_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 317 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_294_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_294_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_294_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 318 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_295_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_295_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_295_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 319 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_296_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_296_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_296_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 320 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_297_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_297_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_297_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 321 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_298_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_298_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_298_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 322 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_299_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_299_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_299_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 323 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_300_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_300_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_300_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 324 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_301_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_301_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_301_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 325 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_302_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_302_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_302_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 326 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_303_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_303_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_303_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 327 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_304_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_304_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_304_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 328 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_305_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_305_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_305_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 329 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_306_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_306_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_306_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 330 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_307_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_307_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_307_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 331 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_308_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_308_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_308_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 332 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_309_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_309_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_309_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 333 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_310_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_310_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_310_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 334 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_311_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_311_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_311_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 335 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_312_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_312_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_312_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 336 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_313_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_313_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_313_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 337 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_314_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_314_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_314_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 338 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_315_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_315_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_315_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 339 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_316_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_316_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_316_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 340 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_317_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_317_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_317_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 341 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_318_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_318_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_318_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 342 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_319_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_319_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_319_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 343 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_320_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_320_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_320_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 344 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_321_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_321_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_321_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 345 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_322_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_322_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_322_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 346 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_323_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_323_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_323_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 347 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_324_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_324_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_324_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 348 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_325_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_325_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_325_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 349 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_326_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_326_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_326_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 350 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_327_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_327_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_327_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 351 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_328_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_328_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_328_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 352 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_329_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_329_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_329_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 353 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_330_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_330_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_330_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 354 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_331_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_331_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_331_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 355 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_332_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_332_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_332_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 356 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_333_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_333_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_333_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 357 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_334_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_334_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_334_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 358 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_335_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_335_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_335_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 359 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_336_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_336_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_336_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 360 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_337_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_337_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_337_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 361 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_338_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_338_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_338_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 362 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_339_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_339_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_339_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 363 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_340_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_340_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_340_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 364 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_341_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_341_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_341_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 365 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_342_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_342_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_342_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 366 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_343_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_343_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_343_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 367 \
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
    id 368 \
    name bi \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bi \
    op interface \
    ports { m_axi_bi_AWVALID { O 1 bit } m_axi_bi_AWREADY { I 1 bit } m_axi_bi_AWADDR { O 64 vector } m_axi_bi_AWID { O 1 vector } m_axi_bi_AWLEN { O 32 vector } m_axi_bi_AWSIZE { O 3 vector } m_axi_bi_AWBURST { O 2 vector } m_axi_bi_AWLOCK { O 2 vector } m_axi_bi_AWCACHE { O 4 vector } m_axi_bi_AWPROT { O 3 vector } m_axi_bi_AWQOS { O 4 vector } m_axi_bi_AWREGION { O 4 vector } m_axi_bi_AWUSER { O 1 vector } m_axi_bi_WVALID { O 1 bit } m_axi_bi_WREADY { I 1 bit } m_axi_bi_WDATA { O 8 vector } m_axi_bi_WSTRB { O 1 vector } m_axi_bi_WLAST { O 1 bit } m_axi_bi_WID { O 1 vector } m_axi_bi_WUSER { O 1 vector } m_axi_bi_ARVALID { O 1 bit } m_axi_bi_ARREADY { I 1 bit } m_axi_bi_ARADDR { O 64 vector } m_axi_bi_ARID { O 1 vector } m_axi_bi_ARLEN { O 32 vector } m_axi_bi_ARSIZE { O 3 vector } m_axi_bi_ARBURST { O 2 vector } m_axi_bi_ARLOCK { O 2 vector } m_axi_bi_ARCACHE { O 4 vector } m_axi_bi_ARPROT { O 3 vector } m_axi_bi_ARQOS { O 4 vector } m_axi_bi_ARREGION { O 4 vector } m_axi_bi_ARUSER { O 1 vector } m_axi_bi_RVALID { I 1 bit } m_axi_bi_RREADY { O 1 bit } m_axi_bi_RDATA { I 8 vector } m_axi_bi_RLAST { I 1 bit } m_axi_bi_RID { I 1 vector } m_axi_bi_RFIFONUM { I 12 vector } m_axi_bi_RUSER { I 1 vector } m_axi_bi_RRESP { I 2 vector } m_axi_bi_BVALID { I 1 bit } m_axi_bi_BREADY { O 1 bit } m_axi_bi_BRESP { I 2 vector } m_axi_bi_BID { I 1 vector } m_axi_bi_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 369 \
    name zext_ln259 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln259 \
    op interface \
    ports { zext_ln259 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 370 \
    name sext_ln18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18 \
    op interface \
    ports { sext_ln18 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 371 \
    name sext_ln18_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_1 \
    op interface \
    ports { sext_ln18_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 372 \
    name sext_ln18_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_2 \
    op interface \
    ports { sext_ln18_2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 373 \
    name sext_ln18_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_3 \
    op interface \
    ports { sext_ln18_3 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 374 \
    name sext_ln18_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_4 \
    op interface \
    ports { sext_ln18_4 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 375 \
    name sext_ln18_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_5 \
    op interface \
    ports { sext_ln18_5 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 376 \
    name sext_ln18_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_6 \
    op interface \
    ports { sext_ln18_6 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 377 \
    name sext_ln18_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_7 \
    op interface \
    ports { sext_ln18_7 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 378 \
    name sext_ln18_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_8 \
    op interface \
    ports { sext_ln18_8 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 379 \
    name sext_ln18_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_9 \
    op interface \
    ports { sext_ln18_9 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 380 \
    name sext_ln18_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_10 \
    op interface \
    ports { sext_ln18_10 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 381 \
    name sext_ln18_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_11 \
    op interface \
    ports { sext_ln18_11 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 382 \
    name sext_ln18_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_12 \
    op interface \
    ports { sext_ln18_12 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 383 \
    name sext_ln18_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_13 \
    op interface \
    ports { sext_ln18_13 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 384 \
    name sext_ln18_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_14 \
    op interface \
    ports { sext_ln18_14 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 385 \
    name sext_ln18_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_15 \
    op interface \
    ports { sext_ln18_15 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 386 \
    name sext_ln18_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_16 \
    op interface \
    ports { sext_ln18_16 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 387 \
    name sext_ln18_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_17 \
    op interface \
    ports { sext_ln18_17 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 388 \
    name sext_ln18_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_18 \
    op interface \
    ports { sext_ln18_18 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 389 \
    name sext_ln18_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_19 \
    op interface \
    ports { sext_ln18_19 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 390 \
    name sext_ln18_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_20 \
    op interface \
    ports { sext_ln18_20 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 391 \
    name sext_ln18_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_21 \
    op interface \
    ports { sext_ln18_21 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 392 \
    name sext_ln18_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_22 \
    op interface \
    ports { sext_ln18_22 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 393 \
    name sext_ln18_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_23 \
    op interface \
    ports { sext_ln18_23 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 394 \
    name sext_ln18_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_24 \
    op interface \
    ports { sext_ln18_24 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 395 \
    name sext_ln18_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_25 \
    op interface \
    ports { sext_ln18_25 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 396 \
    name sext_ln18_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_26 \
    op interface \
    ports { sext_ln18_26 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 397 \
    name sext_ln18_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_27 \
    op interface \
    ports { sext_ln18_27 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 398 \
    name sext_ln18_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_28 \
    op interface \
    ports { sext_ln18_28 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 399 \
    name sext_ln18_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_29 \
    op interface \
    ports { sext_ln18_29 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 400 \
    name sext_ln18_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_30 \
    op interface \
    ports { sext_ln18_30 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 401 \
    name sext_ln18_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_31 \
    op interface \
    ports { sext_ln18_31 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 402 \
    name sext_ln18_32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_32 \
    op interface \
    ports { sext_ln18_32 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 403 \
    name sext_ln18_33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_33 \
    op interface \
    ports { sext_ln18_33 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 404 \
    name sext_ln18_34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_34 \
    op interface \
    ports { sext_ln18_34 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 405 \
    name sext_ln18_35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_35 \
    op interface \
    ports { sext_ln18_35 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 406 \
    name sext_ln18_36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_36 \
    op interface \
    ports { sext_ln18_36 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 407 \
    name sext_ln18_37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_37 \
    op interface \
    ports { sext_ln18_37 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 408 \
    name sext_ln18_38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_38 \
    op interface \
    ports { sext_ln18_38 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 409 \
    name sext_ln18_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_39 \
    op interface \
    ports { sext_ln18_39 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 410 \
    name sext_ln18_40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_40 \
    op interface \
    ports { sext_ln18_40 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 411 \
    name sext_ln18_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_41 \
    op interface \
    ports { sext_ln18_41 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 412 \
    name sext_ln18_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_42 \
    op interface \
    ports { sext_ln18_42 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 413 \
    name sext_ln18_43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_43 \
    op interface \
    ports { sext_ln18_43 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 414 \
    name sext_ln18_44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_44 \
    op interface \
    ports { sext_ln18_44 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 415 \
    name sext_ln18_45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_45 \
    op interface \
    ports { sext_ln18_45 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 416 \
    name sext_ln18_46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_46 \
    op interface \
    ports { sext_ln18_46 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 417 \
    name sext_ln18_47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_47 \
    op interface \
    ports { sext_ln18_47 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 418 \
    name sext_ln18_48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_48 \
    op interface \
    ports { sext_ln18_48 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 419 \
    name sext_ln18_49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_49 \
    op interface \
    ports { sext_ln18_49 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 420 \
    name sext_ln18_50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_50 \
    op interface \
    ports { sext_ln18_50 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 421 \
    name sext_ln18_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_51 \
    op interface \
    ports { sext_ln18_51 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 422 \
    name sext_ln18_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_52 \
    op interface \
    ports { sext_ln18_52 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 423 \
    name sext_ln18_53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_53 \
    op interface \
    ports { sext_ln18_53 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 424 \
    name sext_ln18_54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_54 \
    op interface \
    ports { sext_ln18_54 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 425 \
    name sext_ln18_55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_55 \
    op interface \
    ports { sext_ln18_55 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 426 \
    name sext_ln18_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_56 \
    op interface \
    ports { sext_ln18_56 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 427 \
    name sext_ln18_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_57 \
    op interface \
    ports { sext_ln18_57 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 428 \
    name sext_ln18_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_58 \
    op interface \
    ports { sext_ln18_58 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 429 \
    name sext_ln18_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_59 \
    op interface \
    ports { sext_ln18_59 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 430 \
    name sext_ln18_60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_60 \
    op interface \
    ports { sext_ln18_60 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 431 \
    name sext_ln18_61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_61 \
    op interface \
    ports { sext_ln18_61 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 432 \
    name sext_ln18_62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_62 \
    op interface \
    ports { sext_ln18_62 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 433 \
    name sext_ln18_63 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln18_63 \
    op interface \
    ports { sext_ln18_63 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 434 \
    name addr_b0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_addr_b0 \
    op interface \
    ports { addr_b0 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 435 \
    name zext_ln263 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln263 \
    op interface \
    ports { zext_ln263 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 436 \
    name zext_ln257_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln257_2 \
    op interface \
    ports { zext_ln257_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 437 \
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
    id 438 \
    name zext_ln257_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln257_1 \
    op interface \
    ports { zext_ln257_1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 439 \
    name zext_ln257 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln257 \
    op interface \
    ports { zext_ln257 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 440 \
    name add_ln263 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln263 \
    op interface \
    ports { add_ln263 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 441 \
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
    id 442 \
    name zext_ln296 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln296 \
    op interface \
    ports { zext_ln296 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 443 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_408_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_408_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_408_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_408_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 444 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_409_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_409_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_409_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_409_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 445 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_410_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_410_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_410_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_410_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 446 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_411_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_411_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_411_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_411_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 447 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_412_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_412_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_412_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_412_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 448 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_413_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_413_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_413_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_413_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 449 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_414_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_414_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_414_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_414_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 450 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_415_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_415_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_415_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_415_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 451 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_416_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_416_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_416_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_416_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 452 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_417_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_417_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_417_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_417_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 453 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_418_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_418_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_418_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_418_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 454 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_419_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_419_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_419_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_419_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 455 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_420_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_420_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_420_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_420_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 456 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_421_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_421_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_421_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_421_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 457 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_422_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_422_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_422_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_422_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 458 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_423_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_423_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_423_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_423_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 459 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_424_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_424_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_424_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_424_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 460 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_425_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_425_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_425_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_425_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 461 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_426_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_426_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_426_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_426_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 462 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_427_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_427_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_427_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_427_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 463 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_428_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_428_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_428_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_428_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 464 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_429_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_429_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_429_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_429_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 465 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_430_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_430_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_430_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_430_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 466 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_431_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_431_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_431_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_431_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 467 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_432_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_432_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_432_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_432_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 468 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_433_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_433_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_433_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_433_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 469 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_434_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_434_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_434_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_434_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 470 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_435_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_435_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_435_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_435_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 471 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_436_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_436_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_436_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_436_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 472 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_437_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_437_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_437_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_437_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 473 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_438_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_438_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_438_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_438_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 474 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_439_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_439_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_439_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_439_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 475 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_440_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_440_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_440_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_440_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 476 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_441_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_441_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_441_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_441_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 477 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_442_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_442_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_442_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_442_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 478 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_443_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_443_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_443_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_443_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 479 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_444_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_444_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_444_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_444_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 480 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_445_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_445_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_445_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_445_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 481 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_446_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_446_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_446_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_446_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 482 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_447_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_447_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_447_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_447_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 483 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_448_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_448_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_448_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_448_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 484 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_449_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_449_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_449_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_449_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 485 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_450_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_450_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_450_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_450_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 486 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_451_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_451_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_451_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_451_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 487 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_452_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_452_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_452_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_452_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 488 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_453_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_453_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_453_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_453_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 489 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_454_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_454_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_454_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_454_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 490 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_455_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_455_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_455_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_455_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 491 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_456_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_456_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_456_out_i { I 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_456_out_o { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_456_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 492 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_457_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_457_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_457_out_i { I 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_457_out_o { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_457_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 493 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_458_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_458_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_458_out_i { I 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_458_out_o { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_458_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 494 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_459_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_459_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_459_out_i { I 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_459_out_o { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_459_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 495 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_460_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_460_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_460_out_i { I 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_460_out_o { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_460_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 496 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_461_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_461_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_461_out_i { I 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_461_out_o { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_461_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 497 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_462_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_462_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_462_out_i { I 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_462_out_o { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_462_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 498 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_463_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_463_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_463_out_i { I 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_463_out_o { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_463_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 499 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_234 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_234 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_234 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_234_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 500 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_233 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_233 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_233 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_233_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 501 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_231 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_231 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_231 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_231_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 502 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_230 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_230 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_230 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_230_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 503 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_229 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_229 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_229 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_229_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 504 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_228 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_228 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_228 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_228_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 505 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_227 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_227 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_227 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_227_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 506 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_226 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_226 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_226 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_226_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 507 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_225 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_225 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_225 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_225_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 508 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_224 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_224 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_224 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_224_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 509 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_223 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_223 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_223 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_223_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 510 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_222 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_222 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_222 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_222_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 511 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_220 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_220 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_220 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_220_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 512 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_219 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_219 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_219 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_219_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 513 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_218 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_218 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_218 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_218_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 514 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_217 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_217 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_217 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_217_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 515 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_216 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_216 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_216 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_216_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 516 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_215 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_215 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_215 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_215_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 517 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_214 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_214 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_214 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_214_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 518 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_213 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_213 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_213 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_213_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 519 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_212 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_212 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_212 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_212_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 520 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_211 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_211 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_211 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_211_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 521 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_209 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_209 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_209 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_209_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 522 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_208 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_208 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_208 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_208_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 523 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_207 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_207 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_207 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_207_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 524 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_206 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_206 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_206 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_206_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 525 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_205 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_205 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_205 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_205_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 526 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_204 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_204 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_204 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_204_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 527 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_203 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_203 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_203 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_203_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 528 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_202 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_202 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_202 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_202_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 529 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_201 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_201 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_201 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_201_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 530 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_200 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_200 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_200 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_200_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 531 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_198 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_198 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_198 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_198_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 532 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_197 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_197 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_197 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_197_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 533 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_196 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_196 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_196 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_196_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 534 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_195 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_195 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_195 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_195_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 535 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_194 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_194 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_194 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_194_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 536 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_193 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_193 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_193 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_193_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 537 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_192 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_192 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_192 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_192_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 538 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_191 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_191 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_191 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_191_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 539 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_190 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_190 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_190 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_190_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 540 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_189 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_189 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_189 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_189_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 541 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_187 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_187 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_187 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_187_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 542 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_186 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_186 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_186 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_186_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 543 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_185 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_185 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_185 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_185_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 544 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_184 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_184 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_184 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_184_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 545 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_183 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_183 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_183 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_183_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 546 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_182 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_182 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_182 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_182_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 547 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_181 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_181 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_181 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_181_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 548 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_180 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_180 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_180 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_180_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 549 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_179 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_179 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_179 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_179_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 550 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_178 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_178 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_178 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_178_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 551 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_4 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_4 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 552 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 553 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_22 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_22 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_22 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_22_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 554 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_30 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_30 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_30 { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_30_ap_vld { O 1 bit } } \
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


