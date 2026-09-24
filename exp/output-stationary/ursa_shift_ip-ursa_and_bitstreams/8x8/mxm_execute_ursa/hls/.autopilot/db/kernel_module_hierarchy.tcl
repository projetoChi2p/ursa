set ModuleHierarchy {[{
"Name" : "mxm_execute_ursa","ID" : "0","Type" : "sequential",
"SubLoops" : [
	{"Name" : "TILE_ROW_TILE_COL","ID" : "1","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_532","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "STREAM_K","ID" : "3","Type" : "pipeline"},]},
	{"Name" : "grp_sa_store_fu_912","ID" : "4","Type" : "sequential"},
	{"Name" : "call_ln236_sa_reset_fu_1048","ID" : "5","Type" : "pipeline"},]},]
}]}