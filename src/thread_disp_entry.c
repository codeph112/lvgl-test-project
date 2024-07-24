#include <screen.h>
#include "thread_disp.h"
#include "uc_lv_timer.h"

void vApplicationMallocFailedHook( void )
{
    __BKPT(0);
}

/* DISP Thread entry function */
/* pvParameters contains TaskHandle_t */
void thread_disp_entry(void *pvParameters)
{
    FSP_PARAMETER_NOT_USED (pvParameters);

    lv_init();

    touch_disp_init();

    uc_lv_timer_init();

    lv_gui_init();

    /* TODO: add your own code here */
    while (1)
    {
        lv_timer_handler();
        lv_obj_invalidate(lv_screen_active());
        vTaskDelay (1);
    }
}
