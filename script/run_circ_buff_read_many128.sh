#!/bin/bash -e
source $1
vivado_hls -f ./estream_read/circ_buff_read_many128/script.tcl

