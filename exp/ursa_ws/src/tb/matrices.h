#ifndef MATRICES_H_
#define MATRICES_H_

#include <stdint.h>
#include <stdio.h>
#include "../settings.h"

void matrices_init_lr(lr_t *matrix_lr, int rows, int cols);
void matrices_init_tb(tb_t *matrix_tb, int rows, int cols);
void matrices_print_lr(lr_t *matrix_lr, int rows, int cols);
void matrices_print_tb(lr_t *matrix_tb, int rows, int cols);
void gold_mxm(lr_t *matrix_lr, tb_t *matrix_tb, fixed_t *matrix_fixed, int p, int m, int q);

#endif