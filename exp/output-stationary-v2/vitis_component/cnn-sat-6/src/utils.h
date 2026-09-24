#ifndef UTILS_H
#define UTILS_H

#ifdef VITIS
#include "xil_types.h"  
#endif
#include <cstdint> 
#include <cstdio>  
#include <cstring>
#include <cstdint>

#define DO_PADDING 1
#define NO_PADDING 0
#define PAD_BLANK ' '

/* Build axes, not source constants. Pass -DVITIS for a board build and
   -DCAMPAIGN for the irradiation build, the same way SA_SIZE, the layout and
   the cache flags are passed. VITIS defaults on so that a manual build still
   targets the board; CAMPAIGN has no default, because the campaign is the
   exceptional condition and should have to be asked for. */
#ifndef VITIS
    #define VITIS
#endif

#ifdef VITIS
  //none
#else
    #define EXIT_SUCCESS  0
    #define EXIT_FAILURE  1
#endif

#ifndef min
#define min(a,b) \
({ __typeof__ (a) _a = (a); \
	__typeof__ (b) _b = (b); \
  _a < _b ? _a : _b; })
#endif


static inline int ceil_div(int a, int b)
{
    return (b == 0) ? 0 : (a + b - 1) / b;
}

void put_app_version();
void put_padding( uint8_t do_padding, uint8_t pad_len, int8_t pad_character, uint8_t num_len);
void put_signed_short(const int16_t n, int8_t pad_len);
void put_signed_long(const int64_t n, int8_t pad_len);
void send_status(short status, short line);

#endif