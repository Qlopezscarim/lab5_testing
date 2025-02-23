create_project prj -part xczu48dr-ffvg1517-2-e -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/ecel/UFAD/qlopezscarim/Desktop/lab5_vitis/fir1/fir1/hls/syn/verilog/top_fpext_32ns_64_2_no_dsp_1_ip.tcl"
