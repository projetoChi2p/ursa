#ifndef TBMATH_H_
#define TBMATH_H_

#include <stdint.h>
#include <limits.h>
#include "cnn_network.h"

#define MATH_IS_SCALED_8 //definido pelo usuário (automação)

#ifdef MATH_IS_FLOAT
#include <math.h>
#endif

#if defined(MATH_IS_SCALED_4) || defined(MATH_IS_SCALED_8)
#include "ap_fixed.h"
#endif

typedef uint8_t  pixel_t;
typedef uint16_t gpool_t;
#define GPOOL_MINIMUM (0)


#ifdef MATH_IS_FLOAT

typedef float weight_t;
typedef float macc_tb_t;

#endif /* MATH_IS_FLOAT */

#ifdef MATH_IS_SCALED_4

typedef ap_int<4> weight_t;

#ifdef MATH_SAT

    #ifdef CNN_NETWORK_T1
    typedef ap_fixed<14,14,AP_TRN,AP_SAT> macc_tb_t;
    #endif /* CNN_NETWORK_T1 */

    #ifdef CNN_NETWORK_T2
    typedef ap_fixed<14,14,AP_TRN,AP_SAT> macc_tb_t;
    #endif /* CNN_NETWORK_T2 */

    #ifdef CNN_NETWORK_T3
    typedef ap_fixed<14,14,AP_TRN,AP_SAT> macc_tb_t;
    #endif /* CNN_NETWORK_T3 */

#else /* ~MATH_SAT */

    #ifdef CNN_NETWORK_T1
    typedef ap_int<16> macc_tb_t;
    #endif /* CNN_NETWORK_T1 */

    #ifdef CNN_NETWORK_T2
    typedef ap_int<14> macc_tb_t;
    #endif /* CNN_NETWORK_T2 */

    #ifdef CNN_NETWORK_T3
    typedef ap_int<16> macc_tb_t;
    #endif /* CNN_NETWORK_T3 */

#endif /* ~MATH_SAT */

#endif /* MATH_IS_SCALED_4 */

#ifdef MATH_IS_SCALED_8
    
    typedef int8_t weight_t;

#ifdef MATH_SAT

    #ifdef CNN_NETWORK_T1
    typedef ap_fixed<18,18,AP_TRN,AP_SAT> macc_tb_t;
    #endif /* CNN_NETWORK_T1 */

    #ifdef CNN_NETWORK_T2
    typedef ap_fixed<16,16,AP_TRN,AP_SAT> macc_tb_t;
    #endif /* CNN_NETWORK_T2 */

    #ifdef CNN_NETWORK_T3
    typedef ap_fixed<18,18,AP_TRN,AP_SAT> macc_tb_t;
    #endif /* CNN_NETWORK_T3 */

#else /* ~MATH_SAT */

    #ifdef CNN_NETWORK_T1
    typedef ap_int<18> macc_tb_t;
    #endif /* CNN_NETWORK_T1 */

    #ifdef CNN_NETWORK_T2
    typedef ap_int<18> macc_tb_t;
    #endif /* CNN_NETWORK_T2 */

    #ifdef CNN_NETWORK_T3
    //typedef ap_int<20> macc_tb_t;
    typedef int32_t macc_tb_t;
    #endif /* CNN_NETWORK_T3 */

#endif /* ~MATH_SAT */

#endif /* MATH_IS_SCALED_8 */

gpool_t add_pooling(const gpool_t ax, const pixel_t bi);
macc_tb_t macc_pixel_weight(const pixel_t ai, const weight_t bw, const macc_tb_t ci);

float weight_to_float(const weight_t i);
float macc_to_float(const macc_tb_t i);
float pixel_to_float(const pixel_t i);
pixel_t pixel_from_uint8(uint8_t p);

weight_t weight_from_float(const float a);

#endif /* TBMATH_H_ */
