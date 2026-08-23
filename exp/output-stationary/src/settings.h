#ifndef __SETTINGS_H__
#define __SETTINGS_H__

#include <cstdint>
#include <stdio.h>
#include <stdint.h>
#include <limits.h>

//===============================================
// Settings for output-stationary only
//===============================================

// Synthesis HLS
#ifdef __SYNTHESIS__
    #define AP_FIXED
    #include "hls_stream.h"
#endif

//===============================================
// Build parameters
// Every value below can be overridden with -D from the command line.
// The batch synthesis script uses this to sweep configurations without
// editing the source. The values here are defaults for a local build.
//===============================================

// Systolic Array Size
#ifndef SA_SIZE
    #define SA_SIZE 8
#endif

// Width of macc_t, the accumulator inside each PE
#ifndef ACC_BITS
    #define ACC_BITS 20
#endif
 
// Enable for debug
// #define DEBUG

// Intern Codes
#define SA_SUCCESS      0
#define SA_ERROR        1

// Math SA
#ifdef AP_FIXED
    #include "ap_fixed.h"

    typedef ap_int  <8>  data_a_t;  //weight
    typedef ap_uint <8>  data_b_t;  //pixel
    typedef ap_int  <32> data_c_t;  //bramc
    typedef ap_int  <ACC_BITS> macc_t;    //bramc
#else
    typedef int8_t  data_a_t;       //weight
    typedef uint8_t data_b_t;       //pixel
    typedef int32_t data_c_t;       //bramc
    typedef int32_t macc_t;         //bramc
#endif

typedef uint8_t sa_result_t;
 
// Public API
sa_result_t mxm_execute_ursa(
    int8_t  *addr_a0,
    uint16_t a0_p,
    uint8_t *addr_b0,
    uint16_t b0_q,
    int32_t *addr_c0,
    uint16_t m
);

#endif /* __SETTINGS_H__ */