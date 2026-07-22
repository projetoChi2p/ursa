
set TopModule "mxm_execute_ursa"
set ClockPeriod 10
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 1
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set ResetRegisterNum 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix mxm_execute_ursa_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xc7z020:-clg484:-1
set SourceFiles {sc {} c {/home/fi/Documents/GitHub/ursa/exp/ursa_ws/src/core/pe.cpp /home/fi/Documents/GitHub/ursa/exp/ursa_ws/src/core/sa.cpp /home/fi/Documents/GitHub/ursa/exp/ursa_ws/src/core/shell.cpp}}
set SourceFlags {sc {} c {{} {} {}}}
set DirectiveFile {}
set TBFiles {verilog {/home/fi/Documents/GitHub/ursa/exp/ursa_ws/src/tb/matrices.h /home/fi/Documents/GitHub/ursa/exp/ursa_ws/src/tb/matrices.cpp /home/fi/Documents/GitHub/ursa/exp/ursa_ws/src/tb/tb_main.cpp} bc {/home/fi/Documents/GitHub/ursa/exp/ursa_ws/src/tb/matrices.h /home/fi/Documents/GitHub/ursa/exp/ursa_ws/src/tb/matrices.cpp /home/fi/Documents/GitHub/ursa/exp/ursa_ws/src/tb/tb_main.cpp} vhdl {/home/fi/Documents/GitHub/ursa/exp/ursa_ws/src/tb/matrices.h /home/fi/Documents/GitHub/ursa/exp/ursa_ws/src/tb/matrices.cpp /home/fi/Documents/GitHub/ursa/exp/ursa_ws/src/tb/tb_main.cpp} sc {/home/fi/Documents/GitHub/ursa/exp/ursa_ws/src/tb/matrices.h /home/fi/Documents/GitHub/ursa/exp/ursa_ws/src/tb/matrices.cpp /home/fi/Documents/GitHub/ursa/exp/ursa_ws/src/tb/tb_main.cpp} cas {/home/fi/Documents/GitHub/ursa/exp/ursa_ws/src/tb/matrices.h /home/fi/Documents/GitHub/ursa/exp/ursa_ws/src/tb/matrices.cpp /home/fi/Documents/GitHub/ursa/exp/ursa_ws/src/tb/tb_main.cpp} c {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile {}
set ApsFile hls.aps
set AvePath ../../.
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynq/zynq}}}
set HPFPO 0
