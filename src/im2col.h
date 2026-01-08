#ifndef __IM2COL_H__
#define __IM2COL_H__

#include "math_sa.h"
#include "sa.h"

#define USE_ALIGNED_ARRAY_SIZE SA_SIZE
#define SCRATCHPAD_I_SIZE (16*1024)

int populate_scratchpad_bi_with_im2col_2(
    const uint8_t *data_im, 
    const uint8_t channels, 
    const uint16_t height, const uint16_t width, 
    const uint8_t kernel_h, const uint8_t kernel_w,
    const uint8_t pad_h, const uint8_t pad_w,
    const uint8_t stride_h, const uint8_t stride_w,
    uint8_t *scratchpad_bi,
    unsigned short *n_c_cols_b_cols
);

int populate_bi_with_scrachpad_bi_2(
    uint8_t* buffer_in, 
    uint32_t m, 
    uint32_t q, 
    data_b_t* bi
);

int populate_bi_with_im2col_2(
    const uint8_t *data_im, 
    const uint8_t channels,
    const uint16_t height, const uint16_t width, 
    const uint8_t kernel_h, const uint8_t kernel_w,
    const uint8_t pad_h, const uint8_t pad_w,
    const uint8_t stride_h, const uint8_t stride_w,
    uint16_t* n_c_cols_b_cols,
    data_b_t* bi
);

#endif