################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/Overlays/stream_ip_bsp/write_only_64_jump/subdir.mk
-include src/Overlays/stream_ip_bsp/write_only_32_jump/subdir.mk
-include src/Overlays/stream_ip_bsp/write_only_128_jump/subdir.mk
-include src/Overlays/stream_ip_bsp/write_only_128_burst_jump/subdir.mk
-include src/Overlays/stream_ip_bsp/read_only_64_jump/subdir.mk
-include src/Overlays/stream_ip_bsp/read_only_32_jump/subdir.mk
-include src/Overlays/stream_ip_bsp/read_only_128_jump/subdir.mk
-include src/Overlays/stream_ip_bsp/read_only_128_burst_jump/subdir.mk
-include src/Overlays/stream_ip_bsp/presence_write_jump/subdir.mk
-include src/Overlays/stream_ip_bsp/presence_read_jump/subdir.mk
-include src/Overlays/stream_ip_bsp/loop_back_64_write_jump/subdir.mk
-include src/Overlays/stream_ip_bsp/loop_back_64_read_jump/subdir.mk
-include src/Overlays/stream_ip_bsp/loop_back_32_write_jump/subdir.mk
-include src/Overlays/stream_ip_bsp/loop_back_32_read_jump/subdir.mk
-include src/Overlays/stream_ip_bsp/loop_back_128_write_jump/subdir.mk
-include src/Overlays/stream_ip_bsp/loop_back_128_write_axi_lite_jump/subdir.mk
-include src/Overlays/stream_ip_bsp/loop_back_128_read_jump/subdir.mk
-include src/Overlays/stream_ip_bsp/loop_back_128_read_axi_lite_jump/subdir.mk
-include src/Overlays/stream_ip_bsp/example_jump_table/subdir.mk
-include src/Overlays/stream_ip_bsp/circ_buff_write_many_jump/subdir.mk
-include src/Overlays/stream_ip_bsp/circ_buff_write_many_128_jump/subdir.mk
-include src/Overlays/stream_ip_bsp/circ_buff_write_jump/subdir.mk
-include src/Overlays/stream_ip_bsp/circ_buff_write_128_jump/subdir.mk
-include src/Overlays/stream_ip_bsp/circ_buff_read_many_jump/subdir.mk
-include src/Overlays/stream_ip_bsp/circ_buff_read_many_128_jump/subdir.mk
-include src/Overlays/stream_ip_bsp/circ_buff_read_jump/subdir.mk
-include src/Overlays/stream_ip_bsp/circ_buff_read_128_jump/subdir.mk
-include src/Overlays/stream_ip_bsp/bert_example_jump/subdir.mk
-include src/Overlays/stream_ip_bsp/subdir.mk
-include src/Overlays/subdir.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
core3.elf.size \


# All Target
all: core3.elf secondary-outputs

# Tool invocations
core3.elf: $(OBJS) ../src/lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM v8 g++ linker'
	aarch64-none-elf-g++ -Wl,-T -Wl,../src/lscript.ld -L../../core3_bsp/psu_cortexa53_3/lib -o "core3.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

core3.elf.size: core3.elf
	@echo 'Invoking: ARM v8 Print Size'
	aarch64-none-elf-size core3.elf  |tee "core3.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(CC_DEPS)$(EXECUTABLES)$(OBJS)$(C_UPPER_DEPS)$(CXX_DEPS)$(S_UPPER_DEPS)$(C_DEPS)$(CPP_DEPS)$(ELFSIZE) core3.elf
	-@echo ' '

secondary-outputs: $(ELFSIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
