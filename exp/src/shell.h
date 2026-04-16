#ifndef __SHELL_H__
#define __SHELL_H__

#include "sa.h"
#include <cstdint>


#define SA_SUCCESS   0
#define SA_ERROR     1
#define SA_LABFT_ERROR  2

// #define LABFT
// #define FAULT_INJECT
// #define DEBUG

#ifdef LABFT
    #include "labft.h"
    sa_result_t mxm_execute_ursa(
        int8_t   *addr_a0,  
        uint16_t  a0_p, 
        uint8_t  *addr_b0, 
        uint16_t  b0_q,
        int32_t  *addr_c0,  
        uint16_t  m,
        // bool     &tile_done,
        // bool     &labft_irq,     // ap_none: pulsa 1 ciclo por tile com erro → GIC (borda de subida)
        uint16_t &labft_count    // s_axilite: ARM lê ao final do MxM
    );
    
#else
    sa_result_t mxm_execute_ursa(
        int8_t  *addr_a0,  
        uint16_t a0_p, 
        uint8_t *addr_b0, 
        uint16_t b0_q,
        int32_t *addr_c0,  
        uint16_t m
    );
#endif



#endif 