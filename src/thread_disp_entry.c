#include "thread_disp.h"
#include "touch_disp.h"
#include "lvgl.h"

void timer_tick_callback(timer_callback_args_t *p_args)
{
    FSP_PARAMETER_NOT_USED(p_args);
    lv_tick_inc(1);
}

void vApplicationMallocFailedHook( void )
{
    __BKPT(0);
}

#if LV_BUILD_EXAMPLES && LV_USE_SLIDER

static lv_obj_t * label;
static lv_obj_t * label2;

static void slider_event_cb(lv_event_t * e)
{
    lv_obj_t * slider = lv_event_get_target(e);
    int32_t slider_v = lv_slider_get_value(slider);

    /*Refresh the text*/
    lv_label_set_text_fmt(label, "%"LV_PRId32, slider_v);
    lv_obj_align_to(label, slider, LV_ALIGN_OUT_TOP_MID, 0, -15);    /*Align top of the slider*/

    if(slider_v < 30){
        lv_obj_set_style_bg_color(lv_screen_active(), lv_color_hex(0x7d1108), LV_PART_MAIN);
    }else if(slider_v < 70) {
        lv_obj_set_style_bg_color(lv_screen_active(), lv_color_hex(0x99ce3e), LV_PART_MAIN);
    }
}

/**
 * Create a slider and write its value on a label.
 */
void lv_example_get_started_4(void)
{
    /*Create a slider in the center of the display*/
    lv_obj_t * slider = lv_slider_create(lv_screen_active());
    lv_obj_set_width(slider, 200);                          /*Set the width*/
    lv_obj_center(slider);                                  /*Align to the center of the parent (screen)*/
    lv_obj_add_event_cb(slider, slider_event_cb, LV_EVENT_VALUE_CHANGED, NULL);     /*Assign an event function*/

    /*Create a label above the slider*/
    label = lv_label_create(lv_screen_active());
    lv_label_set_text(label, "0");
    lv_obj_align_to(label, slider, LV_ALIGN_OUT_TOP_MID, 0, -15);    /*Align top of the slider*/
}
#endif
/* DISP Thread entry function */
/* pvParameters contains TaskHandle_t */
void thread_disp_entry(void *pvParameters)
{
    FSP_PARAMETER_NOT_USED (pvParameters);
    fsp_err_t err;

    lv_init();

    touch_disp_init();

    err = R_GPT_Open(&g_timer0_ctrl, &g_timer0_cfg);
    if (FSP_SUCCESS != err)
    {
        __BKPT(0);
    }

    err = R_GPT_Start(&g_timer0_ctrl);
    if (FSP_SUCCESS != err)
    {
        __BKPT(0);
    }
    lv_example_get_started_4();
    /* TODO: add your own code here */
    while (1)
    {
        lv_timer_handler();
        lv_obj_invalidate(lv_screen_active());
        vTaskDelay (1);
    }
}
