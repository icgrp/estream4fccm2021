ws=workspace
hls_prj=hls_prj
#ip_name=circ_buff_read_many128 circ_buff_write_many128
ip_name=read write
hls_target=$(foreach n, $(ip_name), $(ws)/$(hls_prj)/estream_$(n)/circ_buff_$(n)_many128/syn/verilog/circ_buff_$(n)_many128.v)
hls_script=$(foreach n, $(ip_name), script/run_circ_buff_$(n)_many128.sh)
hls_c_src=$(foreach n, $(ip_name), $(hls_prj)/estream_$(n)/c_src/circ_buff_$(n)_many_128.cpp)




all: $(hls_target) 

$(hls_target): $(ws)/$(hls_prj) $(hls_script)
	echo $(hls_target)
	cp ./script/run_$(basename $(notdir $@)).sh $(ws)/$(hls_prj) 
	cd $(ws)/$(hls_prj) && ./run_$(basename $(notdir $@)).sh



$(ws)/$(hls_prj): $(ws) $(hls_c_src)
	rm -rf ./$(ws)/$(hls_prj) && cp -rf $(hls_prj) ./$(ws)/
	


$(ws):
	mkdir -p $(ws)



clean:
	rm -rf $(ws)
