#include "ursa_math.h"

pixel_t pixel_from_uint8(uint8_t p)
{
	pixel_t x;
	x = p;
	return x;
}

float macc_to_float(const macc_t i) 
{
    float f;
    f = i;
	return f;
}

gpool_t add_pooling(const gpool_t ax, const pixel_t bi)
{
   gpool_t sum;
   sum = ax + bi;
   return sum;
}

