################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/display/lvgl/src/core/lv_group.c \
../src/display/lvgl/src/core/lv_obj.c \
../src/display/lvgl/src/core/lv_obj_class.c \
../src/display/lvgl/src/core/lv_obj_draw.c \
../src/display/lvgl/src/core/lv_obj_event.c \
../src/display/lvgl/src/core/lv_obj_id_builtin.c \
../src/display/lvgl/src/core/lv_obj_pos.c \
../src/display/lvgl/src/core/lv_obj_property.c \
../src/display/lvgl/src/core/lv_obj_scroll.c \
../src/display/lvgl/src/core/lv_obj_style.c \
../src/display/lvgl/src/core/lv_obj_style_gen.c \
../src/display/lvgl/src/core/lv_obj_tree.c \
../src/display/lvgl/src/core/lv_refr.c 

SREC += \
rn_ra8_fsd.srec 

C_DEPS += \
./src/display/lvgl/src/core/lv_group.d \
./src/display/lvgl/src/core/lv_obj.d \
./src/display/lvgl/src/core/lv_obj_class.d \
./src/display/lvgl/src/core/lv_obj_draw.d \
./src/display/lvgl/src/core/lv_obj_event.d \
./src/display/lvgl/src/core/lv_obj_id_builtin.d \
./src/display/lvgl/src/core/lv_obj_pos.d \
./src/display/lvgl/src/core/lv_obj_property.d \
./src/display/lvgl/src/core/lv_obj_scroll.d \
./src/display/lvgl/src/core/lv_obj_style.d \
./src/display/lvgl/src/core/lv_obj_style_gen.d \
./src/display/lvgl/src/core/lv_obj_tree.d \
./src/display/lvgl/src/core/lv_refr.d 

OBJS += \
./src/display/lvgl/src/core/lv_group.o \
./src/display/lvgl/src/core/lv_obj.o \
./src/display/lvgl/src/core/lv_obj_class.o \
./src/display/lvgl/src/core/lv_obj_draw.o \
./src/display/lvgl/src/core/lv_obj_event.o \
./src/display/lvgl/src/core/lv_obj_id_builtin.o \
./src/display/lvgl/src/core/lv_obj_pos.o \
./src/display/lvgl/src/core/lv_obj_property.o \
./src/display/lvgl/src/core/lv_obj_scroll.o \
./src/display/lvgl/src/core/lv_obj_style.o \
./src/display/lvgl/src/core/lv_obj_style_gen.o \
./src/display/lvgl/src/core/lv_obj_tree.o \
./src/display/lvgl/src/core/lv_refr.o 

MAP += \
rn_ra8_fsd.map 


# Each subdirectory must supply rules for building sources it contributes
src/display/lvgl/src/core/%.o: ../src/display/lvgl/src/core/%.c
	$(file > $@.in,-mthumb -mfloat-abi=hard -mcpu=cortex-m85+nopacbti -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-strict-aliasing -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal -g -D_RENESAS_RA_ -D_RA_CORE=CM85 -D_RA_ORDINAL=1 -I"D:/DevOps/Renesas/rn_ra8_fsd/src" -I"D:/DevOps/Renesas/rn_ra8_fsd/src/display" -I"D:/DevOps/Renesas/rn_ra8_fsd/src/display/dsi" -I"D:/DevOps/Renesas/rn_ra8_fsd/src/display/lvgl" -I"D:/DevOps/Renesas/rn_ra8_fsd/src/display/touch" -I"." -I"D:/DevOps/Renesas/rn_ra8_fsd/ra/fsp/inc" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra/fsp/inc/api" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra/fsp/inc/instances" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra/fsp/src/rm_freertos_port" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra/aws/FreeRTOS/FreeRTOS/Source/include" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra/arm/CMSIS_6/CMSIS/Core/Include" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra_gen" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra_cfg/fsp_cfg/bsp" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra_cfg/fsp_cfg" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra_cfg/aws" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra/tes/dave2d/inc" -std=gnu17 -flax-vector-conversions --param=min-pagesize=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c "$<")
	@echo Building file: $< && arm-none-eabi-gcc @"$@.in"
