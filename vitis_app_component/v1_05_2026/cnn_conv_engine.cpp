
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <assert.h>
#include <math.h>
#include <sys/_intsup.h>
#include <sys/_stdint.h>

#include "math_tb.h"

#include "cnn_network.h"
#include "cnn_weights.h"
#include "cnn_conv_engine.h"


pixel_t   g_pixel_buffer[PIXEL_BUFFER_N][PIXEL_BUFFER_SIZE];
macc_tb_t g_feature_buffer[FEATURE_BUFFER_N][FEATURE_BUFFER_SIZE];
gpool_t   g_pooling_buffer[POOLING_CH_OUT];

uint8_t sa_status;

//Used by INPUT
int populate_test_image_chw_on_pixel_buffer(uint8_t out_buffer, uint8_t* pixels) {

    int image_pixels = (IMAGE_SZ_IN*IMAGE_SZ_IN*IMAGE_CH_IN);

    if (out_buffer >= PIXEL_BUFFER_N ) {
        send_status(out_buffer, __LINE__);
        return EXIT_FAILURE;
    }

    if (PIXEL_BUFFER_SIZE < image_pixels ) {
        send_status(image_pixels, __LINE__);
        return EXIT_FAILURE;
    }

    for (int ch=0; ch < IMAGE_CH_IN; ch++)
    {
        for (int r=0; r < IMAGE_SZ_IN; r++)
        {
            for (int c=0; c < IMAGE_SZ_IN; c++)
            {
                int hwc_offset = r*(IMAGE_SZ_IN*IMAGE_CH_IN) +
                                c*(IMAGE_CH_IN) +
                                ch;

                int chw_offset = ch*(IMAGE_SZ_IN*IMAGE_SZ_IN) +
                                r*(IMAGE_SZ_IN) +
                                c;

                g_pixel_buffer[out_buffer][chw_offset] = pixel_from_uint8(pixels[hwc_offset]);
            }
        }
    }

    return EXIT_SUCCESS;
}

//Used after CONV
int net_process_layer_mul_in_place(uint8_t in_out_buffer, float scale,uint8_t ch_out, uint16_t wh_out){
	int layer_features = (wh_out*wh_out*ch_out);

	if (FEATURE_BUFFER_SIZE < layer_features ) {
		send_status(layer_features, __LINE__);
		return EXIT_FAILURE;
	}

	macc_tb_t* in_out_data =  &(g_feature_buffer[in_out_buffer][0]);

    for ( int i=0; i<layer_features; i++){
        float f;
        f = macc_to_float(in_out_data[i]);
        f *= scale;
        in_out_data[i] = macc_to_float(f);
    }

    return EXIT_SUCCESS;
}

//Used internally by pop. aw with all the weights
static int check_weigths_into_mem(weight_t* mem_check){
    unsigned int i,index=0;
    unsigned int offset_pad=0;

    #ifdef CNN_NETWORK_T3
    //layer 1
    for(i=0;i<TOTAL_NUM_WEIGHTS_1;i++){
        if(mem_check[index]!=g_weights_q_1.weights[i]){
            send_status(mem_check[index], __LINE__);
            return EXIT_FAILURE;
        }
        index++;
    }
    
    offset_pad = TOTAL_NUM_WEIGHTS_WITH_PADDING_1-TOTAL_NUM_WEIGHTS_1;
    index = index + offset_pad;

    //layer 2
    for(i=0;i<TOTAL_NUM_WEIGHTS_2;i++){
        if(mem_check[index]!=g_weights_q_2.weights[i]){
            send_status(mem_check[index], __LINE__);
            return EXIT_FAILURE;
        }
        index++;
    }

    offset_pad = TOTAL_NUM_WEIGHTS_WITH_PADDING_2-TOTAL_NUM_WEIGHTS_2;
    index = index + offset_pad;
    
    //layer 3
    for(i=0;i<TOTAL_NUM_WEIGHTS_3;i++){
        if(mem_check[index]!=g_weights_q_3.weights[i]){
            send_status(mem_check[index], __LINE__);
            return EXIT_FAILURE;
        }
        index++;
    }

    //xil_printf("[check_weigths_into_mem] Check mem aw is ok!\n\r");

    #endif /* CNN_NETWORK_T3 */
    return EXIT_SUCCESS;
}
//Used internally by pop. aw with all the weights
static unsigned int save_layer_with_padding(
    volatile weight_t *mem, 
    unsigned int *index_ptr, 
    const weight_t *weights, 
    unsigned int row, 
    unsigned int col,
    unsigned int layer_id 
){
    unsigned int padded_rows = ((row + SA_SIZE - 1) / SA_SIZE) * SA_SIZE;
    // unsigned int padded_cols = ((col + SA_SIZE - 1) / SA_SIZE) * SA_SIZE;
    unsigned int padded_cols = col; // No padding for columns (M)
    unsigned int count = 0;
    unsigned int weight_idx = 0;

    for (unsigned int r = 0; r < padded_rows; r++) {
        for (unsigned int c = 0; c < padded_cols; c++) {
            if (r < row && c < col) {
                mem[*index_ptr] = weights[weight_idx++];
            } else {
                mem[*index_ptr] = 0; // padding
            }
            (*index_ptr)++;
            count++;
        }
    }

    // Optional debug
    // xil_printf("[populate_aw_with_all_weights] Camada %u: escrita %u×%u (real %u×%u) → %u valores gravados\n\r",
    //             layer_id, padded_rows, padded_cols, row, col, count);

    return count;
}
//Used by INPUT
int populate_aw_with_all_the_weights(weight_t* aw){

    unsigned int index = 0;
    unsigned int total_weights = 0;

    #ifdef CNN_NETWORK_T3

    unsigned int count_weights_1 = save_layer_with_padding(aw, &index, g_weights_q_1.weights,
                                CONV1_CH_OUT, CONV1_WH_KERNEL * CONV1_WH_KERNEL * CONV1_CH_IN, 1);

    unsigned int count_weights_2 = save_layer_with_padding(aw, &index, g_weights_q_2.weights,
                                CONV2_CH_OUT, CONV2_WH_KERNEL * CONV2_WH_KERNEL * CONV2_CH_IN, 2);

    unsigned int count_weights_3 = save_layer_with_padding(aw, &index, g_weights_q_3.weights,
                                CONV3_CH_OUT, CONV3_WH_KERNEL * CONV3_WH_KERNEL * CONV3_CH_IN, 3);

    total_weights = count_weights_1 + count_weights_2 + count_weights_3;

    if (total_weights != TOTAL_NUM_WEIGHTS) {
        send_status(total_weights, __LINE__);
        return EXIT_FAILURE;
    }
        
    //check_weigths_into_mem(aw);

    #endif /* CNN_NETWORK_T3 */

    return EXIT_SUCCESS;
}

