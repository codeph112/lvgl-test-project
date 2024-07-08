/*
 * touch_disp.c
 *
 *  Created on: 05-Jul-2024
 *      Author: Bhura Malik
 */

#include "touch_disp.h"
#include "thread_disp.h"
#include "touch_GT911.h"
#include "lvgl.h"
#include "lv_port_indev.h"
#include "common_data.h"
#include "lvgl/src/drivers/display/renesas_glcdc/lv_renesas_glcdc.h"

static void touch_init(void)
{
    fsp_err_t err;

    /* Need to initialise the Touch Controller before the LCD, as only a Single Reset line shared between them */
    err = R_IIC_MASTER_Open(&g_i2c_master1_ctrl, &g_i2c_master1_cfg);
    if (FSP_SUCCESS != err)
    {
        __BKPT(0); //TODO: Better error handling
    }

    err = R_ICU_ExternalIrqOpen(&g_external_irq3_ctrl, &g_external_irq3_cfg);
    if (FSP_SUCCESS != err)
    {
        __BKPT(0); //TODO: Better error handling
    }

    err = init_ts(&g_i2c_master1_ctrl);
    if (FSP_SUCCESS != err)
    {
        __BKPT(0); //TODO: Better error handling
    }

    err = enable_ts(&g_i2c_master1_ctrl, &g_external_irq3_ctrl);
    if (FSP_SUCCESS != err)
    {
        __BKPT(0); //TODO: Better error handling
    }
}

void touch_disp_init(void)
{
    /* Need to initialise the Touch Controller before the LCD, as only a Single Reset line shared between them */
    touch_init();

    lv_display_t * disp = lv_renesas_glcdc_direct_create();

    lv_display_set_default(disp);

    R_IOPORT_PinWrite(&g_ioport_ctrl, DISP_BLEN, BSP_IO_LEVEL_HIGH);

    lv_port_indev_init();
}
