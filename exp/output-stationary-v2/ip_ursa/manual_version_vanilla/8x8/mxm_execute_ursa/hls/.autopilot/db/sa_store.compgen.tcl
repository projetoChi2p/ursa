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
    id 189 \
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
    id 190 \
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
    id 191 \
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
    id 192 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_39 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_39 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_40 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_40 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_41 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_41 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_42 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_42 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_44 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_44 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_45 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_45 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_46 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_46 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_47 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_47 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_48 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_48 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_49 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_49 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_50 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_50 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_51 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_51 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_52 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_52 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_53 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_53 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_55 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_55 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_56 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_56 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_57 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_57 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_58 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_58 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_59 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_59 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_60 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_60 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_61 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_61 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_62 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_62 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_63 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_63 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_63 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_64 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_64 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_64 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_66 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_66 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_66 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_67 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_67 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_67 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_68 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_68 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_68 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_69 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_69 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_69 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_70 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_70 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_70 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_71 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_71 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_71 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_72 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_72 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_72 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_73 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_73 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_73 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_74 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_74 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_74 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_75 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_75 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_75 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_77 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_77 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_77 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_78 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_78 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_78 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_79 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_79 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_79 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_80 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_80 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_80 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_81 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_81 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_81 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_82 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_82 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_82 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_83 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_83 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_83 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_84 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_84 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_84 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_85 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_85 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_85 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_86 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_86 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_86 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_88 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_88 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_88 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_89 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_89 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_89 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_96 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_96 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_96 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_243 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_243 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_243 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_232 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_232 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_232 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_221 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_221 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_221 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 242 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_210 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_210 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_210 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_199 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_199 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_199 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 244 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_188 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_188 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_188 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 245 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_177 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_177 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_177 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 246 \
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
    id 247 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_21 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_21 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 248 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_32 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_32 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 249 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_43 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_43 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 250 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_54 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_54 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 251 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_65 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_65 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_65 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 252 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_76 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_76 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_76 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 253 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_87 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_87 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_87 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 254 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_176 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_176 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_176 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 255 \
    name mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_175 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_175 \
    op interface \
    ports { mxm_execute_ursa_ap_uint_unsigned_short_ap_uint_unsigned_short_int_unsigned_s_175 { I 20 vector } } \
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


