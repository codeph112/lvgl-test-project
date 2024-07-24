/*
 * splash.c
 *
 *  Created on: 22-Jul-2024
 *      Author: Bhura Malik
 */

#include <screen.h>

#define NUM_LEDS 3

/* Position animation callback */
static void led_position_anim_cb(void * led, int32_t pos) {
    lv_obj_set_x((lv_obj_t *)led, pos);
}

/* Brightness animation callback */
static void led_brightness_anim_cb(void * led, int32_t brightness) {
    lv_led_set_brightness(led, brightness);
}


lv_obj_t * create_splash_screen(void) {

   lv_obj_t *label, *loadingline;
   lv_obj_t * leds[NUM_LEDS];
   lv_color_t leds_colors[NUM_LEDS] = {
   {    50, 168, 82},
   {    227, 16, 65},
   {    158, 168, 50},
   };
   int i;

   lv_obj_t * scr = lv_obj_create(NULL);

   label = lv_label_create(scr);
   lv_label_set_text_static(label,"FogPASS");
   lv_obj_align(label,LV_ALIGN_TOP_MID, 0, 100);

   static lv_style_t labelStyle;
   lv_style_init(&labelStyle);
   lv_style_set_text_font(&labelStyle, &lv_font_montserrat_48);
   lv_obj_add_style(label, &labelStyle, 0);


   loadingline = lv_label_create(scr);
   lv_label_set_text_fmt(loadingline,"%s", "GSM Init....");
   lv_obj_align(loadingline,LV_ALIGN_BOTTOM_MID, 0, -100);

   static lv_style_t loadinglineStyle;
   lv_style_init(&loadinglineStyle);
   lv_style_set_text_font(&loadinglineStyle, &lv_font_montserrat_16);
   lv_obj_add_style(loadingline, &loadinglineStyle, 0);

   /* Create the LEDs and switch them OFF initially */
    for(i = 0; i < NUM_LEDS; i++) {
       leds[i] = lv_led_create(scr);
       lv_obj_align(leds[i], LV_ALIGN_CENTER, (i - NUM_LEDS / 2) * 40, 0); // Position LEDs
       lv_led_set_color(leds[i],leds_colors[i]);
       lv_led_off(leds[i]);
    }

    /* Create animations for each LED */
    for(i = 0; i < NUM_LEDS; i++) {
        /* Position animation */
        lv_anim_t position_anim;
        lv_anim_init(&position_anim);
        lv_anim_set_var(&position_anim, leds[i]);
        lv_anim_set_values(&position_anim, -40, 40);  // Move from left to right
        lv_anim_set_time(&position_anim, 500);  // Time to move to the right
        lv_anim_set_exec_cb(&position_anim, (lv_anim_exec_xcb_t)led_position_anim_cb);
        lv_anim_set_path_cb(&position_anim, lv_anim_path_linear);
        lv_anim_set_playback_time(&position_anim, 500);  // Time to move back to the left
        lv_anim_set_playback_delay(&position_anim, 500);  // Stay at the center for 1 second
        lv_anim_set_repeat_delay(&position_anim, 1000 - 500 * i);  // Stagger start times
        lv_anim_set_repeat_count(&position_anim, LV_ANIM_REPEAT_INFINITE);
        lv_anim_start(&position_anim);

        /* Brightness animation */
        lv_anim_t brightness_anim;
        lv_anim_init(&brightness_anim);
        lv_anim_set_var(&brightness_anim, leds[i]);
        lv_anim_set_values(&brightness_anim, LV_LED_BRIGHT_MIN, LV_LED_BRIGHT_MAX);
        lv_anim_set_time(&brightness_anim, 1000);  // Time for brightness animation
        lv_anim_set_exec_cb(&brightness_anim, (lv_anim_exec_xcb_t)led_brightness_anim_cb);
        lv_anim_set_path_cb(&brightness_anim, lv_anim_path_ease_in_out);
        lv_anim_set_playback_time(&brightness_anim, 1000);  // Time to fade out
        lv_anim_set_repeat_delay(&brightness_anim, 1000 - 500 * i);  // Stagger start times
        lv_anim_set_repeat_count(&brightness_anim, LV_ANIM_REPEAT_INFINITE);
        lv_anim_start(&brightness_anim);
    }

    return scr;
}

