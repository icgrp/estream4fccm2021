set moduleName circ_buff_read_128
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {circ_buff_read_128}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem_read int 128 regular {axi_master 2}  }
	{ input_V int 32 regular {axi_slave 0}  }
	{ stream_out_V int 64 regular {axi_s 1 volatile  { stream_out_V Data } }  }
	{ reset int 8 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem_read", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "input.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"offset": { "type": "dynamic","port_name": "input_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "stream_out_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "fifo.V","cData": "long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "reset", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "reset","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":24}, "offset_end" : {"in":31}} ]}
# RTL Port declarations: 
set portNum 68
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem_read_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_read_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_read_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_read_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_read_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_read_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_read_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_read_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_read_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_read_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_read_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_read_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_read_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_read_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_read_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_read_WDATA sc_out sc_lv 128 signal 0 } 
	{ m_axi_gmem_read_WSTRB sc_out sc_lv 16 signal 0 } 
	{ m_axi_gmem_read_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_read_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_read_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_read_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_read_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_read_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_read_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_read_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_read_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_read_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_read_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_read_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_read_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_read_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_read_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_read_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_read_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_read_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_read_RDATA sc_in sc_lv 128 signal 0 } 
	{ m_axi_gmem_read_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_read_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_read_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_read_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_read_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_read_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_read_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_read_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_read_BUSER sc_in sc_lv 1 signal 0 } 
	{ stream_out_V_TDATA sc_out sc_lv 64 signal 2 } 
	{ stream_out_V_TVALID sc_out sc_logic 1 outvld 2 } 
	{ stream_out_V_TREADY sc_in sc_logic 1 outacc 2 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"circ_buff_read_128","role":"start","value":"0","valid_bit":"0"},{"name":"circ_buff_read_128","role":"continue","value":"0","valid_bit":"4"},{"name":"circ_buff_read_128","role":"auto_start","value":"0","valid_bit":"7"},{"name":"input_V","role":"data","value":"16"},{"name":"reset","role":"data","value":"24"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"circ_buff_read_128","role":"start","value":"0","valid_bit":"0"},{"name":"circ_buff_read_128","role":"done","value":"0","valid_bit":"1"},{"name":"circ_buff_read_128","role":"idle","value":"0","valid_bit":"2"},{"name":"circ_buff_read_128","role":"ready","value":"0","valid_bit":"3"},{"name":"circ_buff_read_128","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem_read_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_read", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_read_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_read", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_read_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_read", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_read_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_read", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_read_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_read", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_read_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_read", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_read_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_read", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_read_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_read", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_read_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_read", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_read_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_read", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_read_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_read", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_read_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_read", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_read_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_read", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_read_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_read", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_read_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_read", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_read_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "gmem_read", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_read_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gmem_read", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_read_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_read", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_read_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_read", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_read_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_read", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_read_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_read", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_read_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_read", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_read_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_read", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_read_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_read", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_read_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_read", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_read_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_read", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_read_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_read", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_read_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_read", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_read_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_read", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_read_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_read", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_read_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_read", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_read_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_read", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_read_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_read", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_read_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_read", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_read_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_read", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_read_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "gmem_read", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_read_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_read", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_read_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_read", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_read_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_read", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_read_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_read", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_read_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_read", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_read_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_read", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_read_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_read", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_read_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_read", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_read_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_read", "role": "BUSER" }} , 
 	{ "name": "stream_out_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stream_out_V", "role": "TDATA" }} , 
 	{ "name": "stream_out_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stream_out_V", "role": "TVALID" }} , 
 	{ "name": "stream_out_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "stream_out_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "circ_buff_read_128",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "98331",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem_read", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem_read_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_read_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "gmem_read_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_read_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_read_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "input_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "stream_out_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_out_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I"},
			{"Name" : "stream_tail_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.circ_buff_read_128_control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.circ_buff_read_128_gmem_read_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	circ_buff_read_128 {
		gmem_read {Type IO LastRead 20 FirstWrite 16}
		input_V {Type I LastRead 0 FirstWrite -1}
		stream_out_V {Type O LastRead -1 FirstWrite 14}
		reset {Type I LastRead 0 FirstWrite -1}
		stream_tail_V {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "98331"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "98332"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	gmem_read { m_axi {  { m_axi_gmem_read_AWVALID VALID 1 1 }  { m_axi_gmem_read_AWREADY READY 0 1 }  { m_axi_gmem_read_AWADDR ADDR 1 32 }  { m_axi_gmem_read_AWID ID 1 1 }  { m_axi_gmem_read_AWLEN LEN 1 8 }  { m_axi_gmem_read_AWSIZE SIZE 1 3 }  { m_axi_gmem_read_AWBURST BURST 1 2 }  { m_axi_gmem_read_AWLOCK LOCK 1 2 }  { m_axi_gmem_read_AWCACHE CACHE 1 4 }  { m_axi_gmem_read_AWPROT PROT 1 3 }  { m_axi_gmem_read_AWQOS QOS 1 4 }  { m_axi_gmem_read_AWREGION REGION 1 4 }  { m_axi_gmem_read_AWUSER USER 1 1 }  { m_axi_gmem_read_WVALID VALID 1 1 }  { m_axi_gmem_read_WREADY READY 0 1 }  { m_axi_gmem_read_WDATA DATA 1 128 }  { m_axi_gmem_read_WSTRB STRB 1 16 }  { m_axi_gmem_read_WLAST LAST 1 1 }  { m_axi_gmem_read_WID ID 1 1 }  { m_axi_gmem_read_WUSER USER 1 1 }  { m_axi_gmem_read_ARVALID VALID 1 1 }  { m_axi_gmem_read_ARREADY READY 0 1 }  { m_axi_gmem_read_ARADDR ADDR 1 32 }  { m_axi_gmem_read_ARID ID 1 1 }  { m_axi_gmem_read_ARLEN LEN 1 8 }  { m_axi_gmem_read_ARSIZE SIZE 1 3 }  { m_axi_gmem_read_ARBURST BURST 1 2 }  { m_axi_gmem_read_ARLOCK LOCK 1 2 }  { m_axi_gmem_read_ARCACHE CACHE 1 4 }  { m_axi_gmem_read_ARPROT PROT 1 3 }  { m_axi_gmem_read_ARQOS QOS 1 4 }  { m_axi_gmem_read_ARREGION REGION 1 4 }  { m_axi_gmem_read_ARUSER USER 1 1 }  { m_axi_gmem_read_RVALID VALID 0 1 }  { m_axi_gmem_read_RREADY READY 1 1 }  { m_axi_gmem_read_RDATA DATA 0 128 }  { m_axi_gmem_read_RLAST LAST 0 1 }  { m_axi_gmem_read_RID ID 0 1 }  { m_axi_gmem_read_RUSER USER 0 1 }  { m_axi_gmem_read_RRESP RESP 0 2 }  { m_axi_gmem_read_BVALID VALID 0 1 }  { m_axi_gmem_read_BREADY READY 1 1 }  { m_axi_gmem_read_BRESP RESP 0 2 }  { m_axi_gmem_read_BID ID 0 1 }  { m_axi_gmem_read_BUSER USER 0 1 } } }
	stream_out_V { axis {  { stream_out_V_TDATA out_data 1 64 }  { stream_out_V_TVALID out_vld 1 1 }  { stream_out_V_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
	{ gmem_read { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem_read 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem_read 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
