/*
 * screens.h
 *
 *  Created on: 22-Jul-2024
 *      Author: Bhura Malik
 */

#ifndef DISPLAY_SCREENS_SCREEN_H_
#define DISPLAY_SCREENS_SCREEN_H_

#include "touch_disp.h"
#include "lvgl.h"

#define MAX_SCREEN_HISTORY 10

typedef struct gui_screen {
    lv_obj_t *obj;
    uint8_t g_added:1;
    uint8_t :7;
    struct gui_screen *next;
} gui_screen_t;

typedef struct {
    gui_screen_t *head;
    gui_screen_t *scr_active;
    lv_obj_t *scr_error;
    uint16_t s_count;
    uint16_t curr_index;
} gui_handler_t;

extern gui_handler_t guiHandler;

extern lv_style_t style_top_bar;
extern lv_style_t style_icon;

lv_obj_t * create_splash_screen(void);
lv_obj_t * create_warning_screen(void);
lv_obj_t * create_home_screen(void);
lv_obj_t *create_settings_screen( void );

void push_screen(lv_obj_t *scr);
lv_obj_t *pop_screen( void );

void create_top_layer(void);

lv_obj_t * lv_get_active_scr(void);
void lv_set_active_scr(gui_screen_t *scr);
void lv_load_scr(lv_obj_t *scr);
void lv_load_scr_using_id(uint16_t id);
void lv_load_scr_using_index(uint16_t index, lv_screen_load_anim_t anim_type, uint32_t delay, bool auto_del);
void lv_gui_update(lv_obj_t *scr);
uint8_t lv_gui_validate(lv_obj_t *scr);
void lv_gui_task(void);
void screen_gesture_event_cb(lv_event_t *e);


#endif /* DISPLAY_SCREENS_SCREEN_H_ */
