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
    id 190 \
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
    id 191 \
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
    id 192 \
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
    id 193 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_69 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_69 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_69 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_68 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_68 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_68 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_67 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_67 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_67 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_66 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_66 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_66 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_64 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_64 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_64 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_63 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_63 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_63 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_62 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_62 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_61 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_61 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_60 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_60 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_59 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_59 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_58 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_58 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_57 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_57 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_56 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_56 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_55 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_55 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_53 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_53 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_52 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_52 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_51 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_51 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_50 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_50 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_49 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_49 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_48 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_48 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_47 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_47 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_46 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_46 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_45 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_45 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_44 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_44 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_42 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_42 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_41 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_41 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_40 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_40 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_39 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_39 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_38 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_38 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_37 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_37 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_36 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_36 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_35 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_35 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_34 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_34 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_33 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_33 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_31 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_31 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_30 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_30 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_29 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_29 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_28 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_28 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_27 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_27 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_26 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_26 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_25 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_25 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_24 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_24 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_23 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_23 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_22 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_22 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_20 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_19 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_18 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_17 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_16 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 242 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_15 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_14 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 244 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_13 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 245 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_12 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 246 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_11 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 247 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_9 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 248 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_8 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 249 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_7 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 250 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_6 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 251 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_5 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_5 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 252 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_4 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_4 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 253 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_3 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 254 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_2 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 255 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_1 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 256 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 257 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_232 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_232 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_232 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 258 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_231 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_231 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_231 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 259 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_230 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_230 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_230 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 260 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_229 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_229 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_229 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 261 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_228 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_228 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_228 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 262 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_227 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_227 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_227 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 263 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_226 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_226 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_226 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 264 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_10 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 265 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_21 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 266 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_32 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_32 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 267 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_43 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_43 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 268 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_54 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_54 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 269 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_65 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_65 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_65 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 270 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_333 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_333 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_333 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 271 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_249 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_249 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_249 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 272 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_225 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_225 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_225 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 273 \
    name mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_224 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_224 \
    op interface \
    ports { mxm_execute_ursa_signed_char_unsigned_short_unsigned_char_unsigned_short_i_224 { I 20 vector } } \
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


