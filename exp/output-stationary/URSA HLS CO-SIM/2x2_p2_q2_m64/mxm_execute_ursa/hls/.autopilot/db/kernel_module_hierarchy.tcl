set ModuleHierarchy {[{
"Name" : "mxm_execute_ursa","ID" : "0","Type" : "sequential",
"SubLoops" : [
	{"Name" : "TILE_ROW_TILE_COL","ID" : "1","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_mxm_execute_ursa_Pipeline_STREAM_K_fu_192","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "STREAM_K","ID" : "3","Type" : "pipeline"},]},
	{"Name" : "grp_sa_store_fu_226","ID" : "4","Type" : "pipeline"},
	{"Name" : "call_ln178_sa_reset_fu_242","ID" : "5","Type" : "pipeline"},]},]
}]}