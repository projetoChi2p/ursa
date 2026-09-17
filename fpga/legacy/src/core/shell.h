#ifndef __SHELL_H__
#define __SHELL_H__

#include "sa.h"

#ifdef LABFT
    #include "../labft/labft.h"
#endif

#ifdef IM2COL
    #include "../im2col/im2col.h"
    static data_b_t g_bi_im2col[SCRATCHPAD_I_SIZE];
#endif

#ifdef FAULT_INJECT
    #include <cstdlib>
#endif


// #ifdef LABFT
//     #include "labft.h"
//     sa_result_t mxm_execute_ursa(
//         int8_t   *addr_a0,  
//         uint16_t  a0_p, 
//         uint8_t  *addr_b0, 
//         uint16_t  b0_q,
//         int32_t  *addr_c0,  
//         uint16_t  m,
//         // bool     &labft_irq,     // ap_none: pulsa 1 ciclo por tile com erro → GIC (borda de subida)
//         uint16_t &labft_count    // s_axilite: ARM lê ao final do MxM
//     );
    
// #else
//     sa_result_t mxm_execute_ursa(
//         int8_t  *addr_a0,  
//         uint16_t a0_p, 
//         uint8_t *addr_b0, 
//         uint16_t b0_q,
//         int32_t *addr_c0,  
//         uint16_t m
//     );
// #endif



#endif 