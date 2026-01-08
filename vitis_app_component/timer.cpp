#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include <stdint.h>
#include <assert.h>
#include <ctype.h>
#include <string.h>

#include <sleep.h>


#include "xtimer_config.h"
#include "xil_io.h"
#include "xil_types.h"
#include "xil_assert.h"
#include "xil_printf.h"
#include "xstatus.h"
#include "bspconfig.h"
#include "xparameters.h"


#include "platform.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "xparameters.h"
#include "xgpiops.h"
#include "xstatus.h"
#include "xplatform_info.h"

#include "timer.h"

#ifdef TIMER_IS_SCUTIMER
#include "xscutimer.h"

#ifdef XSLEEPTIMER_IS_SCUTIMER
#error SCU in use by sleep timer.
#endif

#ifdef XTICKTIMER_IS_SCUTIMER
#error SCU in use by tick timer.
#endif

#endif /* TIMER_IS_SCUTIMER */


#ifdef TIMER_IS_XILTIMER
#include "xiltimer.h"
#endif

#ifdef TIMER_IS_XPM
#include "xpm_counter.h"
uint32_t app_timer_counts_per_second;
#endif


#define ERROR_TIMER_FAILED 0x55

#define MAX_TIMERS 6

#define TIMER_RELOAD 0xFFFFFFFF

#ifdef TIMER_IS_SCUTIMER
XScuTimer g_xTimer;
#endif


struct times_s {
    app_timer_t now;
    app_timer_t last;
    u32 elapsed;
} app_times[MAX_TIMERS];

#ifdef TIMER_IS_XPM
u32 app_timer_subtract(u32 last, u32 now)
{
	u32 difference;

	if (now < last) {
		difference = ((-1) - last) + now;
	} else {
		difference = now - last;
	}

    return difference;
}
#endif


#ifdef TIMER_IS_SCUTIMER
u32 app_timer_subtract(u32 last, u32 now)
{
	int64_t a = last;
	int64_t b = now;

	int64_t difference;

    difference = (a-b) & TIMER_RELOAD;

    return difference;
}
#endif

#ifdef TIMER_IS_XILTIMER
u32 app_timer_subtract(XTime last, XTime now)
{
	u32 difference;

	if (now < last) {
		difference = ((-1) - last) + now;
	} else {
		difference = now - last;
	}
    return difference;
}
#endif


void app_timer_clear(u8 timer)
{
    if (timer<MAX_TIMERS)
    {
        app_times[timer].now = 0;
        app_times[timer].last = 0;
        app_times[timer].elapsed = 0;
    }
}

app_timer_t app_timer_now()
{
    app_timer_t now;

    #ifdef TIMER_IS_SCUTIMER
    now = XScuTimer_GetCounterValue(&g_xTimer);
    #endif

    #ifdef TIMER_IS_XILTIMER
    XTime_GetTime(&now);
    #endif

    #ifdef TIMER_IS_XPM
    now = Xpm_ReadCycleCounterVal();
    #endif

    return now;
}

void app_timer_start(u8 timer)
{
    if (timer<MAX_TIMERS)
    {
        app_times[timer].last = app_timer_now();
        app_times[timer].elapsed = 0;
    }
}

void app_timer_continue(u8 timer)
{
    if (timer<MAX_TIMERS)
    {
        app_times[timer].last = app_timer_now();
    }
}

void app_timer_stop(u8 timer) 
{
    if (timer<MAX_TIMERS)
    {
        app_times[timer].now = app_timer_now();
        app_times[timer].elapsed += app_timer_subtract(app_times[timer].last, app_times[timer].now);
    }
}
u32 app_timer_total_ticks(u8 timer)
{
    return app_times[timer].elapsed;
}
u32 app_timer_total_us(u8 timer)
{
    return (u32)(((float)app_times[timer].elapsed)/APP_TIMER_COUNTS_PER_MICROSECOND);
}


int app_timer_init()
{
    int k;
    #ifdef TIMER_IS_SCUTIMER
    int xil_status;
    u32 time_last;
    u32 time_now;
	XScuTimer_Config *TimerConfigPtr;
    #endif

    for (k=0; k<MAX_TIMERS; k++)
    {
        app_timer_clear(k);
    }


    #ifdef TIMER_IS_SCUTIMER
    TimerConfigPtr = XScuTimer_LookupConfig(XPAR_SCUTIMER_BASEADDR);
    if (TimerConfigPtr == NULL)
    {
        print("Timer not found. Abort.\n\r");
        return XST_FAILURE;
    }

    xil_status = XScuTimer_CfgInitialize(&g_xTimer, TimerConfigPtr, TimerConfigPtr->BaseAddr);
	if (xil_status != XST_SUCCESS) 
    {
        print("Timer init failed. Abort.\n\r");
        return XST_FAILURE;
	}

    XScuTimer_LoadTimer(&g_xTimer, TIMER_RELOAD);
    XScuTimer_EnableAutoReload(&g_xTimer);

	/*
	 * Get a snapshot of the timer counter value before it's started
	 * to compare against later.
	 */
	time_last = XScuTimer_GetCounterValue(&g_xTimer);

	/*
	 * Start the Scu Private Timer device.
	 */
	XScuTimer_Start(&g_xTimer);

	/*
	 * Read the value of the timer counter and wait for it to change,
	 * since it's decrementing it should change, if the hardware is not
	 * working for some reason, this loop could be infinite such that the
	 * function does not return.
	 */

    k = 10000;
	while (k) {
		time_now = XScuTimer_GetCounterValue(&g_xTimer);
		if (time_last != time_now) {
			break;
		}
		k -= 1;
	}
	if (k==0) {
        return ERROR_TIMER_FAILED;
	}
    #endif /* TIMER_IS_SCUTIMER */


    #ifdef TIMER_IS_XPM
    {
        app_timer_t last;
        app_timer_t now;
        last = app_timer_now();
        usleep(1000);
        now = app_timer_now();
        app_timer_counts_per_second = app_timer_subtract(last, now)*1000;
    }
    #endif

    #if 0
        print("\n");
        app_timer_start(0);
        usleep(1000);
        app_timer_stop(0);
        xil_printf("sleep 1 ms = %lu cycles %lu us\r\n", app_timer_total_ticks(0), app_timer_total_us(0));
    #endif
    return XST_SUCCESS;
}

#if 0
/* Unused code */
static inline u32 arm_counter_get_cntvct(void)
{
    //u32 cval;
    //__asm__ __volatile__("mrrc p15, 1, %Q0, %R0, c14" : "=r" (cval));
    return Xpm_ReadCycleCounterVal();
}

#endif
