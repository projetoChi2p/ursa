#ifndef __SHELL_H__
#define __SHELL_H__

#include "sa.h"

#ifdef LABFT
    #include "../labft/labft.h"
#endif

#ifdef IM2COL
    #include "../im2col/im2col.h"
    static data_b_t g_bi_im2col[SCRATCHPAD_I_SIZE];
#endif

#ifdef FAULT_INJECT
    #include <cstdlib>
#endif

#endif 