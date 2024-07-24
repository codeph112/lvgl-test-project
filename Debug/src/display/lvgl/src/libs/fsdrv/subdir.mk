################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/display/lvgl/src/libs/fsdrv/lv_fs_arduino_esp_littlefs.cpp \
../src/display/lvgl/src/libs/fsdrv/lv_fs_arduino_sd.cpp 

C_SRCS += \
../src/display/lvgl/src/libs/fsdrv/lv_fs_cbfs.c \
../src/display/lvgl/src/libs/fsdrv/lv_fs_fatfs.c \
../src/display/lvgl/src/libs/fsdrv/lv_fs_littlefs.c \
../src/display/lvgl/src/libs/fsdrv/lv_fs_memfs.c \
../src/display/lvgl/src/libs/fsdrv/lv_fs_posix.c \
../src/display/lvgl/src/libs/fsdrv/lv_fs_stdio.c \
../src/display/lvgl/src/libs/fsdrv/lv_fs_win32.c 

SREC += \
rn_ra8_fsd.srec 

C_DEPS += \
./src/display/lvgl/src/libs/fsdrv/lv_fs_cbfs.d \
./src/display/lvgl/src/libs/fsdrv/lv_fs_fatfs.d \
./src/display/lvgl/src/libs/fsdrv/lv_fs_littlefs.d \
./src/display/lvgl/src/libs/fsdrv/lv_fs_memfs.d \
./src/display/lvgl/src/libs/fsdrv/lv_fs_posix.d \
./src/display/lvgl/src/libs/fsdrv/lv_fs_stdio.d \
./src/display/lvgl/src/libs/fsdrv/lv_fs_win32.d 

OBJS += \
./src/display/lvgl/src/libs/fsdrv/lv_fs_arduino_esp_littlefs.o \
./src/display/lvgl/src/libs/fsdrv/lv_fs_arduino_sd.o \
./src/display/lvgl/src/libs/fsdrv/lv_fs_cbfs.o \
./src/display/lvgl/src/libs/fsdrv/lv_fs_fatfs.o \
./src/display/lvgl/src/libs/fsdrv/lv_fs_littlefs.o \
./src/display/lvgl/src/libs/fsdrv/lv_fs_memfs.o \
./src/display/lvgl/src/libs/fsdrv/lv_fs_posix.o \
./src/display/lvgl/src/libs/fsdrv/lv_fs_stdio.o \
./src/display/lvgl/src/libs/fsdrv/lv_fs_win32.o 

MAP += \
rn_ra8_fsd.map 

CPP_DEPS += \
./src/display/lvgl/src/libs/fsdrv/lv_fs_arduino_esp_littlefs.d \
./src/display/lvgl/src/libs/fsdrv/lv_fs_arduino_sd.d 


# Each subdirectory must supply rules for building sources it contributes
src/display/lvgl/src/libs/fsdrv/%.o: ../src/display/lvgl/src/libs/fsdrv/%.cpp
	$(file > $@.in,-mthumb -mfloat-abi=hard -mcpu=cortex-m85+nopacbti -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-strict-aliasing -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal -g -D_RA_CORE=CM85 -D_RA_ORDINAL=1 -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src" -I"." -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/inc" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/inc/api" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/inc/instances" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/src/rm_freertos_port" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/aws/FreeRTOS/FreeRTOS/Source/include" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/arm/CMSIS_6/CMSIS/Core/Include" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/tes/dave2d/inc" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_gen" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_cfg/fsp_cfg/bsp" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_cfg/fsp_cfg" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_cfg/aws" -std=gnu++14 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c++ "$<")
	@echo Building file: $< && arm-none-eabi-g++ @"$@.in"
src/display/lvgl/src/libs/fsdrv/%.o: ../src/display/lvgl/src/libs/fsdrv/%.c
	$(file > $@.in,-mthumb -mfloat-abi=hard -mcpu=cortex-m85+nopacbti -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-strict-aliasing -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal -g -D_RENESAS_RA_ -D_RA_CORE=CM85 -D_RA_ORDINAL=1 -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/timers" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display/screens" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display/dsi" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display/lvgl" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display/touch" -I"." -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/inc" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/inc/api" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/inc/instances" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/src/rm_freertos_port" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/aws/FreeRTOS/FreeRTOS/Source/include" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/arm/CMSIS_6/CMSIS/Core/Include" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_gen" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_cfg/fsp_cfg/bsp" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_cfg/fsp_cfg" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_cfg/aws" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/tes/dave2d/inc" -std=gnu17 -flax-vector-conversions --param=min-pagesize=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c "$<")
	@echo Building file: $< && arm-none-eabi-gcc @"$@.in"

