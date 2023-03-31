transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/elec374-Lab {C:/altera/13.0sp1/elec374-Lab/BoothsAlgorithm.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/elec374-Lab {C:/altera/13.0sp1/elec374-Lab/BCell.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/elec374-Lab {C:/altera/13.0sp1/elec374-Lab/ThirtyTwoBitAdder.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/elec374-Lab {C:/altera/13.0sp1/elec374-Lab/SixteenBitAdder.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/elec374-Lab {C:/altera/13.0sp1/elec374-Lab/FourBitAdder.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/elec374-Lab {C:/altera/13.0sp1/elec374-Lab/carrylookaheadlogic.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/elec374-Lab {C:/altera/13.0sp1/elec374-Lab/register.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/elec374-Lab {C:/altera/13.0sp1/elec374-Lab/DataPath.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/elec374-Lab {C:/altera/13.0sp1/elec374-Lab/MDR.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/elec374-Lab {C:/altera/13.0sp1/elec374-Lab/ALU.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/elec374-Lab {C:/altera/13.0sp1/elec374-Lab/Bus.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/elec374-Lab {C:/altera/13.0sp1/elec374-Lab/ZMux.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/elec374-Lab {C:/altera/13.0sp1/elec374-Lab/lookaheadadder.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/elec374-Lab {C:/altera/13.0sp1/elec374-Lab/NonRestoringDivision.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/elec374-Lab {C:/altera/13.0sp1/elec374-Lab/pc.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/elec374-Lab {C:/altera/13.0sp1/elec374-Lab/se.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/elec374-Lab {C:/altera/13.0sp1/elec374-Lab/reg0.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/elec374-Lab {C:/altera/13.0sp1/elec374-Lab/conff.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/elec374-Lab {C:/altera/13.0sp1/elec374-Lab/InPort.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/elec374-Lab {C:/altera/13.0sp1/elec374-Lab/OutPort.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/elec374-Lab {C:/altera/13.0sp1/elec374-Lab/ControlUnit.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/elec374-Lab {C:/altera/13.0sp1/elec374-Lab/Seven_Seg_Display_out.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/elec374-Lab {C:/altera/13.0sp1/elec374-Lab/clockgen.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/elec374-Lab {C:/altera/13.0sp1/elec374-Lab/ram.v}

vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/elec374-Lab {C:/altera/13.0sp1/elec374-Lab/CU_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  CU_tb

add wave *
view structure
view signals
run 100 ns
