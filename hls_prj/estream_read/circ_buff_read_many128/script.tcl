set logFileId [open ./runLogRead.log "w"]
set_param general.maxThreads 8 
set start_time [clock seconds]
open_project estream_read
set_top circ_buff_read_many128
add_files ./estream_read/c_src/circ_buff_read_many_128.cpp
open_solution "circ_buff_read_many128"
set_part {xczu9eg-ffvb1156-2-e}
create_clock -period 4 -name default
#csim_design
csynth_design
#cosim_design -trace_level all -tool xsim
export_design -rtl verilog -format ip_catalog
set end_time [clock seconds]
set total_seconds [expr $end_time - $start_time]
puts $logFileId "hls: $total_seconds seconds"

exit