#define USE_PACK_WEIGHTS       0

#if USE_PACK_WEIGHTS
    #ifdef MATH_IS_SCALED_4
        #define WEIGHT_PACKING 2
    #endif
    #ifdef MATH_IS_SCALED_8
        #define WEIGHT_PACKING 1
    #endif
#else
    #define WEIGHT_PACKING 1
#endif

#define SCRATCHPAD_W_SIZE (16*1024)
#define SCRATCHPAD_I_SIZE (16*1024)
#define SCRATCHPAD_A_SIZE (16*1024)

int8_t g_scratchpad_aw[SCRATCHPAD_W_SIZE];  // packed weights

uint8_t g_scratchpad_bi[SCRATCHPAD_I_SIZE]; // im2col ulisses aqui
//  __attribute__((aligned (8)))
//  __attribute__((section(".noinit.test")))
//  uint8_t g_scratchpad_bi[SCRATCHPAD_I_SIZE];


#ifdef MATH_IS_SCALED_4
    typedef int16_t container_a_t;
#endif
#ifdef MATH_IS_SCALED_8
    typedef int32_t container_a_t;
#endif

container_a_t g_scratchpad_ca[SCRATCHPAD_A_SIZE]; // feature map

static void pack_weight(weight_t* weights, int8_t* scratchpad_aw, uint16_t w_offset){
    #if USE_PACK_WEIGHTS
    #ifdef MATH_IS_SCALED_4
        #define WEIGHT_BITS 4
        #define WEIGHT_MASK 0xF
        assert((USE_ALIGNED_ARRAY_SIZE%WEIGHT_PACKING)==0);
    #endif
    #endif
    
    union { int8_t i8; uint8_t u8; } weight_var;
    weight_var.i8 = weights[w_offset];

    #if (WEIGHT_PACKING != 1)
        uint8_t u8;
        uint8_t part_index =   (w_offset%WEIGHT_PACKING);
        uint16_t part_offset = (w_offset/WEIGHT_PACKING);
        uint8_t part_mask = WEIGHT_MASK << (WEIGHT_BITS*part_index);

        u8 = scratchpad_aw[ part_offset ] & (~part_mask);
        // pack n-bits weight into word
        u8 |= (weight_var.u8 << (WEIGHT_BITS*part_index)) & part_mask;
        scratchpad_aw[ part_offset ] = u8;
    #else
        scratchpad_aw[ w_offset ] = weight_var.u8;
    #endif
}

static weight_t unpack_weight(const int8_t* scratchpad_aw, const uint16_t w_offset){
    weight_t w;

    #if USE_PACK_WEIGHTS
    #ifdef MATH_IS_SCALED_4
        #define WEIGHT_BITS 4
        #define WEIGHT_MASK 0xF
        assert((USE_ALIGNED_ARRAY_SIZE%WEIGHT_PACKING)==0);
    #endif
    #endif
    
    union { int8_t i8; uint8_t u8; } weight_var;
    
    #if (WEIGHT_PACKING != 1)
        uint8_t u8;
        uint8_t part_index =   (w_offset%WEIGHT_PACKING);
        uint16_t part_offset = (w_offset/WEIGHT_PACKING);
        uint8_t part_mask = WEIGHT_MASK << (WEIGHT_BITS*part_index);

        weight_var.u8 = (scratchpad_aw[ part_offset ] & part_mask) >> (WEIGHT_BITS*part_index);
        if ( weight_var.u8 & (1<<(WEIGHT_BITS-1)) )
        {
            // signal extension
            weight_var.u8 |= 0xF0;
        }
    #else
        weight_var.u8 = scratchpad_aw[ w_offset ];
    #endif
    
    w = weight_var.i8;

    return w;
}

//From Berkeley Vision's Caffe
//Refer to Caffe's license : https://github.com/BVLC/caffe/blob/master/LICENSE
static inline uint8_t is_a_ge_zero_and_a_lt_b(int a, int b) {
    return (unsigned int)a < (unsigned int)(b);
}

void send_status_and_hang(int status, int line){
    xil_printf("\r\nNL " );
    xil_printf("%d ", line);
    xil_printf("%08x", status);
    xil_printf(" +++\r\n");
    while (1) {
        // hang
        ;
    }
    // j.i.c
    exit(-status);
}


