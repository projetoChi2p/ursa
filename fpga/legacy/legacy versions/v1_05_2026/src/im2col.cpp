#include "im2col.h"

//From Berkeley Vision's Caffe
//Refer to Caffe's license : https://github.com/BVLC/caffe/blob/master/LICENSE
static inline uint8_t is_a_ge_zero_and_a_lt_b(int a, int b) {
    return (unsigned int)a < (unsigned int)(b);
}

int populate_scratchpad_bi_with_im2col_2(
    const uint8_t *data_im, 
    const uint8_t channels, 
    const uint16_t height, const uint16_t width, 
    const uint8_t kernel_h, const uint8_t kernel_w,
    const uint8_t pad_h, const uint8_t pad_w,
    const uint8_t stride_h, const uint8_t stride_w,
    uint8_t *scratchpad_bi,
    unsigned short *n_c_cols_b_cols
){
    uint8_t *data_col = scratchpad_bi;

    const uint16_t output_h = (height + 2 * pad_h - ((kernel_h - 1) + 1)) / stride_h + 1;
    const uint16_t output_w = (width  + 2 * pad_w - ((kernel_w - 1) + 1)) / stride_w + 1;
    uint16_t aligned_wh_out = output_h * output_w;

    #if USE_ALIGNED_ARRAY_SIZE
        aligned_wh_out = ((uint16_t)(( (aligned_wh_out) + USE_ALIGNED_ARRAY_SIZE - 1 ) / USE_ALIGNED_ARRAY_SIZE))*USE_ALIGNED_ARRAY_SIZE;
    #endif

    (*n_c_cols_b_cols) = aligned_wh_out;

    uint32_t scratchpad_pixels = ( (channels*kernel_h*kernel_w)*aligned_wh_out );
    if ( SCRATCHPAD_I_SIZE < scratchpad_pixels ){
        // send_status(scratchpad_pixels, __LINE__);
        // return EXIT_FAILURE;
        return 0;
    }
    const int channel_size = height * width;
    
    for (uint8_t channel = channels; channel--; data_im += channel_size) {
        for (uint8_t kernel_row = 0; kernel_row < kernel_h; kernel_row++) {
            for (uint8_t kernel_col = 0; kernel_col < kernel_w; kernel_col++) {
        
                int input_row = -pad_h + kernel_row;

                for (int output_rows = output_h; output_rows; output_rows--) {
                    if (!is_a_ge_zero_and_a_lt_b(input_row, height)) {
                        for (int output_cols = output_w; output_cols; output_cols--) {
                            *(data_col++) = 0;
                        }
                    } 
                    else {
                        int input_col = -pad_w + kernel_col;

                        for (int output_col = output_w; output_col; output_col--) {
                            if (is_a_ge_zero_and_a_lt_b(input_col, width)) {
                                *(data_col++) = data_im[input_row * width + input_col];
                            } else {
                                *(data_col++) = 0;  
                            }
                            input_col += stride_w;
                        }
                    }
                    input_row += stride_h;
                }

                for (int k = (output_h*output_w); k < aligned_wh_out; k++) {
                    *(data_col++) = 0;
                }
            }
        }
    }

    // Xil_DCacheFlush(); // Flush obrigatório para garantir consistência na OCM

    return 0;
    // return EXIT_SUCCESS;
}

int populate_bi_with_scrachpad_bi_2(uint8_t* buffer_in, uint32_t m, uint32_t q, data_b_t* bi){
    memcpy((void*)bi, (void*)buffer_in, m*q);

    // for (uint32_t i = 0; i < m * q; i++) {
    //     bi[i] = static_cast<data_b_t>(buffer_in[i]);
    // }

    return 0;
} 


int populate_bi_with_im2col_2(
    const uint8_t *data_im, 
    const uint8_t channels,
    const uint16_t height, const uint16_t width, 
    const uint8_t kernel_h, const uint8_t kernel_w,
    const uint8_t pad_h, const uint8_t pad_w,
    const uint8_t stride_h, const uint8_t stride_w,
    uint16_t* n_c_cols_b_cols,
    data_b_t* bi
){

    // printf(
    //     "[ursa] Arguments received:\n"
    //     "  data_im  = %p"
    //     "  bi  = %p\n "
    //     "height = %d - width = %d - kernel_h = %d - kernel_w = %d - pad_h = %d - pad_w = %d - stride_h = %d - stride_w = %d\n",
    //     (void*)data_im,
    //     (void*)bi,
    //     height, width, kernel_h, kernel_w, pad_h, pad_w, stride_h, stride_w
    // );


    // Agora aponta direto para bi (pode ser BRAM ou OCM)
    data_b_t *data_col = bi;

    const uint16_t output_h = (height + 2 * pad_h - ((kernel_h - 1) + 1)) / stride_h + 1;
    const uint16_t output_w = (width  + 2 * pad_w - ((kernel_w - 1) + 1)) / stride_w + 1;
    uint16_t aligned_wh_out = output_h * output_w;

    #if USE_ALIGNED_ARRAY_SIZE
        aligned_wh_out = ((uint16_t)(( (aligned_wh_out) + USE_ALIGNED_ARRAY_SIZE - 1 ) / USE_ALIGNED_ARRAY_SIZE)) * USE_ALIGNED_ARRAY_SIZE;
        // if (aligned_wh_out != (output_h * output_w)){
        //     printf("ceil(%u)=%u [%d]\r\n", (output_h*output_w), aligned_wh_out, __LINE__);
        // }
    #endif

    (*n_c_cols_b_cols) = aligned_wh_out;

    uint32_t scratchpad_pixels = (channels * kernel_h * kernel_w) * aligned_wh_out;
    // if (SCRATCHPAD_I_SIZE < scratchpad_pixels){
    //     send_status(scratchpad_pixels, __LINE__);
    //     return EXIT_FAILURE;
    // }

    const int channel_size = height * width;
    
    for (uint8_t channel = channels; channel--; data_im += channel_size) {
        for (uint8_t kernel_row = 0; kernel_row < kernel_h; kernel_row++) {
            for (uint8_t kernel_col = 0; kernel_col < kernel_w; kernel_col++) {
        
                int input_row = -pad_h + kernel_row;

                for (int output_rows = output_h; output_rows; output_rows--) {
                    if (!is_a_ge_zero_and_a_lt_b(input_row, height)) {
                        for (int output_cols = output_w; output_cols; output_cols--) {
                            *(data_col++) = (data_b_t)(0);
                        }
                    } 
                    else {
                        int input_col = -pad_w + kernel_col;

                        for (int output_col = output_w; output_col; output_col--) {
                            if (is_a_ge_zero_and_a_lt_b(input_col, width)) {
                                *(data_col++) = (data_b_t)(data_im[input_row * width + input_col]);
                                // *(data_col++) = (data_b_t)(0);
                            } else {
                                *(data_col++) = (data_b_t)(0);
                            }
                            input_col += stride_w;
                        }
                    }
                    input_row += stride_h;
                }

                for (int k = (output_h * output_w); k < aligned_wh_out; k++) 
                {
                    *(data_col++) = (data_b_t)(0);
                }
            }
        }
    }

    // return EXIT_SUCCESS;
    return 0;

}