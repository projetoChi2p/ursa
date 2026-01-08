#include <stdio.h>

#include "math_tb.h"

#if defined(MATH_IS_SCALED_4) || defined(MATH_IS_SCALED_8)

#ifdef DEBUG_KEEP_STATS
extern int g_macc_calls;
#endif


/* Convert input image pixel representation to an uniform representation used throughout all feature maps inside CNN. */
macc_tb_t macc_from_pixel(pixel_t p){
	macc_tb_t x;
	x = p;
	return x;
}


/****************************************************************************
 */
gpool_t add_pooling(const gpool_t ax, const pixel_t bi){
   gpool_t sum;
   sum = ax + bi;
   return sum;
}


macc_tb_t macc_from_uint8(uint8_t p) {
	macc_tb_t x;
	x = p;
	return x;
}

pixel_t pixel_from_uint8(uint8_t p){
	pixel_t x;
	x = p;
	return x;
}

/****************************************************************************
 */
 float macc_to_float(const macc_tb_t i) {
    float f;
    f = i;
	return f;
}


/****************************************************************************
 */
float pixel_to_float(const pixel_t i){
   float f;
   f = i;
   return f;
}


/****************************************************************************
 */
macc_tb_t macc_feature_weight(const macc_tb_t ai, const weight_t bw, const macc_tb_t ci){

	macc_tb_t sum;
	
#ifdef DEBUG_KEEP_STATS
	g_macc_calls += 1;
#endif

	sum = ai * bw;
	sum += ci;

	return sum;
}


/****************************************************************************
 */
macc_tb_t macc_pixel_weight(const pixel_t ai, const weight_t bw, const macc_tb_t ci){

	macc_tb_t sum;
   
#ifdef DEBUG_KEEP_STATS
   g_macc_calls += 1;
#endif

   sum = ai * bw;
   sum += ci;

   return sum;
}


/****************************************************************************
 */
 float weight_to_float(const weight_t i){
    float f;

	f = i;

	return f;
}

/****************************************************************************
 */
weight_t weight_from_float(const float f){
	weight_t q;

	q = f;

	return q;
}


#endif /* MATH_IS_SCALED_* */