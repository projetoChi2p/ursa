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
    id 33 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3 { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2 { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1 { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i { O 20 vector } mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_ap_vld { O 1 bit } } \
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
    ports { ap_ready { O 1 bit } } \
} "
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


