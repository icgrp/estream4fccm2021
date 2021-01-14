#!/bin/bash -e
source $1
vivado_hls -f ./estream_write/circ_buff_write_many128/script.tcl

