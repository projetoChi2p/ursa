
#ifndef EVAL_IMAGES_HPP_
#define EVAL_IMAGES_HPP_

#include <stdint.h>

#include "math_tb.h"

#include "cnn_network.h"


#define IMAGESET_BEGIN_MAGIC 0xFAB10923
#define IMAGESET_END_MAGIC   0xFAB10144

#define GOLDLABELS_BEGIN_MAGIC 0xFAB10515
#define GOLDLABELS_END_MAGIC   0xFAB10872

#define IMAGEIDX_BEGIN_MAGIC 0xFAB10817
#define IMAGEIDX_END_MAGIC   0xFAB10792

#define TOTAL_NUM_IMAGES 18 //definido pelo usuário (automação)
#define TOTAL_NUM_PIXELS (TOTAL_NUM_IMAGES*IMAGE_SZ_IN*IMAGE_SZ_IN*IMAGE_CH_IN)

#define _p(x) (x)


typedef struct imageset_image_s {
	const uint32_t begin_magic;
	uint8_t pixels[TOTAL_NUM_PIXELS];
	const uint32_t end_magic;
} imageset_image_t;

typedef struct imageset_labels_s {
	const uint32_t begin_magic;
	uint8_t labels[TOTAL_NUM_IMAGES];
	const uint32_t end_magic;
} imageset_labels_t;


typedef struct imageset_index_s {
	const uint32_t begin_magic;
	uint32_t ids[TOTAL_NUM_IMAGES];
	const uint32_t end_magic;
} imageset_index_t;


extern imageset_image_t g_imageset;
extern imageset_labels_t g_gold_labels;
extern imageset_index_t g_image_ids;

extern const unsigned int g_total_num_pixels;
extern const unsigned int g_total_num_images;
extern const unsigned int g_images_bit_width;
extern const unsigned int g_images_integer_length;

#endif /* EVAL_IMAGES_HPP_ */
