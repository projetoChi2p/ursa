#ifndef URSA_MATH_H_
#define URSA_MATH_H_

#include <stdint.h>

typedef uint8_t  pixel_t;
typedef int8_t   weight_t;
typedef int32_t  macc_t;
typedef uint16_t gpool_t;
typedef int32_t  container_a_t;

#define GPOOL_MINIMUM (0)

pixel_t pixel_from_uint8(uint8_t p);
float macc_to_float(const macc_t i);
gpool_t add_pooling(const gpool_t ax, const pixel_t bi);

#endif 