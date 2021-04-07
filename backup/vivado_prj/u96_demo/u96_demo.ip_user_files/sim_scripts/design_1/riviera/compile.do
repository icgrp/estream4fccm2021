vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/xlconstant_v1_1_5
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/smartconnect_v1_0
vlib riviera/mutex_v2_1_10
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_4
vlib riviera/zynq_ultra_ps_e_vip_v1_0_4
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_18
vlib riviera/fifo_generator_v13_2_3
vlib riviera/axi_data_fifo_v2_1_17
vlib riviera/axi_crossbar_v2_1_19
vlib riviera/axi_protocol_converter_v2_1_18
vlib riviera/axi_clock_converter_v2_1_17
vlib riviera/blk_mem_gen_v8_4_2
vlib riviera/axi_dwidth_converter_v2_1_18

vmap xilinx_vip riviera/xilinx_vip
vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap xlconstant_v1_1_5 riviera/xlconstant_v1_1_5
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap mutex_v2_1_10 riviera/mutex_v2_1_10
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_4 riviera/axi_vip_v1_1_4
vmap zynq_ultra_ps_e_vip_v1_0_4 riviera/zynq_ultra_ps_e_vip_v1_0_4
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_18 riviera/axi_register_slice_v2_1_18
vmap fifo_generator_v13_2_3 riviera/fifo_generator_v13_2_3
vmap axi_data_fifo_v2_1_17 riviera/axi_data_fifo_v2_1_17
vmap axi_crossbar_v2_1_19 riviera/axi_crossbar_v2_1_19
vmap axi_protocol_converter_v2_1_18 riviera/axi_protocol_converter_v2_1_18
vmap axi_clock_converter_v2_1_17 riviera/axi_clock_converter_v2_1_17
vmap blk_mem_gen_v8_4_2 riviera/blk_mem_gen_v8_4_2
vmap axi_dwidth_converter_v2_1_18 riviera/axi_dwidth_converter_v2_1_18

vlog -work xilinx_vip  -sv2k12 "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"/opt/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/opt/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \

vlog -work xlconstant_v1_1_5  -v2k5 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_arsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_rsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_awsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_wsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_bsw_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/9ade/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_13/sim/bd_afc3_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_14/sim/bd_afc3_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_15/sim/bd_afc3_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_16/sim/bd_afc3_s01mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_17/sim/bd_afc3_s01tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_18/sim/bd_afc3_s01sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_19/sim/bd_afc3_s01a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_20/sim/bd_afc3_sarn_1.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_21/sim/bd_afc3_srn_1.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_22/sim/bd_afc3_sawn_1.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_23/sim/bd_afc3_swn_1.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_24/sim/bd_afc3_sbn_1.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_25/sim/bd_afc3_s02mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_26/sim/bd_afc3_s02tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_27/sim/bd_afc3_s02sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_28/sim/bd_afc3_s02a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_29/sim/bd_afc3_sarn_2.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_30/sim/bd_afc3_srn_2.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_31/sim/bd_afc3_sawn_2.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_32/sim/bd_afc3_swn_2.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_33/sim/bd_afc3_sbn_2.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_34/sim/bd_afc3_s03mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_35/sim/bd_afc3_s03tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_36/sim/bd_afc3_s03sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_37/sim/bd_afc3_s03a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_38/sim/bd_afc3_sarn_3.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_39/sim/bd_afc3_srn_3.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_40/sim/bd_afc3_sawn_3.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_41/sim/bd_afc3_swn_3.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_42/sim/bd_afc3_sbn_3.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_43/sim/bd_afc3_s04mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_44/sim/bd_afc3_s04tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_45/sim/bd_afc3_s04sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_46/sim/bd_afc3_s04a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_47/sim/bd_afc3_sarn_4.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_48/sim/bd_afc3_srn_4.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_49/sim/bd_afc3_sawn_4.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_50/sim/bd_afc3_swn_4.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_51/sim/bd_afc3_sbn_4.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_52/sim/bd_afc3_s05mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_53/sim/bd_afc3_s05tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_54/sim/bd_afc3_s05sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_55/sim/bd_afc3_s05a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_56/sim/bd_afc3_sarn_5.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_57/sim/bd_afc3_srn_5.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_58/sim/bd_afc3_sawn_5.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_59/sim/bd_afc3_swn_5.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_60/sim/bd_afc3_sbn_5.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_61/sim/bd_afc3_s06mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_62/sim/bd_afc3_s06tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_63/sim/bd_afc3_s06sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_64/sim/bd_afc3_s06a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_65/sim/bd_afc3_sarn_6.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_66/sim/bd_afc3_srn_6.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_67/sim/bd_afc3_sawn_6.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_68/sim/bd_afc3_swn_6.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_69/sim/bd_afc3_sbn_6.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_70/sim/bd_afc3_s07mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_71/sim/bd_afc3_s07tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_72/sim/bd_afc3_s07sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_73/sim/bd_afc3_s07a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_74/sim/bd_afc3_sarn_7.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_75/sim/bd_afc3_srn_7.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_76/sim/bd_afc3_sawn_7.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_77/sim/bd_afc3_swn_7.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_78/sim/bd_afc3_sbn_7.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_79/sim/bd_afc3_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_80/sim/bd_afc3_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_81/sim/bd_afc3_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_82/sim/bd_afc3_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_83/sim/bd_afc3_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_84/sim/bd_afc3_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_85/sim/bd_afc3_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.v" \

