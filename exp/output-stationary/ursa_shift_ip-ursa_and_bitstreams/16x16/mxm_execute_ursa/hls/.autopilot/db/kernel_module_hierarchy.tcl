set ModuleHierarchy {[{
"Name" : "mxm_execute_ursa","ID" : "0","Type" : "sequential",
"SubLoops" : [
	{"Name" : "TILE_ROW_TILE_COL","ID" : "1","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_1650","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "STREAM_K","ID" : "3","Type" : "pipeline"},]},
	{"Name" : "grp_sa_store_fu_3153","ID" : "4","Type" : "sequential"},
	{"Name" : "call_ln248_sa_reset_fu_3673","ID" : "5","Type" : "pipeline"},]},]
}]}