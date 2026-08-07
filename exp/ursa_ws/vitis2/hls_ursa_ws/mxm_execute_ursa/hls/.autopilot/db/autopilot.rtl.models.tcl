set SynModuleInfo {
  {SRCNAME mxm_execute_ursa_Pipeline_VITIS_LOOP_341_4 MODELNAME mxm_execute_ursa_Pipeline_VITIS_LOOP_341_4 RTLNAME mxm_execute_ursa_mxm_execute_ursa_Pipeline_VITIS_LOOP_341_4
    SUBMODULES {
      {MODELNAME mxm_execute_ursa_mul_3ns_16ns_19_1_1 RTLNAME mxm_execute_ursa_mul_3ns_16ns_19_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mxm_execute_ursa_flow_control_loop_pipe_sequential_init RTLNAME mxm_execute_ursa_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME mxm_execute_ursa_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME mxm_execute_ursa_Pipeline_VITIS_LOOP_361_6 MODELNAME mxm_execute_ursa_Pipeline_VITIS_LOOP_361_6 RTLNAME mxm_execute_ursa_mxm_execute_ursa_Pipeline_VITIS_LOOP_361_6
    SUBMODULES {
      {MODELNAME mxm_execute_ursa_mac_muladd_8ns_8s_32s_32_4_1 RTLNAME mxm_execute_ursa_mac_muladd_8ns_8s_32s_32_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME mxm_execute_ursa_Pipeline_VITIS_LOOP_382_7 MODELNAME mxm_execute_ursa_Pipeline_VITIS_LOOP_382_7 RTLNAME mxm_execute_ursa_mxm_execute_ursa_Pipeline_VITIS_LOOP_382_7
    SUBMODULES {
      {MODELNAME mxm_execute_ursa_mul_16ns_16ns_32_1_1 RTLNAME mxm_execute_ursa_mul_16ns_16ns_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME mxm_execute_ursa MODELNAME mxm_execute_ursa RTLNAME mxm_execute_ursa IS_TOP 1
    SUBMODULES {
      {MODELNAME mxm_execute_ursa_mul_14ns_14ns_28_1_1 RTLNAME mxm_execute_ursa_mul_14ns_14ns_28_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mxm_execute_ursa_mul_13ns_16ns_29_1_1 RTLNAME mxm_execute_ursa_mul_13ns_16ns_29_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mxm_execute_ursa_c_tile_acc_RAM_AUTO_1R1W RTLNAME mxm_execute_ursa_c_tile_acc_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mxm_execute_ursa_aw_m_axi RTLNAME mxm_execute_ursa_aw_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mxm_execute_ursa_bi_m_axi RTLNAME mxm_execute_ursa_bi_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mxm_execute_ursa_ca_m_axi RTLNAME mxm_execute_ursa_ca_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mxm_execute_ursa_ap_s_axi RTLNAME mxm_execute_ursa_ap_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME mxm_execute_ursa_control_s_axi RTLNAME mxm_execute_ursa_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
