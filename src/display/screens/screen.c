/*
 * screen.c
 *
 *  Created on: 23-Jul-2024
 *      Author: Bhura Malik
 */

#include "screen.h"
#include <stdlib.h>
#include <string.h>
#include "thread_disp.h"

gui_handler_t guiHandler =
{ 0 };

static lv_obj_t *screen_stack[MAX_SCREEN_HISTORY];
static int stack_top = -1;

void push_screen(lv_obj_t *scr) {
    if (stack_top < MAX_SCREEN_HISTORY - 1) {
        stack_top++;
        screen_stack[stack_top] = scr;
    }
}

lv_obj_t *pop_screen( void ) {
    if (stack_top >= 0) {
        lv_obj_t *scr = screen_stack[stack_top];
        stack_top--;
        return scr;
    }
    return NULL;
}

lv_obj_t* lv_get_active_scr(void)
{
    return guiHandler.scr_active->obj;
}

void lv_set_active_scr(gui_screen_t *scr)
{
    guiHandler.scr_active = scr;
}

void lv_load_scr(lv_obj_t *scr)
{
    if (scr == NULL)
        return;

    gui_screen_t *current = guiHandler.head;
    while (current != NULL)
    {
        if (current->obj == scr)
        {
            // Screen already registered
            return;
        }
        current = current->next;
    }

    gui_screen_t *new_screen = (gui_screen_t*) malloc (sizeof(gui_screen_t));
    if (new_screen == NULL)
    {
        // Memory allocation failed
        return;
    }
    new_screen->obj = scr;
    new_screen->g_added = 0;
    new_screen->next = guiHandler.head;
    guiHandler.head = new_screen;
    guiHandler.s_count++;
}

void lv_load_scr_using_id(uint16_t id)
{
    uint16_t count = 0;
    gui_screen_t *current = guiHandler.head;

    while (current != NULL)
    {
        if (count == id)
        {
            lv_set_active_scr (current);
            lv_scr_load (current->obj);
            return;
        }
        count++;
        current = current->next;
    }
}

void lv_load_scr_using_index(uint16_t index, lv_screen_load_anim_t anim_type, uint32_t delay, bool auto_del)
{
    uint16_t count = 0;
    gui_screen_t *current = guiHandler.head;

    while (current != NULL)
    {
        if (count == index)
        {
            lv_set_active_scr (current);
            lv_screen_load_anim(current->obj, anim_type, 200, delay, auto_del);
            if( current->g_added == 0) {
                lv_obj_add_event_cb (current->obj, screen_gesture_event_cb, LV_EVENT_GESTURE, NULL);
                current->g_added = 1;
            }
            guiHandler.curr_index = index;
            return;
        }
        count++;
        current = current->next;
    }
}

static void splash_screen_timer_cb(lv_timer_t *timer)
{
    lv_timer_delete(timer);
    lv_load_scr_using_index (1, LV_SCR_LOAD_ANIM_FADE_OUT, 100, true); // Load the warning screen
    lv_obj_clear_flag(lv_layer_top(), LV_OBJ_FLAG_HIDDEN);
}

uint8_t lv_gui_validate(lv_obj_t *scr)
{
    if (scr == NULL)
    {
        lv_gui_update (guiHandler.scr_error);
        return 0;
    }
    return 1;
}

void lv_gui_init(void)
{

    lv_load_scr (create_settings_screen ());

    lv_load_scr (create_home_screen ());

    lv_load_scr (create_warning_screen ());

    lv_load_scr (create_splash_screen ());

    create_top_layer();

    lv_obj_add_flag(lv_layer_top(), LV_OBJ_FLAG_HIDDEN);

    lv_set_active_scr (guiHandler.head);
    lv_scr_load (guiHandler.head->obj);

    lv_timer_t *timer = lv_timer_create (splash_screen_timer_cb, 5000, NULL);

    lv_timer_set_repeat_count(timer, 1);
}

void screen_gesture_event_cb(lv_event_t *e)
{
    //lv_obj_t *scr = lv_event_get_current_target(e);
    lv_dir_t dir = lv_indev_get_gesture_dir (lv_indev_get_act ());
    switch (dir)
    {
        case LV_DIR_LEFT:
            if (guiHandler.curr_index >= guiHandler.s_count-1)
            {
                guiHandler.curr_index = 1;
            }
            else
            {
                guiHandler.curr_index++;
            }
            lv_load_scr_using_index (guiHandler.curr_index, LV_SCR_LOAD_ANIM_OVER_LEFT, 100, 0); // Example: Navigate to the second screen
        break;
        case LV_DIR_RIGHT:
            if (guiHandler.curr_index > 1)
            {
                guiHandler.curr_index--;
            }
            else
            {
                guiHandler.curr_index = guiHandler.s_count-1;
            }

            lv_load_scr_using_index (guiHandler.curr_index, LV_SCR_LOAD_ANIM_OVER_RIGHT, 100, 0);
        break;
    }

    lv_indev_wait_release(lv_indev_active());
}
