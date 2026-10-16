#ifndef COMMON_TIMER_H_
#define COMMON_TIMER_H_

#include <stdint.h>

#define TIMER_IS_SCUTIMER
//#define TIMER_IS_XILTIMER
//#define TIMER_IS_XPM

#ifdef TIMER_IS_SCUTIMER
typedef uint32_t app_timer_t;
#define APP_TIMER_COUNTS_PER_SECOND       (XPAR_CPU_CORE_CLOCK_FREQ_HZ/2)
#endif

#ifdef TIMER_IS_XILTIMER
#include "xiltimer.h"
typedef XTime app_timer_t;
#define APP_TIMER_COUNTS_PER_SECOND       (COUNTS_PER_SECOND)
#endif

#ifdef TIMER_IS_XPM
typedef uint32_t app_timer_t;
extern uint32_t app_timer_counts_per_second;
#define APP_TIMER_COUNTS_PER_SECOND       (app_timer_counts_per_second)
#endif


#define APP_TIMER_COUNTS_PER_MICROSECOND  (APP_TIMER_COUNTS_PER_SECOND/1000000U)
#define APP_TIMER_COUNTS_PER_MILLISECOND  (APP_TIMER_COUNTS_PER_SECOND/1000U)


int app_timer_init();

void app_timer_start(uint8_t timer);
void app_timer_continue(uint8_t timer);
void app_timer_stop(uint8_t timer);
uint32_t app_timer_total_ticks(uint8_t timer);
uint32_t app_timer_total_us(uint8_t timer);

app_timer_t app_timer_now();
uint32_t app_timer_subtract(app_timer_t last, app_timer_t now);

#endif /* COMMON_TIMER_H_ */
