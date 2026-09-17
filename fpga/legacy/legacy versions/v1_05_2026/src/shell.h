#ifndef __SHELL_H__
#define __SHELL_H__

#include "sa.h"
#include "im2col.h"

#define SA_BAD_SIZES 2
#define SA_SUCCESS   0

typedef uint8_t sa_result_t;

sa_result_t mxm_execute_ursa(
    int8_t  *addr_a0,  
    unsigned short a0_p, 
    uint8_t *addr_b0, 
    unsigned short b0_q,
    int32_t *addr_c0,  
    unsigned short m//,

    // uint8_t *addr_img, 
    // uint8_t ch_in, 
    // uint16_t wh_in,
    // uint8_t wh_kernel,
    // uint8_t stride   
);

#endif 