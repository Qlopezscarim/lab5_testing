set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME top_entry_proc}
  {SRCNAME read_task MODELNAME read_task RTLNAME top_read_task
    SUBMODULES {
      {MODELNAME top_fpext_32ns_64_2_no_dsp_1 RTLNAME top_fpext_32ns_64_2_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME top_sparsemux_9_3_17_1_1 RTLNAME top_sparsemux_9_3_17_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME top_flow_control_loop_delay_pipe RTLNAME top_flow_control_loop_delay_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME top_flow_control_loop_delay_pipe_U}
    }
  }
  {SRCNAME fir MODELNAME fir RTLNAME top_fir
    SUBMODULES {
      {MODELNAME top_mul_17s_15s_32_1_1 RTLNAME top_mul_17s_15s_32_1_1 BINDTYPE op TYPE mul IMPL fabric LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME top_mul_17s_15ns_32_1_1 RTLNAME top_mul_17s_15ns_32_1_1 BINDTYPE op TYPE mul IMPL fabric LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME top_mul_17s_14s_31_1_1 RTLNAME top_mul_17s_14s_31_1_1 BINDTYPE op TYPE mul IMPL fabric LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME top_mul_17s_12ns_29_1_1 RTLNAME top_mul_17s_12ns_29_1_1 BINDTYPE op TYPE mul IMPL fabric LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME top_mul_17s_14ns_31_1_1 RTLNAME top_mul_17s_14ns_31_1_1 BINDTYPE op TYPE mul IMPL fabric LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME top_mul_17s_13ns_30_1_1 RTLNAME top_mul_17s_13ns_30_1_1 BINDTYPE op TYPE mul IMPL fabric LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME top_mul_17s_13s_30_1_1 RTLNAME top_mul_17s_13s_30_1_1 BINDTYPE op TYPE mul IMPL fabric LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME write_task_Pipeline_VITIS_LOOP_54_1 MODELNAME write_task_Pipeline_VITIS_LOOP_54_1 RTLNAME top_write_task_Pipeline_VITIS_LOOP_54_1
    SUBMODULES {
      {MODELNAME top_ctlz_19_19_1_1 RTLNAME top_ctlz_19_19_1_1 BINDTYPE op TYPE ctlz IMPL auto}
      {MODELNAME top_flow_control_loop_pipe_sequential_init RTLNAME top_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME top_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME write_task MODELNAME write_task RTLNAME top_write_task}
  {SRCNAME top MODELNAME top RTLNAME top IS_TOP 1
    SUBMODULES {
      {MODELNAME top_input_r_RAM_AUTO_1R1W_memcore RTLNAME top_input_r_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME top_input_r_RAM_AUTO_1R1W RTLNAME top_input_r_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME top_output_r_RAM_AUTO_1R1W_memcore RTLNAME top_output_r_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME top_output_r_RAM_AUTO_1R1W RTLNAME top_output_r_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME top_fifo_w64_d4_S RTLNAME top_fifo_w64_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_r_c_U}
      {MODELNAME top_fifo_w32_d2_S RTLNAME top_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME N_c1_channel_U}
      {MODELNAME top_fifo_w32_d2_S RTLNAME top_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME N_c_channel_U}
      {MODELNAME top_gmem_m_axi RTLNAME top_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME top_control_s_axi RTLNAME top_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
