################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../src/Overlays/benchmark_stream.cc \
../src/Overlays/mmu.cc \
../src/Overlays/stream.cc 

CC_DEPS += \
./src/Overlays/benchmark_stream.d \
./src/Overlays/mmu.d \
./src/Overlays/stream.d 

OBJS += \
./src/Overlays/benchmark_stream.o \
./src/Overlays/mmu.o \
./src/Overlays/stream.o 


# Each subdirectory must supply rules for building sources it contributes
src/Overlays/%.o: ../src/Overlays/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v8 g++ compiler'
	aarch64-none-elf-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../core2_bsp/psu_cortexa53_2/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


