/*
 * styles.c
 *
 *  Created on: 24-Jul-2024
 *      Author: Bhura Malik
 */


#include "screen.h"

lv_style_t style_top_bar;
lv_style_t style_icon;

void init_styles(void) {
    // Style for the top bar
    lv_style_init(&style_top_bar);
    lv_style_set_bg_color(&style_top_bar, lv_palette_main(LV_PALETTE_LIGHT_BLUE));
    lv_style_set_bg_opa(&style_top_bar, LV_OPA_COVER);
    lv_style_set_width(&style_top_bar, 100);
    lv_style_set_height(&style_top_bar, LV_SIZE_CONTENT);

    // Style for the icons
    lv_style_init(&style_icon);
    lv_style_set_text_color(&style_icon, lv_color_white());
}

