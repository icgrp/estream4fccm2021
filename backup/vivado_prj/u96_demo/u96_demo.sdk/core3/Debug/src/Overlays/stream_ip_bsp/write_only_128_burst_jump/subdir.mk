################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/Overlays/stream_ip_bsp/write_only_128_burst_jump/xwrite_only_128_burst_jump.c 

OBJS += \
./src/Overlays/stream_ip_bsp/write_only_128_burst_jump/xwrite_only_128_burst_jump.o 

C_DEPS += \
./src/Overlays/stream_ip_bsp/write_only_128_burst_jump/xwrite_only_128_burst_jump.d 


# Each subdirectory must supply rules for building sources it contributes
src/Overlays/stream_ip_bsp/write_only_128_burst_jump/%.o: ../src/Overlays/stream_ip_bsp/write_only_128_burst_jump/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v8 g++ compiler'
	aarch64-none-elf-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../core3_bsp/psu_cortexa53_3/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


