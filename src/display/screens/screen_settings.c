/*
 * screen_settings.c
 *
 *  Created on: 24-Jul-2024
 *      Author: Bhura Malik
 */

#include "screen.h"

static void back_button_event_cb(lv_event_t *e) {
    lv_obj_t *prev_scr = pop_screen();
    if (prev_scr) {
        lv_scr_load_anim(prev_scr, LV_SCR_LOAD_ANIM_MOVE_RIGHT, 200, 0, false);
    }
}

static lv_obj_t *create_new_screen(const char *title)
{
    // Create a new screen
    lv_obj_t *scr = lv_obj_create(NULL);

    // Create a back button
    lv_obj_t *back_btn = lv_btn_create(scr);
    lv_obj_align(back_btn, LV_ALIGN_TOP_LEFT, 10, 10);
    lv_obj_t *back_label = lv_label_create(back_btn);
    lv_label_set_text(back_label, "Back");
    lv_obj_center(back_label);
    lv_obj_add_event_cb(back_btn, back_button_event_cb, LV_EVENT_CLICKED, NULL);

    // Create and set the title label
    lv_obj_t *label = lv_label_create(scr);
    lv_label_set_text_fmt(label, "%s Screen", title);
    lv_obj_align(label, LV_ALIGN_TOP_MID, 0, 10);

    // Add other components as needed for this screen

    return scr;
}

static void settings_item_event_cb(lv_event_t *e)
{
    lv_obj_t *btn = lv_event_get_target(e);

    const char *txt = lv_list_get_btn_text(0, btn);

    push_screen(lv_scr_act());

    // Create a new screen for the selected setting
    lv_obj_t *new_scr = create_new_screen(txt);
    lv_scr_load_anim(new_scr, LV_SCR_LOAD_ANIM_MOVE_LEFT, 200, 0, false);
}



lv_obj_t *create_settings_screen( void ) {

    lv_obj_t *scr = lv_obj_create(NULL);

    // Create and set the settings label
    lv_obj_t *label = lv_label_create(scr);
    lv_label_set_text(label, "Settings");
    lv_obj_align(label, LV_ALIGN_TOP_MID, 0, 10);

    // Create a scrollable list
    lv_obj_t *list = lv_list_create(scr);
    lv_obj_set_size(list, lv_pct(100), lv_pct(80));
    lv_obj_align(list, LV_ALIGN_CENTER, 0, 20);

    // Add items to the list
    for(int i = 0; i < 5; i++) {
        char buf[32];
        sprintf(buf, "Setting %d", i + 1);
        lv_obj_t *btn = lv_list_add_btn(list, LV_SYMBOL_SETTINGS, buf);
        lv_obj_add_event_cb(btn, settings_item_event_cb, LV_EVENT_CLICKED, NULL);
    }

    return scr;
}

