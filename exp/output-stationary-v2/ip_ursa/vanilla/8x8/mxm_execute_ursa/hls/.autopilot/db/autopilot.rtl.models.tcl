set SynModuleInfo {
  {SRCNAME mxm_execute_ursa_Pipeline_LOAD_A MODELNAME mxm_execute_ursa_Pipeline_LOAD_A RTLNAME mxm_execute_ursa_mxm_execute_ursa_Pipeline_LOAD_A
    SUBMODULES {
      {MODELNAME mxm_execute_ursa_flow_control_loop_pipe_sequential_init RTLNAME mxm_execute_ursa_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME mxm_execute_ursa_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME mxm_execute_ursa_Pipeline_LOAD_B MODELNAME mxm_execute_ursa_Pipeline_LOAD_B RTLNAME mxm_execute_ursa_mxm_execute_ursa_Pipeline_LOAD_B}
  {SRCNAME mxm_execute_ursa_Pipeline_STREAM_K MODELNAME mxm_execute_ursa_Pipeline_STREAM_K RTLNAME mxm_execute_ursa_mxm_execute_ursa_Pipeline_STREAM_K
    SUBMODULES {
      {MODELNAME mxm_execute_ursa_mac_muladd_8ns_8s_20s_20_4_1 RTLNAME mxm_execute_ursa_mac_muladd_8ns_8s_20s_20_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME mxm_execute_ursa_mac_muladd_8s_8ns_20s_20_4_1 RTLNAME mxm_execute_ursa_mac_muladd_8s_8ns_20s_20_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME sa_store MODELNAME sa_store RTLNAME mxm_execute_ursa_sa_store}
  {SRCNAME sa_reset MODELNAME sa_reset RTLNAME mxm_execute_ursa_sa_reset}
  {SRCNAME mxm_execute_ursa MODELNAME mxm_execute_ursa RTLNAME mxm_execute_ursa IS_TOP 1
    SUBMODULES {
      {MODELNAME mxm_execute_ursa_a_buf_RAM_AUTO_1R1W RTLNAME mxm_execute_ursa_a_buf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mxm_execute_ursa_b_buf_RAM_AUTO_1R1W RTLNAME mxm_execute_ursa_b_buf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mxm_execute_ursa_aw_m_axi RTLNAME mxm_execute_ursa_aw_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mxm_execute_ursa_bi_m_axi RTLNAME mxm_execute_ursa_bi_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mxm_execute_ursa_ca_m_axi RTLNAME mxm_execute_ursa_ca_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mxm_execute_ursa_ap_s_axi RTLNAME mxm_execute_ursa_ap_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME mxm_execute_ursa_control_s_axi RTLNAME mxm_execute_ursa_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
