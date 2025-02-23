set ModuleHierarchy {[{
"Name" : "top","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "entry_proc_U0","ID" : "1","Type" : "sequential"},
	{"Name" : "N_c1_channel_U","ID" : "2","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_43_1","ID" : "3","Type" : "pipeline"},]},
	{"Name" : "N_c_channel_U","ID" : "4","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "sample_loop","ID" : "5","Type" : "pipeline"},]},
	{"Name" : "write_task_U0","ID" : "6","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_write_task_Pipeline_VITIS_LOOP_54_1_fu_79","ID" : "7","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_54_1","ID" : "8","Type" : "pipeline"},]},]},]
}]}