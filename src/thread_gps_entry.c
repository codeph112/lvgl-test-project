#include "thread_gps.h"
/* GPS Thread entry function */
/* pvParameters contains TaskHandle_t */
void thread_gps_entry(void *pvParameters)
{
    FSP_PARAMETER_NOT_USED (pvParameters);

    /* TODO: add your own code here */
    while (1)
    {
        vTaskDelay (1);
    }
}
