#ifndef __SHELL_H__
#define __SHELL_H__

#include "sa.h"

#define SA_BAD_SIZES 2
#define SA_SUCCESS   0

typedef uint8_t sa_result_t;

sa_result_t mxm_execute_ursa(
    int8_t  *addr_a0, unsigned short a0_p, 
    uint8_t *addr_b0, unsigned short b0_q, 
    int32_t *addr_c0, unsigned short m
);

#endif 