// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __mxm_execute_ursa_mac_muladd_8ns_8s_20s_20_4_1__HH__
#define __mxm_execute_ursa_mac_muladd_8ns_8s_20s_20_4_1__HH__
#include "mxm_execute_ursa_mac_muladd_8ns_8s_20s_20_4_1_DSP48_1.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(mxm_execute_ursa_mac_muladd_8ns_8s_20s_20_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    mxm_execute_ursa_mac_muladd_8ns_8s_20s_20_4_1_DSP48_1 mxm_execute_ursa_mac_muladd_8ns_8s_20s_20_4_1_DSP48_1_U;

    SC_CTOR(mxm_execute_ursa_mac_muladd_8ns_8s_20s_20_4_1):  mxm_execute_ursa_mac_muladd_8ns_8s_20s_20_4_1_DSP48_1_U ("mxm_execute_ursa_mac_muladd_8ns_8s_20s_20_4_1_DSP48_1_U") {
        mxm_execute_ursa_mac_muladd_8ns_8s_20s_20_4_1_DSP48_1_U.clk(clk);
        mxm_execute_ursa_mac_muladd_8ns_8s_20s_20_4_1_DSP48_1_U.rst(reset);
        mxm_execute_ursa_mac_muladd_8ns_8s_20s_20_4_1_DSP48_1_U.ce(ce);
        mxm_execute_ursa_mac_muladd_8ns_8s_20s_20_4_1_DSP48_1_U.in0(din0);
        mxm_execute_ursa_mac_muladd_8ns_8s_20s_20_4_1_DSP48_1_U.in1(din1);
        mxm_execute_ursa_mac_muladd_8ns_8s_20s_20_4_1_DSP48_1_U.in2(din2);
        mxm_execute_ursa_mac_muladd_8ns_8s_20s_20_4_1_DSP48_1_U.dout(dout);

    }

};

#endif //