//Used internally by net process layer pixel conv sa
static void aligned_sa_p(uint8_t ch_out ,uint16_t* l_c_rows_a_rows){
    #if USE_ALIGNED_ARRAY_SIZE
        uint16_t aligned_ch_out = ((int)(( ch_out + USE_ALIGNED_ARRAY_SIZE - 1 ) / USE_ALIGNED_ARRAY_SIZE))*USE_ALIGNED_ARRAY_SIZE;
    #else
        uint16_t aligned_ch_out = ch_out;
    #endif

    (*l_c_rows_a_rows) = aligned_ch_out;
}
//Used internally by net process layer pixel conv sa
static int populate_bi_with_im2col(
    const pixel_t *data_im, 
    const uint8_t channels,
    const uint16_t height, const uint16_t width, 
    const uint8_t kernel_h, const uint8_t kernel_w,
    const uint8_t pad_h, const uint8_t pad_w,
    const uint8_t stride_h, const uint8_t stride_w,
    uint16_t* n_c_cols_b_cols,
    pixel_t* bi
){
    // Agora aponta direto para bi (pode ser BRAM ou OCM)
    pixel_t *data_col = bi;

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
    if (SCRATCHPAD_I_SIZE < scratchpad_pixels){
        send_status(scratchpad_pixels, __LINE__);
        return EXIT_FAILURE;
    }

    const int channel_size = height * width;
    
    for (uint8_t channel = channels; channel--; data_im += channel_size) {
        for (uint8_t kernel_row = 0; kernel_row < kernel_h; kernel_row++) {
            for (uint8_t kernel_col = 0; kernel_col < kernel_w; kernel_col++) {
        
                int input_row = -pad_h + kernel_row;

                for (int output_rows = output_h; output_rows; output_rows--) {
                    if (!is_a_ge_zero_and_a_lt_b(input_row, height)) {
                        for (int output_cols = output_w; output_cols; output_cols--) {
                            *(data_col++) = (pixel_t)(0);
                        }
                    } 
                    else {
                        int input_col = -pad_w + kernel_col;

                        for (int output_col = output_w; output_col; output_col--) {
                            if (is_a_ge_zero_and_a_lt_b(input_col, width)) {
                                *(data_col++) = (pixel_t)(data_im[input_row * width + input_col]);
                            } else {
                                *(data_col++) = (pixel_t)(0);
                            }
                            input_col += stride_w;
                        }
                    }
                    input_row += stride_h;
                }

                for (int k = (output_h * output_w); k < aligned_wh_out; k++) 
                {
                    *(data_col++) = (pixel_t)(0);
                }
            }
        }
    }

    Xil_DCacheFlush(); // Flush obrigatório para garantir consistência na OCM

    return EXIT_SUCCESS;

}
//Used internally by net process layer pixel conv sa
static int sa_compute(
    XMxm_execute_ursa* pxMxm, 
    uint32_t p, 
    uint32_t q, 
    uint32_t m,
    uint32_t addr_a, 
    uint32_t addr_b, 
    uint32_t addr_c
){
    int k;

    k = TIMEOUT_STEPS_FOR_REGS;
    while ( ( XMxm_execute_ursa_IsIdle(pxMxm) == 0 ) && ( k != 0 ) ) {
        usleep(TIMEOUT_USLEEP);
        k -= 1;
    }
    if (k==0) {
        send_status_and_hang(0, __LINE__);
    }


    XMxm_execute_ursa_Set_a0_p(pxMxm, p);
    XMxm_execute_ursa_Set_b0_q(pxMxm, q);
    XMxm_execute_ursa_Set_m(pxMxm, m);
    
    XMxm_execute_ursa_Set_addr_a0(pxMxm, addr_a);
    XMxm_execute_ursa_Set_addr_b0(pxMxm, addr_b);
    XMxm_execute_ursa_Set_addr_c0(pxMxm, addr_c);

    // start the accelerator
	XMxm_execute_ursa_Start(pxMxm);

	k = TIMEOUT_STEPS_FOR_OPS*(p*q*m);

	while ( (XMxm_execute_ursa_IsDone(pxMxm) == 0 ) && ( k != 0 ) ){
		usleep(TIMEOUT_USLEEP);
		k -= 1;
	}
	if (k==0) {
		return ERROR_TIMEOUT+__LINE__;
	}

    u32 u32Return = XMxm_execute_ursa_Get_return(pxMxm);

    k = TIMEOUT_STEPS_FOR_OPS;
	while ( (XMxm_execute_ursa_IsIdle(pxMxm) == 0 ) && ( k != 0 ) ){
		usleep(TIMEOUT_USLEEP);
		k -= 1;
	}
	if (k==0) {
		return ERROR_TIMEOUT+__LINE__;
	}

    return XST_SUCCESS;
}


//Used internally by net process layer pixel conv sa
static int populate_outdata_with_ca(
    int32_t* ca, 
    unsigned int wh_out, 
    unsigned int ch_out, 
    unsigned int n_c_cols_b_cols,
    container_a_t* out_data
){
    #ifdef CNN_NETWORK_T3   
    for (unsigned int co = 0; co < ch_out; co++) {
        for (unsigned int y = 0; y < wh_out; y++) {
            for (unsigned int x = 0; x < wh_out; x++) {
                unsigned int src_index = x + y * wh_out + co * n_c_cols_b_cols;
                unsigned int dst_index = x + y * wh_out + co * wh_out * wh_out;

                out_data[dst_index] = (container_a_t)ca[src_index];
            }
        }
    }
    Xil_DCacheFlush();
    #endif /* CNN_NETWORK_T3 */

    return EXIT_SUCCESS;
}

