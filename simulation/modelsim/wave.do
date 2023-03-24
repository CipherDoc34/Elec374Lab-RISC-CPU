onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /CU_tb/clk
add wave -noupdate /CU_tb/reset
add wave -noupdate /CU_tb/DUT/CPU/PCout
add wave -noupdate /CU_tb/DUT/CPU/PCin
add wave -noupdate /CU_tb/DUT/CPU/IncPC
add wave -noupdate /CU_tb/DUT/CPU/IRin
add wave -noupdate /CU_tb/DUT/CPU/Zin
add wave -noupdate /CU_tb/DUT/CPU/ZLOout
add wave -noupdate /CU_tb/DUT/CPU/ZHIout
add wave -noupdate /CU_tb/DUT/CPU/CSignout
add wave -noupdate /CU_tb/DUT/CPU/aluControl
add wave -noupdate /CU_tb/DUT/CPU/RAMenable
add wave -noupdate /CU_tb/DUT/CPU/MDRout
add wave -noupdate /CU_tb/DUT/CPU/MARin
add wave -noupdate /CU_tb/DUT/CPU/MDRin
add wave -noupdate /CU_tb/DUT/CPU/Gra
add wave -noupdate /CU_tb/DUT/CPU/Grb
add wave -noupdate /CU_tb/DUT/CPU/Grc
add wave -noupdate /CU_tb/DUT/CPU/Rin
add wave -noupdate /CU_tb/DUT/CPU/Rout
add wave -noupdate /CU_tb/DUT/CPU/BAout
add wave -noupdate /CU_tb/DUT/CPU/read
add wave -noupdate /CU_tb/DUT/CPU/write
add wave -noupdate /CU_tb/DUT/CPU/clear
add wave -noupdate /CU_tb/DUT/CPU/conin
add wave -noupdate /CU_tb/DUT/CPU/ZMuxEnable
add wave -noupdate /CU_tb/DUT/CPU/ZSelect
add wave -noupdate /CU_tb/DUT/CPU/ZMuxOut
add wave -noupdate /CU_tb/DUT/CPU/OutPortenable
add wave -noupdate /CU_tb/DUT/CPU/PortInout
add wave -noupdate /CU_tb/DUT/CPU/R15inC
add wave -noupdate /CU_tb/DUT/CPU/Yin
add wave -noupdate /CU_tb/DUT/CPU/HIout
add wave -noupdate /CU_tb/DUT/CPU/HIin
add wave -noupdate /CU_tb/DUT/CPU/LOout
add wave -noupdate /CU_tb/DUT/CPU/LOin
add wave -noupdate /CU_tb/DUT/CPU/IR
add wave -noupdate /CU_tb/DUT/CPU/conOut
add wave -noupdate /CU_tb/DUT/CPU/clk
add wave -noupdate /CU_tb/DUT/CPU/reset
add wave -noupdate /CU_tb/DUT/CPU/present_state
add wave -noupdate /CU_tb/DUT/CPU/next_state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3219613 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 168
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {4666294 ps} {5522827 ps}
