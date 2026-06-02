set SynModuleInfo {
  {SRCNAME mxm_execute_ursa_Pipeline_VITIS_LOOP_284_3 MODELNAME mxm_execute_ursa_Pipeline_VITIS_LOOP_284_3 RTLNAME mxm_execute_ursa_mxm_execute_ursa_Pipeline_VITIS_LOOP_284_3
    SUBMODULES {
      {MODELNAME mxm_execute_ursa_mul_17s_16ns_32_1_1 RTLNAME mxm_execute_ursa_mul_17s_16ns_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mxm_execute_ursa_mac_muladd_8ns_8s_20s_20_4_1 RTLNAME mxm_execute_ursa_mac_muladd_8ns_8s_20s_20_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME mxm_execute_ursa_mac_muladd_8s_8ns_20s_20_4_1 RTLNAME mxm_execute_ursa_mac_muladd_8s_8ns_20s_20_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME mxm_execute_ursa_flow_control_loop_pipe_sequential_init RTLNAME mxm_execute_ursa_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME mxm_execute_ursa_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME sa_store MODELNAME sa_store RTLNAME mxm_execute_ursa_sa_store}
  {SRCNAME sa_reset MODELNAME sa_reset RTLNAME mxm_execute_ursa_sa_reset}
  {SRCNAME mxm_execute_ursa MODELNAME mxm_execute_ursa RTLNAME mxm_execute_ursa IS_TOP 1
    SUBMODULES {
      {MODELNAME mxm_execute_ursa_mul_13ns_13ns_26_1_1 RTLNAME mxm_execute_ursa_mul_13ns_13ns_26_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mxm_execute_ursa_mul_13ns_16ns_29_1_1 RTLNAME mxm_execute_ursa_mul_13ns_16ns_29_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mxm_execute_ursa_mul_13ns_16ns_27_1_1 RTLNAME mxm_execute_ursa_mul_13ns_16ns_27_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mxm_execute_ursa_aw_m_axi RTLNAME mxm_execute_ursa_aw_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mxm_execute_ursa_bi_m_axi RTLNAME mxm_execute_ursa_bi_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mxm_execute_ursa_ca_m_axi RTLNAME mxm_execute_ursa_ca_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mxm_execute_ursa_ap_s_axi RTLNAME mxm_execute_ursa_ap_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME mxm_execute_ursa_control_s_axi RTLNAME mxm_execute_ursa_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
