#ifndef __SETTINGS_H__
#define __SETTINGS_H__

#include <cstdint>
#include <stdio.h>
#include <stdint.h>
#include <limits.h>

//===============================================
// Settings for output-stationary only
//===============================================

// Arbitrary-precision types
// UM: 23/09/26
// AP_FIXED used to be set only under __SYNTHESIS__. C simulation then ran
// with int32_t accumulators that never wrap, while the hardware wraps at
// ACC_BITS: a shape that overflows passed csim and failed on the board.
// __VITIS_HLS__ is defined by Vitis HLS in csim, synthesis and cosim alike,
// so all three now see the same types. A plain gcc build (the host-side CNN
// engine) defines neither and keeps the native types. -DAP_FIXED forces it.
#if defined(__SYNTHESIS__) || defined(__VITIS_HLS__)
    #ifndef AP_FIXED
        #define AP_FIXED
    #endif
#endif


//===============================================
// Build parameters
// Every value below can be overridden with -D from the command line.
// The batch synthesis script uses this to sweep configurations without
// editing the source. The values here are defaults for a local build.
//===============================================

// Systolic Array Size
#ifndef SA_SIZE
    #define SA_SIZE 4
#endif

// Width of macc_t, the accumulator inside each PE
#ifndef ACC_BITS
    #define ACC_BITS 20
#endif

// Largest reduction dimension M the shell buffers on chip.
// T3 needs 144 (3x3x16). The shell returns SA_ERROR if m exceeds it.
#ifndef MAX_M
    #define MAX_M 256
#endif


// Enable for debug
// #define DEBUG

// Intern Codes
#define SA_SUCCESS      0
#define SA_ERROR        1

// Math SA
#ifdef AP_FIXED
    #include "ap_fixed.h"
 
    typedef ap_int  <8>  data_a_t; //weight
    typedef ap_uint <8>  data_b_t; //pixel
    typedef ap_int  <32> data_c_t; //bramc
    typedef ap_int  <ACC_BITS> macc_t;   //accumulator
    // UM: 23/09/26
    typedef ap_uint<8*SA_SIZE> sa_word_t;
    typedef sa_word_t a_word_t;
    typedef sa_word_t b_word_t;
#else
    typedef int8_t  data_a_t; //weight
    typedef uint8_t data_b_t; //pixel
    typedef int32_t data_c_t; //bramc
    typedef int32_t macc_t;   //bramc
#endif


typedef uint8_t sa_result_t;
 
// Public API
// UM:23/09/26
sa_result_t mxm_execute_ursa(
#ifdef AP_FIXED
    a_word_t *addr_a0,
#else
    int8_t   *addr_a0,
#endif
    uint16_t a0_p,
#ifdef AP_FIXED
    b_word_t *addr_b0,
#else
    uint8_t  *addr_b0,
#endif
    uint16_t b0_q,
    int32_t *addr_c0,
    uint16_t m
);


#endif /* __SETTINGS_H__ */