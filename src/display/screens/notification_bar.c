/*
 * notification_bar.c
 *
 *  Created on: 24-Jul-2024
 *      Author: Bhura Malik
 */


#include "screen.h"

void create_top_layer(void) {

    lv_obj_t *top_layer = lv_layer_top();
    lv_obj_set_size(top_layer, lv_pct(100), 40);
    lv_obj_align(top_layer, LV_ALIGN_TOP_MID, 0, 0);
    lv_obj_clear_flag(top_layer, LV_OBJ_FLAG_SCROLLABLE);

    // Apply the top bar style
    lv_obj_add_style(top_layer, &style_top_bar, 0);

    // Add WiFi icon
    lv_obj_t *wifi_icon = lv_label_create(top_layer);
    lv_label_set_text(wifi_icon, LV_SYMBOL_WIFI);
    lv_obj_align(wifi_icon, LV_ALIGN_LEFT_MID, 10, 0);
    lv_obj_add_style(wifi_icon, &style_icon, 0);

    // Add BLE icon
    lv_obj_t *ble_icon = lv_label_create(top_layer);
    lv_label_set_text(ble_icon, LV_SYMBOL_BLUETOOTH);
    lv_obj_align(ble_icon, LV_ALIGN_CENTER, 0, 0);
    lv_obj_add_style(ble_icon, &style_icon, 0);

    // Add battery icon
    lv_obj_t *battery_icon = lv_label_create(top_layer);
    lv_label_set_text(battery_icon, LV_SYMBOL_BATTERY_FULL);
    lv_obj_align(battery_icon, LV_ALIGN_RIGHT_MID, -10, 0);
    lv_obj_add_style(battery_icon, &style_icon, 0);
}


