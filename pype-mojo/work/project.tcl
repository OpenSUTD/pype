set projDir "C:/Users/Joel/Desktop/pype-old/work/planAhead"
set projName "pype"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/Joel/Desktop/pype-old/work/verilog/mojo_top_0.v" "C:/Users/Joel/Desktop/pype-old/work/verilog/hvsync_generator_1.v" "C:/Users/Joel/Desktop/pype-old/work/verilog/tilesort_2.v" "C:/Users/Joel/Desktop/pype-old/work/verilog/bannerdraw_3.v" "C:/Users/Joel/Desktop/pype-old/work/verilog/selector_draw_4.v" "C:/Users/Joel/Desktop/pype-old/work/verilog/stateCounter_5.v" "C:/Users/Joel/Desktop/pype-old/work/verilog/shape0draw_6.v" "C:/Users/Joel/Desktop/pype-old/work/verilog/bannerpart1_7.v" "C:/Users/Joel/Desktop/pype-old/work/verilog/bannerpart2_8.v" "C:/Users/Joel/Desktop/pype-old/work/verilog/bannerword1_9.v" "C:/Users/Joel/Desktop/pype-old/work/verilog/bannerword2_10.v" "C:/Users/Joel/Desktop/pype-old/work/verilog/bannerword3_11.v" "C:/Users/Joel/Desktop/pype-old/work/verilog/bannerword4_12.v" "C:/Users/Joel/Desktop/pype-old/work/verilog/selector_base_13.v" "C:/Users/Joel/Desktop/pype-old/work/verilog/shape0base2_14.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "C:/Users/Joel/Desktop/pype-old/constraint/io_shield.ucf" "C:/Users/Joel/Desktop/pype-old/constraint/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
