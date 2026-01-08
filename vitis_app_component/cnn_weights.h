
#ifndef WEIGHTS_HPP_
#define WEIGHTS_HPP_

#include <stdint.h>

#include "math_tb.h"

#include "cnn_network.h"

#define WEIGHTS_BEGIN_MAGIC 0xFAB10739
#define WEIGHTS_END_MAGIC 0xFAB10585

#define _f(x) (x)
#define _s(x) (x)


#ifdef CNN_NETWORK_T1

	typedef struct weights_image_f_1_s {
		const uint32_t begin_magic;
		float weights[TOTAL_NUM_WEIGHTS_1];
		const uint32_t end_magic;
	} weights_image_f_1_t;

	typedef struct weights_image_f_2_s {
		const uint32_t begin_magic;
		float weights[TOTAL_NUM_WEIGHTS_2];
		const uint32_t end_magic;
	} weights_image_f_2_t;

	typedef struct weights_image_q_1_s {
		const uint32_t begin_magic;
		weight_t weights[TOTAL_NUM_WEIGHTS_1];
		const uint32_t end_magic;
	} weights_image_q_1_t;

	typedef struct weights_image_q_2_s {
		const uint32_t begin_magic;
		weight_t weights[TOTAL_NUM_WEIGHTS_2];
		const uint32_t end_magic;
	} weights_image_q_2_t;

	extern weights_image_f_1_t g_weights_f_1;
	extern weights_image_f_2_t g_weights_f_2;
	extern weights_image_q_1_t g_weights_q_1;
	extern weights_image_q_2_t g_weights_q_2;

	extern const uint16_t g_weights_count_1;
	extern const uint16_t g_weights_in_channels_1;
	extern const uint16_t g_weights_out_channels_1;
	extern const uint16_t g_weights_kernel_wh_1;

	extern const uint16_t g_weights_count_2;
	extern const uint16_t g_weights_in_channels_2;
	extern const uint16_t g_weights_out_channels_2;
	extern const uint16_t g_weights_kernel_wh_2;

	extern float g_weights_scale_1;
	extern float g_weights_scale_2;
	extern float g_weights_scale_5;
	extern float g_weights_scale_8;

#endif /* CNN_NETWORK_T1 */

#ifdef CNN_NETWORK_T2

	typedef struct weights_image_f_1_s {
		const uint32_t begin_magic;
		float weights[TOTAL_NUM_WEIGHTS_1];
		const uint32_t end_magic;
	} weights_image_f_1_t;

	typedef struct weights_image_f_2_s {
		const uint32_t begin_magic;
		float weights[TOTAL_NUM_WEIGHTS_2];
		const uint32_t end_magic;
	} weights_image_f_2_t;

	typedef struct weights_image_f_3_s {
		const uint32_t begin_magic;
		float weights[TOTAL_NUM_WEIGHTS_3];
		const uint32_t end_magic;
	} weights_image_f_3_t;

	typedef struct weights_image_f_4_s {
		const uint32_t begin_magic;
		float weights[TOTAL_NUM_WEIGHTS_4];
		const uint32_t end_magic;
	} weights_image_f_4_t;

	typedef struct weights_image_q_1_s {
		const uint32_t begin_magic;
		weight_t weights[TOTAL_NUM_WEIGHTS_1];
		const uint32_t end_magic;
	} weights_image_q_1_t;

	typedef struct weights_image_q_2_s {
		const uint32_t begin_magic;
		weight_t weights[TOTAL_NUM_WEIGHTS_2];
		const uint32_t end_magic;
	} weights_image_q_2_t;

	typedef struct weights_image_q_3_s {
		const uint32_t begin_magic;
		weight_t weights[TOTAL_NUM_WEIGHTS_3];
		const uint32_t end_magic;
	} weights_image_q_3_t;

	typedef struct weights_image_q_4_s {
		const uint32_t begin_magic;
		weight_t weights[TOTAL_NUM_WEIGHTS_4];
		const uint32_t end_magic;
	} weights_image_q_4_t;


	extern weights_image_f_1_t g_weights_f_1;
	extern weights_image_f_2_t g_weights_f_2;
	extern weights_image_f_3_t g_weights_f_3;
	extern weights_image_f_4_t g_weights_f_4;
	extern weights_image_q_1_t g_weights_q_1;
	extern weights_image_q_2_t g_weights_q_2;
	extern weights_image_q_3_t g_weights_q_3;
	extern weights_image_q_4_t g_weights_q_4;

	extern const uint16_t g_weights_count_1;
	extern const uint16_t g_weights_in_channels_1;
	extern const uint16_t g_weights_out_channels_1;
	extern const uint16_t g_weights_kernel_wh_1;

	extern const uint16_t g_weights_count_2;
	extern const uint16_t g_weights_in_channels_2;
	extern const uint16_t g_weights_out_channels_2;
	extern const uint16_t g_weights_kernel_wh_2;

	extern const uint16_t g_weights_count_3;
	extern const uint16_t g_weights_in_channels_3;
	extern const uint16_t g_weights_out_channels_3;
	extern const uint16_t g_weights_kernel_wh_3;

	extern const uint16_t g_weights_count_4;
	extern const uint16_t g_weights_in_channels_4;
	extern const uint16_t g_weights_out_channels_4;
	extern const uint16_t g_weights_kernel_wh_4;

	extern float g_weights_scale_1;
	extern float g_weights_scale_2;
	extern float g_weights_scale_3;
	extern float g_weights_scale_4;
	extern float g_weights_scale_7;
	extern float g_weights_scale_10;
	extern float g_weights_scale_13;
	extern float g_weights_scale_16;

