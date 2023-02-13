onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /datapath_tb/PCout
add wave -noupdate /datapath_tb/ZLOout
add wave -noupdate /datapath_tb/MDRout
add wave -noupdate /datapath_tb/R0out
add wave -noupdate /datapath_tb/R1out
add wave -noupdate /datapath_tb/R2out
add wave -noupdate /datapath_tb/R3out
add wave -noupdate /datapath_tb/R4out
add wave -noupdate /datapath_tb/R5out
add wave -noupdate /datapath_tb/R6out
add wave -noupdate /datapath_tb/R7out
add wave -noupdate /datapath_tb/MARin
add wave -noupdate /datapath_tb/PCin
add wave -noupdate /datapath_tb/MDRin
add wave -noupdate /datapath_tb/IRin
add wave -noupdate /datapath_tb/Yin
add wave -noupdate /datapath_tb/IncPC
add wave -noupdate /datapath_tb/Read
add wave -noupdate /datapath_tb/R0in
add wave -noupdate /datapath_tb/R1in
add wave -noupdate /datapath_tb/R2in
add wave -noupdate /datapath_tb/R3in
add wave -noupdate /datapath_tb/R4in
add wave -noupdate /datapath_tb/R5in
add wave -noupdate /datapath_tb/R6in
add wave -noupdate /datapath_tb/R7in
add wave -noupdate /datapath_tb/clock
add wave -noupdate /datapath_tb/ALUIn
add wave -noupdate /datapath_tb/ZMuxEnable
add wave -noupdate /datapath_tb/ZSelect
add wave -noupdate /datapath_tb/ZMuxOut
add wave -noupdate -radix decimal /datapath_tb/Mdatain
add wave -noupdate /datapath_tb/out
add wave -noupdate /datapath_tb/alucontrol
add wave -noupdate -radix decimal /datapath_tb/Present_state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3356607 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 134
configure wave -valuecolwidth 202
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
WaveRestoreZoom {3292121 ps} {3569832 ps}
