#ifndef MATH_H_
#define MATH_H_

#include <stdio.h>
#include <stdint.h>
#include <limits.h>
#include "ap_fixed.h"

typedef ap_int  <8>  data_a_t; //weight
typedef ap_uint <8>  data_b_t; //pixel
typedef ap_int  <32> data_c_t; //bramc
typedef ap_int  <20> macc_t;   //bramc

#endif /* MATH_H_ */