#endif /* CNN_NETWORK_T2 */

#ifdef CNN_NETWORK_T3

	typedef struct weights_image_f_1_s {
		const uint32_t begin_magic;
		float weights[TOTAL_NUM_WEIGHTS_1];
		const uint32_t end_magic;
	} weights_image_f_1_t;

	typedef struct weights_image_f_2_s {
		const uint32_t begin_magic;
		float weights[TOTAL_NUM_WEIGHTS_2];
		const uint32_t end_magic;
	} weights_image_f_2_t;

	typedef struct weights_image_f_3_s {
		const uint32_t begin_magic;
		float weights[TOTAL_NUM_WEIGHTS_3];
		const uint32_t end_magic;
	} weights_image_f_3_t;

	typedef struct weights_image_q_1_s {
		const uint32_t begin_magic;
		weight_t weights[TOTAL_NUM_WEIGHTS_1];
		const uint32_t end_magic;
	} weights_image_q_1_t;

	typedef struct weights_image_q_2_s {
		const uint32_t begin_magic;
		weight_t weights[TOTAL_NUM_WEIGHTS_2];
		const uint32_t end_magic;
	} weights_image_q_2_t;

	typedef struct weights_image_q_3_s {
		const uint32_t begin_magic;
		weight_t weights[TOTAL_NUM_WEIGHTS_3];
		const uint32_t end_magic;
	} weights_image_q_3_t;

/************** Result Tab **********************/
    typedef struct weigths_tab_result_1_s{
        int32_t in_tab[256];
    }weigths_tab_result_1_t;

    typedef struct weigths_tab_result_2_s{
        int32_t in_tab[256];
    }weigths_tab_result_2_t;

    typedef struct weigths_tab_result_3_s{
        int32_t in_tab[256];
    }weigths_tab_result_3_t;


	extern weights_image_f_1_t g_weights_f_1;
	extern weights_image_f_2_t g_weights_f_2;
	extern weights_image_f_3_t g_weights_f_3;
	extern weights_image_q_1_t g_weights_q_1;
	extern weights_image_q_2_t g_weights_q_2;
	extern weights_image_q_3_t g_weights_q_3;

	extern const uint16_t g_weights_count_1;
	extern const uint16_t g_weights_in_channels_1;
	extern const uint16_t g_weights_out_channels_1;
	extern const uint16_t g_weights_kernel_wh_1;

	extern const uint16_t g_weights_count_2;
	extern const uint16_t g_weights_in_channels_2;
	extern const uint16_t g_weights_out_channels_2;
	extern const uint16_t g_weights_kernel_wh_2;

	extern const uint16_t g_weights_count_3;
	extern const uint16_t g_weights_in_channels_3;
	extern const uint16_t g_weights_out_channels_3;
	extern const uint16_t g_weights_kernel_wh_3;

	extern float g_weights_scale_1;
	extern float g_weights_scale_2;
	extern float g_weights_scale_3;
	extern float g_weights_scale_6;
	extern float g_weights_scale_9;
	extern float g_weights_scale_12;

    
    extern int32_t max_value_tab_1;
    extern int32_t max_value_tab_2;
    extern int32_t max_value_tab_3;

    extern weigths_tab_result_1_t weigths_tab_result_1;
    extern weigths_tab_result_2_t weigths_tab_result_2;
    extern weigths_tab_result_3_t weigths_tab_result_3;

#endif /* CNN_NETWORK_T3 */

#endif /* WEIGHTS_HPP_ */
