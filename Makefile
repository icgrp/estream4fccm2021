ifndef XILINX_SDX
  $(error Environment variable XILINX_SDX is required and should point to SDx install area. For example, you can source /opt/Xilinx/SDx/2018.3/settings.sh)
endif


ws=workspace
vivado_source=$(XILINX_SDX)/settings64.sh
hls_prj=hls_prj
#ip_name=circ_buff_read_many128 circ_buff_write_many128
ip_name=read write
hls_target=$(ws)/$(hls_prj)/estream_write/circ_buff_write_many128/syn/verilog/circ_buff_write_many128.v
hls_script=$(foreach n, $(ip_name), script/run_circ_buff_$(n)_many128.sh)
hls_c_src=$(foreach n, $(ip_name), $(hls_prj)/estream_$(n)/c_src/circ_buff_$(n)_many_128.cpp)
vivado_v_src=v_src/design_1_wrapper.v v_src/my_design.v
vivado_script_src=script/qsub_prj_run.sh script/u96_prj_gen.tcl
vivado_target=$(ws)/vivado_prj/u96_demo/u96_demo.runs/impl_1/design_1_wrapper.sysdef
core_seq=$(shell seq 0 1 3)
sdk_tcl=$(foreach n, $(core_seq), script/project_xsdk_core$(n).tcl) 
sdk_target=$(ws)/vivado_prj/u96_demo/u96_demo.sdk/core3/src/lscript.ld


all: $(sdk_target) 

$(sdk_target): $(vivado_target) script/qsub_run_xsdk.sh $(sdk_tcl) 
	cp ./script/qsub_run_xsdk.sh $(ws)/vivado_prj/
	cp $(sdk_tcl)  $(ws)/vivado_prj/
	cd $(ws)/vivado_prj/ && ./qsub_run_xsdk.sh $(vivado_source)
	touch $(sdk_target)

$(vivado_target): $(hls_target) $(vivado_script_src) $(vivado_v_src) 
	rm -rf $(ws)/vivado_prj
	mkdir $(ws)/vivado_prj
	cp $(vivado_script_src) $(ws)/vivado_prj
	cp $(vivado_v_src) $(ws)/vivado_prj
	cd $(ws)/vivado_prj && ./qsub_prj_run.sh $(vivado_source)

$(hls_target):  $(hls_script) $(hls_c_src)
	rm -rf  $(ws)
	mkdir -p $(ws)
	rm -rf ./$(ws)/$(hls_prj) && cp -rf $(hls_prj) ./$(ws)/
	cp $(hls_script)  $(ws)/$(hls_prj) 
	cd $(ws)/$(hls_prj) && ./run_circ_buff_read_many128.sh
	cd $(ws)/$(hls_prj) && ./run_circ_buff_write_many128.sh

clean:
	rm -rf $(ws)
