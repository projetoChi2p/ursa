# This script segment is generated automatically by AutoPilot

set id 251
set name mxm_execute_ursa_mac_muladd_8ns_8s_32s_32_4_1
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
set in2_width 32
set in2_signed 1
set ce_width 1
set ce_signed 0
set out_width 32
set arg_lists {i0 {8 0 +} i1 {8 1 +} m {16 1 +} i2 {32 1 +} p {32 1 +} c_reg {1} rnd {0} acc {0} }
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
    id 436 \
    name c_tile_acc \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_tile_acc \
    op interface \
    ports { c_tile_acc_address0 { O 6 vector } c_tile_acc_ce0 { O 1 bit } c_tile_acc_we0 { O 1 bit } c_tile_acc_d0 { O 32 vector } c_tile_acc_q0 { I 32 vector } c_tile_acc_address1 { O 6 vector } c_tile_acc_ce1 { O 1 bit } c_tile_acc_we1 { O 1 bit } c_tile_acc_d1 { O 32 vector } c_tile_acc_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_tile_acc'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 316 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_344_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_344_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_344_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 317 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_345_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_345_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_345_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 318 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_346_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_346_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_346_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 319 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_347_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_347_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_347_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 320 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_348_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_348_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_348_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 321 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_349_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_349_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_349_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 322 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_350_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_350_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_350_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 323 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_351_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_351_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_351_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 324 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_352_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_352_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_352_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 325 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_353_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_353_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_353_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 326 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_354_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_354_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_354_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 327 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_355_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_355_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_355_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 328 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_356_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_356_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_356_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 329 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_357_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_357_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_357_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 330 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_358_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_358_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_358_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 331 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_359_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_359_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_359_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 332 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_360_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_360_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_360_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 333 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_361_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_361_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_361_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 334 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_362_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_362_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_362_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 335 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_363_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_363_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_363_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 336 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_364_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_364_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_364_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 337 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_365_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_365_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_365_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 338 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_366_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_366_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_366_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 339 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_367_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_367_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_367_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 340 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_368_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_368_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_368_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 341 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_369_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_369_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_369_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 342 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_370_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_370_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_370_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 343 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_371_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_371_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_371_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 344 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_372_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_372_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_372_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 345 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_373_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_373_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_373_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 346 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_374_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_374_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_374_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 347 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_375_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_375_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_375_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 348 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_376_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_376_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_376_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 349 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_377_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_377_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_377_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 350 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_378_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_378_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_378_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 351 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_379_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_379_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_379_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 352 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_380_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_380_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_380_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 353 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_381_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_381_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_381_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 354 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_382_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_382_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_382_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 355 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_383_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_383_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_383_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 356 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_384_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_384_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_384_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 357 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_385_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_385_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_385_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 358 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_386_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_386_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_386_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 359 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_387_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_387_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_387_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 360 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_388_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_388_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_388_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 361 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_389_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_389_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_389_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 362 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_390_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_390_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_390_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 363 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_391_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_391_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_391_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 364 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_392_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_392_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_392_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 365 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_393_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_393_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_393_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 366 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_394_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_394_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_394_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 367 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_395_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_395_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_395_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 368 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_396_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_396_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_396_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 369 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_397_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_397_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_397_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 370 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_398_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_398_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_398_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 371 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_399_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_399_reload \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_399_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 372 \
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
    id 373 \
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
    id 374 \
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
    id 375 \
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
    id 376 \
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
    id 377 \
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
    id 378 \
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
    id 379 \
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
    id 380 \
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
    id 381 \
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
    id 382 \
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
    id 383 \
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
    id 384 \
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
    id 385 \
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
    id 386 \
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
    id 387 \
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
    id 388 \
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
    id 389 \
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
    id 390 \
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
    id 391 \
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
    id 392 \
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
    id 393 \
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
    id 394 \
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
    id 395 \
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
    id 396 \
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
    id 397 \
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
    id 398 \
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
    id 399 \
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
    id 400 \
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
    id 401 \
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
    id 402 \
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
    id 403 \
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
    id 404 \
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
    id 405 \
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
    id 406 \
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
    id 407 \
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
    id 408 \
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
    id 409 \
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
    id 410 \
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
    id 411 \
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
    id 412 \
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
    id 413 \
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
    id 414 \
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
    id 415 \
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
    id 416 \
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
    id 417 \
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
    id 418 \
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
    id 419 \
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
    id 420 \
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
    id 421 \
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
    id 422 \
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
    id 423 \
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
    id 424 \
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
    id 425 \
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
    id 426 \
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
    id 427 \
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
    id 428 \
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
    id 429 \
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
    id 430 \
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
    id 431 \
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
    id 432 \
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
    id 433 \
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
    id 434 \
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
    id 435 \
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
    id 437 \
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
    id 438 \
    name base_col_B \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_base_col_B \
    op interface \
    ports { base_col_B { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 439 \
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
    id 440 \
    name cmp15_i_phi_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp15_i_phi_reload \
    op interface \
    ports { cmp15_i_phi_reload { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 441 \
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
    id 442 \
    name add_ln331_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln331_cast \
    op interface \
    ports { add_ln331_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 443 \
    name cmp15_1_i_phi_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp15_1_i_phi_reload \
    op interface \
    ports { cmp15_1_i_phi_reload { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 444 \
    name zext_ln309_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln309_3 \
    op interface \
    ports { zext_ln309_3 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 445 \
    name cmp15_2_i_phi_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp15_2_i_phi_reload \
    op interface \
    ports { cmp15_2_i_phi_reload { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 446 \
    name cmp15_3_i_phi_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp15_3_i_phi_reload \
    op interface \
    ports { cmp15_3_i_phi_reload { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 447 \
    name zext_ln309_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln309_2 \
    op interface \
    ports { zext_ln309_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 448 \
    name cmp15_4_i_phi_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp15_4_i_phi_reload \
    op interface \
    ports { cmp15_4_i_phi_reload { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 449 \
    name cmp15_5_i_phi_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp15_5_i_phi_reload \
    op interface \
    ports { cmp15_5_i_phi_reload { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 450 \
    name cmp15_6_i_phi_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp15_6_i_phi_reload \
    op interface \
    ports { cmp15_6_i_phi_reload { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 451 \
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
    id 452 \
    name cmp15_7_i_phi_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp15_7_i_phi_reload \
    op interface \
    ports { cmp15_7_i_phi_reload { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 453 \
    name zext_ln309_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln309_1 \
    op interface \
    ports { zext_ln309_1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 454 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_464_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_464_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_464_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_464_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 455 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_465_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_465_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_465_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_465_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 456 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_466_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_466_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_466_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_466_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 457 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_467_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_467_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_467_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_467_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 458 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_468_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_468_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_468_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_468_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 459 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_469_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_469_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_469_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_469_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 460 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_470_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_470_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_470_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_470_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 461 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_471_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_471_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_471_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_471_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 462 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_472_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_472_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_472_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_472_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 463 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_473_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_473_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_473_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_473_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 464 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_474_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_474_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_474_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_474_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 465 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_475_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_475_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_475_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_475_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 466 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_476_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_476_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_476_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_476_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 467 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_477_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_477_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_477_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_477_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 468 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_478_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_478_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_478_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_478_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 469 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_479_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_479_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_479_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_479_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 470 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_480_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_480_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_480_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_480_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 471 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_481_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_481_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_481_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_481_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 472 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_482_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_482_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_482_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_482_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 473 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_483_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_483_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_483_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_483_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 474 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_484_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_484_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_484_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_484_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 475 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_485_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_485_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_485_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_485_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 476 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_486_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_486_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_486_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_486_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 477 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_487_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_487_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_487_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_487_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 478 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_488_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_488_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_488_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_488_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 479 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_489_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_489_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_489_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_489_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 480 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_490_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_490_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_490_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_490_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 481 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_491_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_491_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_491_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_491_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 482 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_492_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_492_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_492_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_492_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 483 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_493_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_493_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_493_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_493_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 484 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_494_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_494_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_494_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_494_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 485 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_495_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_495_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_495_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_495_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 486 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_496_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_496_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_496_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_496_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 487 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_497_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_497_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_497_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_497_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 488 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_498_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_498_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_498_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_498_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 489 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_499_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_499_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_499_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_499_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 490 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_500_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_500_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_500_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_500_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 491 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_501_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_501_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_501_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_501_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 492 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_502_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_502_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_502_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_502_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 493 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_503_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_503_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_503_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_503_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 494 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_504_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_504_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_504_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_504_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 495 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_505_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_505_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_505_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_505_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 496 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_506_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_506_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_506_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_506_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 497 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_507_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_507_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_507_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_507_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 498 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_508_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_508_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_508_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_508_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 499 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_509_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_509_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_509_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_509_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 500 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_510_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_510_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_510_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_510_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 501 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_511_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_511_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_511_out { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_511_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 502 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_512_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_512_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_512_out_i { I 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_512_out_o { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_512_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 503 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_513_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_513_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_513_out_i { I 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_513_out_o { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_513_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 504 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_514_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_514_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_514_out_i { I 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_514_out_o { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_514_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 505 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_515_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_515_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_515_out_i { I 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_515_out_o { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_515_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 506 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_516_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_516_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_516_out_i { I 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_516_out_o { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_516_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 507 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_517_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_517_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_517_out_i { I 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_517_out_o { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_517_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 508 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_518_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_518_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_518_out_i { I 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_518_out_o { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_518_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 509 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_519_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_519_out \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_519_out_i { I 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_519_out_o { O 8 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_519_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 510 \
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
    id 511 \
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
    id 512 \
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
    id 513 \
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
    id 514 \
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
    id 515 \
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
    id 516 \
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
    id 517 \
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
    id 518 \
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
    id 519 \
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
    id 520 \
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
    id 521 \
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
    id 522 \
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
    id 523 \
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
    id 524 \
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
    id 525 \
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
    id 526 \
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
    id 527 \
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
    id 528 \
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
    id 529 \
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
    id 530 \
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
    id 531 \
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
    id 532 \
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
    id 533 \
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
    id 534 \
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
    id 535 \
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
    id 536 \
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
    id 537 \
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
    id 538 \
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
    id 539 \
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
    id 540 \
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
    id 541 \
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
    id 542 \
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
    id 543 \
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
    id 544 \
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
    id 545 \
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
    id 546 \
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
    id 547 \
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
    id 548 \
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
    id 549 \
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
    id 550 \
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
    id 551 \
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
    id 552 \
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
    id 553 \
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
    id 554 \
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
    id 555 \
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
    id 556 \
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
    id 557 \
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
    id 558 \
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
    id 559 \
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
    id 560 \
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
    id 561 \
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
    id 562 \
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
    id 563 \
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
    id 564 \
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
    id 565 \
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


