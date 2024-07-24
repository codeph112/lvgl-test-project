/*
 * screen_home.c
 *
 *  Created on: 23-Jul-2024
 *      Author: Bhura Malik
 */

#include "screen.h"

lv_obj_t * create_home_screen(void) {

    lv_obj_t * scr = lv_obj_create(NULL);
    lv_obj_set_style_bg_color(scr, lv_color_hex(0x00FF00), LV_PART_MAIN);

    lv_obj_t * label = lv_label_create(scr);
    lv_label_set_text(label, "Home Screen");
    lv_obj_center(label);

    return scr;
}