vcom -work mutex_v2_1_10 -93 \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/f88c/hdl/mutex_v2_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_mutex_0_0/sim/design_1_mutex_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_my_design_0_0/sim/design_1_my_design_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps8_0_300M_0/sim/design_1_rst_ps8_0_300M_0.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_4  -sv2k12 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_4  -sv2k12 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim/design_1_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
"../../../bd/design_1/sim/design_1.v" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/a201/hdl/verilog/circ_buff_read_128_control_s_axi.v" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/a201/hdl/verilog/circ_buff_read_128_data_V.v" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/a201/hdl/verilog/circ_buff_read_128_gmem_read_m_axi.v" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/a201/hdl/verilog/circ_buff_read_128_mux_42_8_1_1.v" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/a201/hdl/verilog/circ_buff_read_128.v" \
"../../../bd/design_1/ip/design_1_circ_buff_read_128_0_2/sim/design_1_circ_buff_read_128_0_2.v" \
"../../../bd/design_1/ip/design_1_circ_buff_read_128_1_2/sim/design_1_circ_buff_read_128_1_2.v" \
"../../../bd/design_1/ip/design_1_circ_buff_read_128_2_0/sim/design_1_circ_buff_read_128_2_0.v" \
"../../../bd/design_1/ip/design_1_circ_buff_read_128_3_0/sim/design_1_circ_buff_read_128_3_0.v" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/115f/hdl/verilog/circ_buff_write_128_control_s_axi.v" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/115f/hdl/verilog/circ_buff_write_128_data_V.v" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/115f/hdl/verilog/circ_buff_write_128_gmem_out_m_axi.v" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/115f/hdl/verilog/circ_buff_write_128.v" \
"../../../bd/design_1/ip/design_1_circ_buff_write_128_0_5/sim/design_1_circ_buff_write_128_0_5.v" \
"../../../bd/design_1/ip/design_1_circ_buff_write_128_1_1/sim/design_1_circ_buff_write_128_1_1.v" \
"../../../bd/design_1/ip/design_1_circ_buff_write_128_2_1/sim/design_1_circ_buff_write_128_2_1.v" \
"../../../bd/design_1/ip/design_1_circ_buff_write_128_3_1/sim/design_1_circ_buff_write_128_3_1.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18  -v2k5 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -93 \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_17  -v2k5 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_19  -v2k5 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_1/sim/design_1_xbar_1.v" \

vlog -work axi_protocol_converter_v2_1_18  -v2k5 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_17  -v2k5 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/693a/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_2  -v2k5 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_18  -v2k5 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/0815/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ipshared/00a3/hdl" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_ds_0/sim/design_1_auto_ds_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