/**************** USE ONLY MXM ARM ******************************************/
//Used internally by net process layer pixel conv sa when mxm is made arm
static void mxm_execute_arm(
    weight_t* aw_2,
    pixel_t* bi,
    container_a_t* ca,
    uint16_t l_c_rows_a_rows, 
    uint16_t n_c_cols_b_cols, 
    uint16_t m_a_cols_b_rows
){
    uint16_t r, c, k;

    for (r=0;r<l_c_rows_a_rows;r++) {
        for (c=0;c<n_c_cols_b_cols; c++) {
            container_a_t sum = 0;

            for (k = 0; k < m_a_cols_b_rows; k++) {
                weight_t w = aw_2[r * m_a_cols_b_rows + k];
                pixel_t  i = bi[k * n_c_cols_b_cols + c];

                sum += (container_a_t)w * (container_a_t)i;
            }

            ca[r * n_c_cols_b_cols + c] = sum;
        }
    }
}
//Used internally by net process layer pixel conv sa when mxm is made arm
static int populate_weight_scratchpad(
    weight_t* weights,
    uint8_t wh_kernel,
    uint8_t ch_in,
    uint8_t ch_out,
    int8_t* scratchpad_aw,
    uint16_t* l_c_rows_a_rows)
{

    #if USE_ALIGNED_ARRAY_SIZE
        int16_t aligned_ch_out = ((int)(( ch_out + USE_ALIGNED_ARRAY_SIZE - 1 ) / USE_ALIGNED_ARRAY_SIZE))*USE_ALIGNED_ARRAY_SIZE;
    #else
        int16_t aligned_ch_out = ch_out;
    #endif
    (*l_c_rows_a_rows) = aligned_ch_out;
    int32_t scratchpad_weights = ( (aligned_ch_out*ch_in*wh_kernel*wh_kernel) + WEIGHT_PACKING - 1)/WEIGHT_PACKING;
    // TODO check scratchpad_weights + offset against SCRATCHPAD_W_SIZE 
    if ( SCRATCHPAD_W_SIZE < scratchpad_weights ){
        send_status(scratchpad_weights, __LINE__);
        return EXIT_FAILURE;
    }

    for (uint8_t co=0; co<ch_out; co++) {
        for (uint8_t ci=0; ci<ch_in; ci++) {
            for (uint8_t j=0; j<wh_kernel; j++) {
                for (uint8_t i=0; i<wh_kernel; i++) {
                    // Weights are organized in memory as [chout, chin, k, k], e.g. [16, 4, 3, 3]
                    uint16_t w_offset = co * (ch_in*wh_kernel*wh_kernel) +
                                           ci * (wh_kernel*wh_kernel) +
                                           j * wh_kernel +
                                           i;
                    pack_weight(weights, scratchpad_aw, w_offset);
                }
            }
        }
    }

    for (uint8_t co=ch_out; co<aligned_ch_out; co++){
        for (uint16_t k=0; k<((ch_in*wh_kernel*wh_kernel)/WEIGHT_PACKING); k++){
            scratchpad_aw[ co*((ch_in*wh_kernel*wh_kernel)/WEIGHT_PACKING) + k ] = 0;
        }
    }

	return EXIT_SUCCESS;
}
//Used internally by net process layer pixel conv sa when mxm is made arm and sa with bram
static int populate_scratchpad_bi_with_im2col(
    const pixel_t *data_im, 
    const uint8_t channels,
    const uint16_t height, const uint16_t width, 
    const uint8_t kernel_h, const uint8_t kernel_w,
    const uint8_t pad_h, const uint8_t pad_w,
    const uint8_t stride_h, const uint8_t stride_w,
    uint8_t *scratchpad_bi,
    uint16_t* n_c_cols_b_cols
)
{
    uint8_t *data_col = scratchpad_bi;

    const uint16_t output_h = (height + 2 * pad_h - ((kernel_h - 1) + 1)) / stride_h + 1;
    const uint16_t output_w = (width  + 2 * pad_w - ((kernel_w - 1) + 1)) / stride_w + 1;
    uint16_t aligned_wh_out = output_h * output_w;

    #if USE_ALIGNED_ARRAY_SIZE
        aligned_wh_out = ((uint16_t)(( (aligned_wh_out) + USE_ALIGNED_ARRAY_SIZE - 1 ) / USE_ALIGNED_ARRAY_SIZE))*USE_ALIGNED_ARRAY_SIZE;
        // if ( aligned_wh_out != ((output_h*output_w)) ){
        //     printf("ceil(%u)=%u [%d]\r\n", (output_h*output_w), aligned_wh_out, __LINE__);
        // }
    #endif

    (*n_c_cols_b_cols) = aligned_wh_out;

    uint32_t scratchpad_pixels = ( (channels*kernel_h*kernel_w)*aligned_wh_out );
    if ( SCRATCHPAD_I_SIZE < scratchpad_pixels ){
        send_status(scratchpad_pixels, __LINE__);
        return EXIT_FAILURE;
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
                                //*(data_col++) = macc_to_float(data_im[input_row * width + input_col]);
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

    //Xil_DCacheFlush();

    return EXIT_SUCCESS;
}

// Função para calcular mínimo múltiplo comum (LCM)
static inline uint16_t lcm(uint16_t a, uint16_t b) {
    uint16_t x = a, y = b;
    while (y != 0) {
        uint16_t temp = y;
        y = x % y;
        x = temp;
    }
    return (a * b) / x;
}
static int populate_bi_with_scrachpad_bi(uint8_t* buffer_in, uint32_t m, uint32_t q, pixel_t* bi){
    #ifdef CNN_NETWORK_T3
    
    // pixel_t *data_col = bi;
    // //revisar isso aqui, quando sa_size não é multiplo de 4, não consigo copiar e colar direto, vai ser necessário uma mutretagem
    // //xil_printf("Populando bi com %d linhas e %d colunas\n\r", m, q);
    // //((uint16_t)(( (aligned_wh_out) + USE_ALIGNED_ARRAY_SIZE - 1 ) / USE_ALIGNED_ARRAY_SIZE))*USE_ALIGNED_ARRAY_SIZE;
    // int alig_2 = lcm(q,4);
    // //xil_printf("Populando bi com %d linhas e %d colunas\n\r", m, alig_2);    
    // int count=0;
    // q=alig_2;
    // for (int i=0;i<m;i++){
    //     for(int j=0;j<q;j++){
    //         count++;
    //         *(data_col++)=buffer_in[i*q+j];
    //     }
    // }
    //xil_printf("Count = %d  | m*q = %d\n\r",count,m*q);

    memcpy((void*)bi, (void*)buffer_in, m*q);

    // int pqp=0;
    // for (uint32_t i = 0; i < m; i++) {
    //     for (uint32_t j = 0; 256 < q; j++) {
    //         //bi[i*q+j] = (uint8_t)buffer_in[i*q+j];
    //         //bi[i*q+j] = (pixel_t)pqp++;
    //     }
    // }
    
    Xil_DCacheFlush();

    #endif /* CNN_NETWORK_T3 */
    
    return EXIT_SUCCESS;
} 


// http://patorjk.com/software/taag/#f=Colossal
//  .d8888b.                                   .d8888b.        d8888      
// d88P  Y88b                                 d88P  Y88b      d88888      
// 888    888                                 Y88b.          d88P888      
// 888         .d88b.  88888b.  888  888       "Y888b.      d88P 888      
// 888        d88""88b 888 "88b 888  888          "Y88b.   d88P  888      
// 888    888 888  888 888  888 Y88  88P            "888  d88P   888      
// Y88b  d88P Y88..88P 888  888  Y8bd8P       Y88b  d88P d8888888888      
//  "Y8888P"   "Y88P"  888  888   Y88P         "Y8888P" d88P     888      


static int populate_im2col_bi(
    const pixel_t *data_im, 
    const uint8_t channels,
    const uint16_t height, const uint16_t width, 
    const uint8_t kernel_h, const uint8_t kernel_w,
    const uint8_t pad_h, const uint8_t pad_w,
    const uint8_t stride_h, const uint8_t stride_w,
    uint8_t *scratchpad_bi,
    uint16_t* n_c_cols_b_cols,
    pixel_t* bram_b
)
{
    // Agora aponta direto para bram_b
    pixel_t *data_col = bram_b;

    const uint16_t output_h = (height + 2 * pad_h - ((kernel_h - 1) + 1)) / stride_h + 1;
    const uint16_t output_w = (width  + 2 * pad_w - ((kernel_w - 1) + 1)) / stride_w + 1;
    uint16_t aligned_wh_out = output_h * output_w;

    #if USE_ALIGNED_ARRAY_SIZE
        aligned_wh_out = ((uint16_t)(( (aligned_wh_out) + USE_ALIGNED_ARRAY_SIZE - 1 ) / USE_ALIGNED_ARRAY_SIZE)) * USE_ALIGNED_ARRAY_SIZE;

        if (aligned_wh_out != (output_h * output_w))
        {
            printf("ceil(%u)=%u [%d]\r\n", (output_h*output_w), aligned_wh_out, __LINE__);
        }
    #endif

    (*n_c_cols_b_cols) = aligned_wh_out;

    uint32_t scratchpad_pixels = (channels * kernel_h * kernel_w) * aligned_wh_out;
    if (SCRATCHPAD_I_SIZE < scratchpad_pixels)
    {
        send_status(scratchpad_pixels, __LINE__);
        return EXIT_FAILURE;
    }

    const int channel_size = height * width;
    
    for (uint8_t channel = channels; channel--; data_im += channel_size) {
        for (uint8_t kernel_row = 0; kernel_row < kernel_h; kernel_row++) {
            for (uint8_t kernel_col = 0; kernel_col < kernel_w; kernel_col++) {
        
                int input_row = -pad_h + kernel_row;

                for (int output_rows = output_h; output_rows; output_rows--) {
                    if (!is_a_ge_zero_and_a_lt_b(input_row, height)) {
                        for (int output_cols = output_w; output_cols; output_cols--) {
                            *(data_col++) = (pixel_t)(0);
                        }
                    } 
                    else {
                        int input_col = -pad_w + kernel_col;

                        for (int output_col = output_w; output_col; output_col--) {
                            if (is_a_ge_zero_and_a_lt_b(input_col, width)) {
                                *(data_col++) = (pixel_t)(data_im[input_row * width + input_col]);
                            } else {
                                *(data_col++) = (pixel_t)(0);
                            }
                            input_col += stride_w;
                        }
                    }
                    input_row += stride_h;
                }

                for (int k = (output_h * output_w); k < aligned_wh_out; k++) 
                {
                    *(data_col++) = (pixel_t)(0);
                }
            }
        }
    }

    Xil_DCacheFlush(); // Flush obrigatório para garantir consistência na OCM

    return EXIT_SUCCESS;

}


//Used by CONV
int net_process_layer_pixel_conv_sa(
    uint8_t in_buffer, 
    uint8_t out_buffer, 
    weight_t* weights,
    uint8_t stride,
    uint8_t wh_kernel,    
    uint8_t ch_in, uint16_t wh_in,
    uint8_t ch_out, uint16_t wh_out,
    uint32_t addr_weights,
    weight_t* aw,
    pixel_t* bi,
    int32_t* ca,
    XMxm_execute_ursa* pxMxm,
    timing_info_t* timing_info,
    uint8_t conv_seq
){

    int xil_status;
    int rc;
    // there is a mxm/nl/sa core with fixed size
    // weights are packed and augmented into matrix A to comply with core with fixed size
    // im2col is applied from a pixel image buffer to a pixel matrix buffer, augmented to comply with core with fixed size
    // mxm is invoked to process weights matrix A and pixel matrix buffer B in to feature map matrix C
    // scaling/clamp/relu is applied to matrix C, while moving data to a pixel image buffer

    if (in_buffer >= PIXEL_BUFFER_N ) {
        send_status(in_buffer, __LINE__);
        return EXIT_FAILURE;
    }
    if (out_buffer >= FEATURE_BUFFER_N ) {
        send_status(out_buffer, __LINE__);
        return EXIT_FAILURE;
    }

    pixel_t* in_data =  &(g_pixel_buffer[in_buffer][0]);
    macc_tb_t* out_data = &(g_feature_buffer[out_buffer][0]);

    unsigned int row = ch_out;
    unsigned int col = wh_kernel * wh_kernel * ch_in;
    unsigned int padded_rows = ((row + SA_SIZE - 1) / SA_SIZE) * SA_SIZE;
    unsigned int padded_cols = ((col + SA_SIZE - 1) / SA_SIZE) * SA_SIZE;
    unsigned int layer_weights = padded_rows * padded_cols;
    //int layer_weights = (wh_kernel*wh_kernel*ch_in*ch_out);
    if (SCRATCHPAD_W_SIZE < layer_weights ) {
        send_status(layer_weights, __LINE__);
        return EXIT_FAILURE;
    }

    row = wh_kernel * wh_kernel * ch_in;
    col = wh_out * wh_out;
    padded_rows = ((row + SA_SIZE - 1) / SA_SIZE) * SA_SIZE;
    padded_cols = ((col + SA_SIZE - 1) / SA_SIZE) * SA_SIZE;
    int layer_im2col = padded_rows * padded_cols;
    //int layer_im2col = (wh_out * wh_out * ch_in * wh_kernel * wh_kernel);
    if (SCRATCHPAD_I_SIZE < layer_im2col ) {
        send_status(layer_im2col, __LINE__);
        return EXIT_FAILURE;
    }

    int layer_features = (wh_out * wh_out * ch_out);
    if (SCRATCHPAD_A_SIZE < layer_features ) {
        send_status(layer_features, __LINE__);
        return EXIT_FAILURE;
    }

    if (FEATURE_BUFFER_SIZE < layer_features ) {
        send_status(layer_features, __LINE__);
        return EXIT_FAILURE;
    }

    uint16_t l_c_rows_a_rows;
    uint16_t n_c_cols_b_cols;
    uint16_t m_a_cols_b_rows;

    m_a_cols_b_rows = wh_kernel * wh_kernel * ch_in;
    uint8_t pad = 0;
    pad = wh_kernel / 2;

    aligned_sa_p(ch_out,&l_c_rows_a_rows);
    //xil_printf("[conv_sa-%d] aligned_sa_p. (P)l_c_rows_a_rows = %d  \n\r",conv_seq,l_c_rows_a_rows);

#if USE_ONLY_ARM 

/******* USE_ONLY_ARM: POPULATE SCRATCHPAD_AW ******************************************/
    #if MEASURE_TIME
        app_timer_start(4); //start t_populate_aw_with_weights
    #endif

    // if ( (rc = populate_weight_scratchpad(
    //     weights,
    //     wh_kernel,
    //     ch_in,
    //     ch_out,
    //     g_scratchpad_aw,
    //     &l_c_rows_a_rows
    // ) ) != EXIT_SUCCESS )
    // {
    //     send_status(rc, __LINE__);
    //     return rc;
    // };    
    
    #if MEASURE_TIME
        app_timer_stop(4); //stop t_populate_aw_with_weights
        timing_info->t_populate_aw_with_weights[conv_seq] += (unsigned long)app_timer_total_us(4);
    #endif    

/******* USE_ONLY_ARM: POPULATE SCRATCHPAD_BI ******************************************/
    #if MEASURE_TIME
        app_timer_start(4); //start t_populate_bi with im2col
    #endif

    if ( (rc = populate_scratchpad_bi_with_im2col(
        in_data,
        ch_in, wh_in, wh_in,
        wh_kernel, wh_kernel,
        pad, pad,
        stride, stride,
        g_scratchpad_bi,
        &n_c_cols_b_cols
    ) ) != EXIT_SUCCESS )
    {
        send_status(rc, __LINE__);
        return rc;
    };

    /* compute layer_features using aligned ch_out and aligned h.w to check against SCRATCHPAD_A_SIZE */
    layer_features = l_c_rows_a_rows * n_c_cols_b_cols;
    if (SCRATCHPAD_A_SIZE < layer_features ) {
        send_status(layer_features, __LINE__);
        return EXIT_FAILURE;
    }

    #if MEASURE_TIME
        app_timer_stop(4); //stop t_populate_bi with im2col
        timing_info->t_populate_bi_with_im2col[conv_seq] += (unsigned long)app_timer_total_us(4);
    #endif

/******* USE_ONLY_ARM: MXT COMPUTE *****************************************************/
    #if MEASURE_TIME
        app_timer_start(4); //start t_mxm_compute
    #endif
    
    mxm_execute_arm(
        &aw[addr_weights], 
        g_scratchpad_bi, 
        g_scratchpad_ca,
        l_c_rows_a_rows, 
        n_c_cols_b_cols, 
        m_a_cols_b_rows
    );

    #if MEASURE_TIME
        app_timer_stop(4); //stop t_mxm_compute
        timing_info->t_mxm_compute[conv_seq] += (unsigned long)app_timer_total_us(4);
    #endif

/******* USE_ONLY_ARM: RESULT SCRACHPAD_CA TO OUT_DATA *********************************/
    #if MEASURE_TIME
        app_timer_start(4); //start t_populate_outdata_with_ca
    #endif

    // TODO: fuse move from g_scratchpad_ca with RELU+CLAMP
    for (int y=0; y<wh_out; y++) {
        for (int x=0; x<wh_out; x++) {
            for (int co=0; co<ch_out; co++){
                macc_tb_t out;
                // Note: n_c_cols_b_cols may have been padded to match array size
                out = g_scratchpad_ca[ x + y*wh_out + co*n_c_cols_b_cols];
                // Feature map is organized in memory as [ch,h,w], e.g. [4, 32, 32]
                out_data[x + y*wh_out + co*wh_out*wh_out] = out;
            }
        }
    }

    #if MEASURE_TIME
        app_timer_stop(4); //stop t_populate_outdata_with_ca
        timing_info->t_populate_outdata_with_ca[conv_seq] += (unsigned long)app_timer_total_us(4);
    #endif
/**/

#else // USE ACCELERATOR

/******* USE_ACCELERATOR: POPULATE BI WITH IM2C0L **************************************/
    #if MEASURE_TIME
        app_timer_start(4); //start t_populate_bi with im2col
    #endif

    #ifdef BRAM
        // #if CAMPAIGN
        //     Xil_ICacheEnable(); //instruction cache (L1 e L2)
        //     Xil_DCacheEnable(); //data cache (L2)
        // #endif
        if ( (rc = populate_scratchpad_bi_with_im2col(
            in_data,
            ch_in, wh_in, wh_in,
            wh_kernel, wh_kernel,
            pad, pad,
            stride, stride,
            g_scratchpad_bi,
            &n_c_cols_b_cols
        ) ) != EXIT_SUCCESS )
        {
            send_status(rc, __LINE__);
            return rc;
        };
        // #if CAMPAIGN
        //     Xil_ICacheDisable();
        //     Xil_DCacheDisable();
        // #endif
        //xil_printf("[conv_sa-%d] populate scratchpad_bi with im2col. DONE! \n\r",conv_seq);

        //xil_printf("CONV[%d]: B[%d][%d]\n\r",conv_seq,m_a_cols_b_rows,n_c_cols_b_cols);
        if( (rc = populate_bi_with_scrachpad_bi(
            g_scratchpad_bi,
            m_a_cols_b_rows,
            n_c_cols_b_cols,
            bi
        ) ) != EXIT_SUCCESS )
        {
            send_status(rc, __LINE__);
            return rc;
        };
        
        //xil_printf("[conv_sa-%d] populate bi with scrachpad_bi. DONE! \n\r",conv_seq);
    #else //~BRAM
        // #if CAMPAIGN
        //     Xil_ICacheEnable(); //instruction cache (L1 e L2)
        //     Xil_DCacheEnable(); //data cache (L2)
        // #endif
        if ( (rc = populate_bi_with_im2col(
            in_data,
            ch_in, wh_in, wh_in,
            wh_kernel, wh_kernel,
            pad, pad,
            stride, stride,
            &n_c_cols_b_cols,
            bi
        ) ) != EXIT_SUCCESS )
        {
            send_status(rc, __LINE__);
            return rc;
        };
        // #if CAMPAIGN
        //     Xil_ICacheDisable();
        //     Xil_DCacheDisable();
        // #endif

    #endif



    #if MEASURE_TIME
        app_timer_stop(4); //stop t_populate_bi with im2col
        timing_info->t_populate_bi_with_im2col[conv_seq] += (unsigned long)app_timer_total_us(4);
    #endif

    /* compute layer_features using aligned ch_out and aligned h.w to check against SCRATCHPAD_A_SIZE */
    layer_features = l_c_rows_a_rows * n_c_cols_b_cols;
    if (SCRATCHPAD_A_SIZE < layer_features ) {
        send_status(layer_features, __LINE__);
        return EXIT_FAILURE;
    }

/******* USE_ACCELERATOR: MTX COMPUTE **************************************************/
    #if MEASURE_TIME
        app_timer_start(4); //start t_mxm_compute
    #endif

   
    uint32_t addr_a = BRAM_AW_BASEADDR + addr_weights * sizeof(weight_t);
    uint32_t addr_b = BRAM_BI_BASEADDR;
    uint32_t addr_c = BRAM_CA_BASEADDR;

    xil_status = sa_compute(
        pxMxm,
        l_c_rows_a_rows,
        n_c_cols_b_cols,
        m_a_cols_b_rows,
        addr_a,
        addr_b,
        addr_c
    );
    if (xil_status != XST_SUCCESS){
        xil_printf("[cnn_conv_engine] MXM Compute failed 0x%08x. Abort.\n\r", xil_status);
        return xil_status;
    }        

    #if MEASURE_TIME
        app_timer_stop(4); //stop t_mxm_compute
        timing_info->t_mxm_compute[conv_seq] += (unsigned long)app_timer_total_us(4);
    #endif

/******* USE_ACCELERATOR: RESULT CA TO OUT_DATA ****************************************/
    #if MEASURE_TIME
        app_timer_start(4); //start t_populate_outdata_with_ca
    #endif

    // #if CAMPAIGN
    //     Xil_ICacheEnable(); //instruction cache (L1 e L2)
    //     Xil_DCacheEnable(); //data cache (L2)
    // #endif
    if( (rc = populate_outdata_with_ca(
        ca,
        wh_out,
        ch_out,
        n_c_cols_b_cols,
        out_data
    ) ) != EXIT_SUCCESS )
    {
        send_status(rc, __LINE__);
        return rc;
    };
    // #if CAMPAIGN
    //     Xil_ICacheDisable();
    //     Xil_DCacheDisable();
    // #endif

    #if MEASURE_TIME
        app_timer_stop(4); //stop t_arm_conv_ca_to_scratchpad
        timing_info->t_populate_outdata_with_ca[conv_seq] += (unsigned long)app_timer_total_us(4);
    #endif
/**/

#endif //USE ACCELERATOR (-USE_ONLY_ARM)

    return EXIT_SUCCESS;
}

//Used after CONV
int net_process_layer_relu_and_clamp_sa(
    uint8_t in_buffer,
    uint8_t out_buffer,
    uint16_t max_value,
    uint8_t ch_out, uint16_t wh_out
){
    
    unsigned int global_y;
    unsigned int global_x;
    unsigned int global_co;
    unsigned int x_col_in;
    unsigned int y_row_in;

    if (in_buffer >= PIXEL_BUFFER_N ) {
        send_status(in_buffer, __LINE__);
        return EXIT_FAILURE;
    }
    if (out_buffer >= FEATURE_BUFFER_N ) {
        send_status(out_buffer, __LINE__);
        return EXIT_FAILURE;
    }

    macc_tb_t* in_data = &(g_feature_buffer[out_buffer][0]);
    pixel_t* out_data =  &(g_pixel_buffer[in_buffer][0]);

    int layer_features = (wh_out*wh_out*ch_out);

    if (FEATURE_BUFFER_SIZE < layer_features ) {
        send_status(layer_features, __LINE__);
        return EXIT_FAILURE;
    }

    if (PIXEL_BUFFER_SIZE < layer_features ) {
        send_status(layer_features, __LINE__);
        return EXIT_FAILURE;
    }

    for (global_y=0; global_y<wh_out; global_y++) {
        for (global_x=0; global_x<wh_out; global_x++) {
            for (global_co=0; global_co<ch_out; global_co++) {
                macc_tb_t out = 0;
                
                out = in_data[global_x + global_y*wh_out + global_co*wh_out*wh_out];

                if (out < 0 ) 
                {
                    out_data[global_x + global_y*wh_out + global_co*wh_out*wh_out] = 0;
                }
                else if (out > max_value)
                {
                    out_data[global_x + global_y*wh_out + global_co*wh_out*wh_out] = max_value;
                }
                else 
                {
                    out_data[global_x + global_y*wh_out + global_co*wh_out*wh_out] = out;
                }
            }
        }
    }
    return EXIT_SUCCESS;
}

int net_process_layer_relu_and_clamp_table(
    uint8_t in_buffer,
    uint8_t out_buffer,
    float scale_1,
    //float scale_2,
    int32_t max_value_tab,
    int32_t max_value,
    uint8_t ch_out, 
    uint16_t wh_out
){
    unsigned int global_y;
    unsigned int global_x;
    unsigned int global_co;
    unsigned int x_col_in;
    unsigned int y_row_in;

    if (in_buffer >= PIXEL_BUFFER_N ) {
        send_status(in_buffer, __LINE__);
        return EXIT_FAILURE;
    }
    if (out_buffer >= FEATURE_BUFFER_N ) {
        send_status(out_buffer, __LINE__);
        return EXIT_FAILURE;
    }

    macc_tb_t* in_data = &(g_feature_buffer[out_buffer][0]);
    pixel_t* out_data =  &(g_pixel_buffer[in_buffer][0]);

    int layer_features = (wh_out*wh_out*ch_out);

    if (FEATURE_BUFFER_SIZE < layer_features ) {
        send_status(layer_features, __LINE__);
        return EXIT_FAILURE;
    }

    if (PIXEL_BUFFER_SIZE < layer_features ) {
        send_status(layer_features, __LINE__);
        return EXIT_FAILURE;
    }

    for (global_y=0; global_y<wh_out; global_y++) {
        for (global_x=0; global_x<wh_out; global_x++) {
            for (global_co=0; global_co<ch_out; global_co++) {
                macc_tb_t out = 0;
                
                out = in_data[global_x + global_y*wh_out + global_co*wh_out*wh_out];

                if (out < 0 ){
                    out_data[global_x + global_y*wh_out + global_co*wh_out*wh_out] = 0;
                }
                
                else if (out > max_value_tab){
                    out_data[global_x + global_y*wh_out + global_co*wh_out*wh_out] = max_value;
                }
                
                else{ //search in table
                /*SEQUENTIAL*/
                    // int32_t idx = 0;
                    // for(idx=0;idx<max_value;idx++){
                    //     if(out<weigths_tab_result_1.in_tab[idx+1]){
                    //         break;
                    //     }
                    // }
                    //out_data[global_x + global_y * wh_out + global_co * wh_out * wh_out] = idx;
                
                
                /*BINARY*/
                    // int32_t left  = 0;
                    // int32_t right = max_value;
                    // int32_t idx   = 0;

                    // while (left <= right) {
                    //     int mid = (left + right) / 2;
                    //     if (out < weigths_tab_result_1.in_tab[mid]) {
                    //         right = mid - 1;
                    //     } 
                    //     else {
                    //         left = mid + 1;
                    //     }
                    // }

                    // idx = (left > 0) ? (left - 1) : 0;
                    // out_data[global_x + global_y * wh_out + global_co * wh_out * wh_out] = idx;
                /*SCAN_8*/
                    // int32_t idx = 0;
                    // for(idx = 0; idx <= max_value - 8; idx += 8){
                    //     if (out < weigths_tab_result_1.in_tab[idx + 1]) { idx += 1; break; }
                    //     if (out < weigths_tab_result_1.in_tab[idx + 2]) { idx += 2; break; }
                    //     if (out < weigths_tab_result_1.in_tab[idx + 3]) { idx += 3; break; }
                    //     if (out < weigths_tab_result_1.in_tab[idx + 4]) { idx += 4; break; }
                    //     if (out < weigths_tab_result_1.in_tab[idx + 5]) { idx += 5; break; }
                    //     if (out < weigths_tab_result_1.in_tab[idx + 6]) { idx += 6; break; }
                    //     if (out < weigths_tab_result_1.in_tab[idx + 7]) { idx += 7; break; }
                    //     if (out < weigths_tab_result_1.in_tab[idx + 8]) { idx += 8; break; }
                    // }
                    // /* “cauda” para os 0-a-8 elementos finais, caso não tenha saído antes */
                    // while (idx < max_value && out >= weigths_tab_result_1.in_tab[idx + 1]){
                    //     ++idx;
                    // }
                        
                    // out_data[global_x + global_y * wh_out + global_co * wh_out * wh_out] = idx;
                /*SCAN_16*/
                    // int32_t idx = 0;
                    // for(idx = 0; idx <= max_value - 16; idx += 16){
                    //     if (out < weigths_tab_result_1.in_tab[idx + 1]) { idx += 1; break; }
                    //     if (out < weigths_tab_result_1.in_tab[idx + 2]) { idx += 2; break; }
                    //     if (out < weigths_tab_result_1.in_tab[idx + 3]) { idx += 3; break; }
                    //     if (out < weigths_tab_result_1.in_tab[idx + 4]) { idx += 4; break; }
                    //     if (out < weigths_tab_result_1.in_tab[idx + 5]) { idx += 5; break; }
                    //     if (out < weigths_tab_result_1.in_tab[idx + 6]) { idx += 6; break; }
                    //     if (out < weigths_tab_result_1.in_tab[idx + 7]) { idx += 7; break; }
                    //     if (out < weigths_tab_result_1.in_tab[idx + 8]) { idx += 8; break; }
                        
                    //     if (out < weigths_tab_result_1.in_tab[idx + 9])  { idx += 9; break; }
                    //     if (out < weigths_tab_result_1.in_tab[idx + 10]) { idx += 10; break; }
                    //     if (out < weigths_tab_result_1.in_tab[idx + 11]) { idx += 11; break; }
                    //     if (out < weigths_tab_result_1.in_tab[idx + 12]) { idx += 12; break; }
                    //     if (out < weigths_tab_result_1.in_tab[idx + 13]) { idx += 13; break; }
                    //     if (out < weigths_tab_result_1.in_tab[idx + 14]) { idx += 14; break; }
                    //     if (out < weigths_tab_result_1.in_tab[idx + 15]) { idx += 15; break; }
                    //     if (out < weigths_tab_result_1.in_tab[idx + 16]) { idx += 16; break; }
                    // }
                    // /* “cauda” para os 0-a-16 elementos finais, caso não tenha saído antes */
                    // while (idx < max_value && out >= weigths_tab_result_1.in_tab[idx + 1]){
                    //     ++idx;
                    // }
                        
                    // out_data[global_x + global_y * wh_out + global_co * wh_out * wh_out] = idx;

                /*SCAN_8_AND_BINARY*/
                    int32_t left_blk  = 0;
                    int32_t right_blk = (max_value) >> 3; // (max_value) / 8
                    int32_t blk_idx   = 0;

                    /* ---------- 1) binary search na tabela rala ---------------*/
                    while (left_blk <= right_blk) {
                        int32_t mid = (left_blk + right_blk) >> 1;       // /2
                        int32_t thresh = weigths_tab_result_1.in_tab[mid << 3]; // in_tab[mid*8]

                        if (out < thresh)
                            right_blk = mid - 1;
                        else
                            left_blk  = mid + 1;
                    }
                    /* Após o laço, right_blk é o bloco que contém ‘out’ (ou -1) */
                    blk_idx = (right_blk >= 0) ? right_blk : 0;

                    /* ---------- 2) varredura sequencial dentro do bloco -------*/
                    int32_t idx = blk_idx << 3;                   // idx = blk_idx*8
                    int32_t upper = idx + 8;                      // fim (exclusivo)
                    if (upper > max_value) upper = max_value + 1; // evita estouro

                    while (idx < upper && out >= weigths_tab_result_1.in_tab[idx + 1])
                        ++idx;

                    /* ---------- 3) grava o resultado --------------------------*/
                    out_data[global_x + global_y * wh_out + global_co * wh_out * wh_out] = idx;
                
                }/*ELSE*/
            }
        }
    }
    return EXIT_SUCCESS;
}

//Used by POOLING
int net_process_global_pool(uint8_t in_buffer){
	int co;
	gpool_t ch_out_sum;

	if (in_buffer >= PIXEL_BUFFER_N ) {
		send_status(in_buffer, __LINE__);
		return EXIT_FAILURE;
	}

	pixel_t* in_data =  &(g_pixel_buffer[in_buffer][0]);
	gpool_t* out_data = &(g_pooling_buffer[0]);

	if ((sizeof(g_pooling_buffer)/sizeof(g_pooling_buffer[0])) < POOLING_CH_OUT ) {
		send_status(POOLING_CH_OUT, __LINE__);
		return EXIT_FAILURE;
	}

	for (co=0; co<POOLING_CH_OUT; co++) {
		ch_out_sum = 0;

		for (int y_row_out=0; y_row_out<POOLING_WH_IN; y_row_out++) {
			for (int x_col_out=0; x_col_out<POOLING_WH_IN; x_col_out++) {
				int co_offset = co*POOLING_WH_IN*POOLING_WH_IN;
				int co_row_offset = y_row_out*POOLING_WH_IN + co_offset;
				int addr_pixel_offset = x_col_out + co_row_offset;
				pixel_t data;
				data = in_data[addr_pixel_offset];
				ch_out_sum = add_pooling(ch_out_sum, data);
			}
		}
		out_data[co] = ch_out_sum;
	}
	
	return EXIT_SUCCESS;
}