///* Number of LEDs */
//#define NUM_LEDS 3
//
///* Position animation callback */
//static void led_position_anim_cb(void * led, int32_t pos) {
//    lv_obj_set_x((lv_obj_t *)led, pos);
//}
//
///* Brightness animation callback */
//static void led_brightness_anim_cb(void * led, int32_t brightness) {
//    lv_led_set_brightness(led, brightness);
//}
//
///* Function to create and animate the LEDs */
//void lv_splash_screen(void) {
//    lv_obj_t *label, *loadingline, *versionLine;
//    lv_obj_t * leds[NUM_LEDS];
//    lv_color_t leds_colors[NUM_LEDS] = {
//    {    50, 168, 82},
//    {    227, 16, 65},
//    {    158, 168, 50},
//    };
//    int i;
//
//
//    label = lv_label_create(lv_scr_act());
//    lv_label_set_text_static(label,"FogPASS");
//    lv_obj_align(label,LV_ALIGN_TOP_MID, 0, 100);
//
//    static lv_style_t labelStyle;
//    lv_style_init(&labelStyle);
//    lv_style_set_text_font(&labelStyle, &lv_font_montserrat_48);
//    lv_obj_add_style(label, &labelStyle, 0);
//
//    versionLine = lv_label_create(lv_scr_act());
//    lv_label_set_text_fmt(versionLine,"%s", "Version - 00.B0");
//    lv_obj_align(versionLine,LV_ALIGN_TOP_MID, 0, 170);
//
//    static lv_style_t versionLineStyle;
//    lv_style_init(&versionLineStyle);
//    lv_style_set_text_font(&versionLineStyle, &lv_font_montserrat_16);
//    lv_obj_add_style(versionLine, &versionLineStyle, 0);
//
//
//    loadingline = lv_label_create(lv_scr_act());
//    lv_label_set_text_fmt(loadingline,"%s", "GSM Init....");
//    lv_obj_align(loadingline,LV_ALIGN_BOTTOM_MID, 0, -100);
//
//    static lv_style_t loadinglineStyle;
//    lv_style_init(&loadinglineStyle);
//    lv_style_set_text_font(&loadinglineStyle, &lv_font_montserrat_14);
//    lv_obj_add_style(loadingline, &loadinglineStyle, 0);
//
//    /* Create the LEDs and switch them OFF initially */
//    for(i = 0; i < NUM_LEDS; i++) {
//        leds[i] = lv_led_create(lv_scr_act());
//        lv_obj_align(leds[i], LV_ALIGN_CENTER, (i - NUM_LEDS / 2) * 40, 0); // Position LEDs
//        lv_led_set_color(leds[i],leds_colors[i]);
//        lv_led_off(leds[i]);
//    }
//
//    /* Create animations for each LED */
//    for(i = 0; i < NUM_LEDS; i++) {
//        /* Position animation */
//        lv_anim_t position_anim;
//        lv_anim_init(&position_anim);
//        lv_anim_set_var(&position_anim, leds[i]);
//        lv_anim_set_values(&position_anim, -40, 40);  // Move from left to right
//        lv_anim_set_time(&position_anim, 500);  // Time to move to the right
//        lv_anim_set_exec_cb(&position_anim, (lv_anim_exec_xcb_t)led_position_anim_cb);
//        lv_anim_set_path_cb(&position_anim, lv_anim_path_linear);
//        lv_anim_set_playback_time(&position_anim, 500);  // Time to move back to the left
//        lv_anim_set_playback_delay(&position_anim, 500);  // Stay at the center for 1 second
//        lv_anim_set_repeat_delay(&position_anim, 1000 - 500 * i);  // Stagger start times
//        lv_anim_set_repeat_count(&position_anim, LV_ANIM_REPEAT_INFINITE);
//        lv_anim_start(&position_anim);
//
//        /* Brightness animation */
//        lv_anim_t brightness_anim;
//        lv_anim_init(&brightness_anim);
//        lv_anim_set_var(&brightness_anim, leds[i]);
//        lv_anim_set_values(&brightness_anim, LV_LED_BRIGHT_MIN, LV_LED_BRIGHT_MAX);
//        lv_anim_set_time(&brightness_anim, 1000);  // Time for brightness animation
//        lv_anim_set_exec_cb(&brightness_anim, (lv_anim_exec_xcb_t)led_brightness_anim_cb);
//        lv_anim_set_path_cb(&brightness_anim, lv_anim_path_ease_in_out);
//        lv_anim_set_playback_time(&brightness_anim, 1000);  // Time to fade out
//        lv_anim_set_repeat_delay(&brightness_anim, 1000 - 500 * i);  // Stagger start times
//        lv_anim_set_repeat_count(&brightness_anim, LV_ANIM_REPEAT_INFINITE);
//        lv_anim_start(&brightness_anim);
//    }
//}


