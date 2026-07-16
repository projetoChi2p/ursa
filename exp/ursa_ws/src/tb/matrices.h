#ifndef MATRICES_H_
#define MATRICES_H_

#include <stdint.h>
#include <stdio.h>
#include "../settings.h"

void matrices_init_a(data_a_t *a, int rows, int cols);
void matrices_init_b(data_b_t *b, int rows, int cols);
void matrices_init_c(data_c_t *c, int rows, int cols);
void matrices_print_a(data_a_t *a, int rows, int cols);
void matrices_print_b(data_b_t *b, int rows, int cols);
void matrices_print_c(data_c_t *c, int rows, int cols);
void gold_mxm(data_a_t *a, data_b_t *b, data_c_t *c, int p, int m, int q);
int compare_mxm(data_c_t *c, data_c_t *c_gold, int p, int q);

#endif