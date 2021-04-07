################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/Overlays/stream_ip_bsp/loop_back_128_write_axi_lite_jump/xloop_back_128_write_axi_lite_jump.c 

OBJS += \
./src/Overlays/stream_ip_bsp/loop_back_128_write_axi_lite_jump/xloop_back_128_write_axi_lite_jump.o 

C_DEPS += \
./src/Overlays/stream_ip_bsp/loop_back_128_write_axi_lite_jump/xloop_back_128_write_axi_lite_jump.d 


# Each subdirectory must supply rules for building sources it contributes
src/Overlays/stream_ip_bsp/loop_back_128_write_axi_lite_jump/%.o: ../src/Overlays/stream_ip_bsp/loop_back_128_write_axi_lite_jump/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v8 g++ compiler'
	aarch64-none-elf-g++ -Wall -O3 -g3 -c -fmessage-length=0 -MT"$@" -I../../core1_bsp/psu_cortexa53_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


