set SynModuleInfo {
  {SRCNAME mxm_execute_ursa_Pipeline_VITIS_LOOP_276_3 MODELNAME mxm_execute_ursa_Pipeline_VITIS_LOOP_276_3 RTLNAME mxm_execute_ursa_mxm_execute_ursa_Pipeline_VITIS_LOOP_276_3
    SUBMODULES {
      {MODELNAME mxm_execute_ursa_mul_3ns_16ns_19_1_1 RTLNAME mxm_execute_ursa_mul_3ns_16ns_19_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mxm_execute_ursa_flow_control_loop_pipe_sequential_init RTLNAME mxm_execute_ursa_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME mxm_execute_ursa_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME mxm_execute_ursa_Pipeline_VITIS_LOOP_296_5 MODELNAME mxm_execute_ursa_Pipeline_VITIS_LOOP_296_5 RTLNAME mxm_execute_ursa_mxm_execute_ursa_Pipeline_VITIS_LOOP_296_5
    SUBMODULES {
      {MODELNAME mxm_execute_ursa_mul_8ns_8s_16_1_1 RTLNAME mxm_execute_ursa_mul_8ns_8s_16_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mxm_execute_ursa_mac_muladd_8ns_8s_19s_20_4_1 RTLNAME mxm_execute_ursa_mac_muladd_8ns_8s_19s_20_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME mxm_execute_ursa_mac_muladd_8ns_8s_20s_20_4_1 RTLNAME mxm_execute_ursa_mac_muladd_8ns_8s_20s_20_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME mxm_execute_ursa_mac_muladd_8ns_8s_16s_17_4_1 RTLNAME mxm_execute_ursa_mac_muladd_8ns_8s_16s_17_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME mxm_execute_ursa_mac_muladd_8ns_8s_17s_18_4_1 RTLNAME mxm_execute_ursa_mac_muladd_8ns_8s_17s_18_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME mxm_execute_ursa_mac_muladd_8ns_8s_18s_18_4_1 RTLNAME mxm_execute_ursa_mac_muladd_8ns_8s_18s_18_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME mxm_execute_ursa_mac_muladd_8ns_8s_18s_19_4_1 RTLNAME mxm_execute_ursa_mac_muladd_8ns_8s_18s_19_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME mxm_execute_ursa_mac_muladd_8ns_8s_19s_19_4_1 RTLNAME mxm_execute_ursa_mac_muladd_8ns_8s_19s_19_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME mxm_execute_ursa MODELNAME mxm_execute_ursa RTLNAME mxm_execute_ursa IS_TOP 1
    SUBMODULES {
      {MODELNAME mxm_execute_ursa_mul_13ns_13ns_26_1_1 RTLNAME mxm_execute_ursa_mul_13ns_13ns_26_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mxm_execute_ursa_mul_13ns_16ns_29_1_1 RTLNAME mxm_execute_ursa_mul_13ns_16ns_29_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mxm_execute_ursa_aw_m_axi RTLNAME mxm_execute_ursa_aw_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mxm_execute_ursa_bi_m_axi RTLNAME mxm_execute_ursa_bi_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mxm_execute_ursa_ca_m_axi RTLNAME mxm_execute_ursa_ca_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mxm_execute_ursa_ap_s_axi RTLNAME mxm_execute_ursa_ap_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME mxm_execute_ursa_control_s_axi RTLNAME mxm_execute_ursa_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
