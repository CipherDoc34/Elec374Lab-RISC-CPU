transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/elec374/Elec374Lab-RISC-CPU {C:/elec374/Elec374Lab-RISC-CPU/BoothsAlgorithm.v}
vlog -vlog01compat -work work +incdir+C:/elec374/Elec374Lab-RISC-CPU {C:/elec374/Elec374Lab-RISC-CPU/register.v}
vlog -vlog01compat -work work +incdir+C:/elec374/Elec374Lab-RISC-CPU {C:/elec374/Elec374Lab-RISC-CPU/DataPath.v}
vlog -vlog01compat -work work +incdir+C:/elec374/Elec374Lab-RISC-CPU {C:/elec374/Elec374Lab-RISC-CPU/MDR.v}
vlog -vlog01compat -work work +incdir+C:/elec374/Elec374Lab-RISC-CPU {C:/elec374/Elec374Lab-RISC-CPU/ALU.v}
vlog -vlog01compat -work work +incdir+C:/elec374/Elec374Lab-RISC-CPU {C:/elec374/Elec374Lab-RISC-CPU/Bus.v}
vlog -vlog01compat -work work +incdir+C:/elec374/Elec374Lab-RISC-CPU {C:/elec374/Elec374Lab-RISC-CPU/ZMux.v}

vlog -vlog01compat -work work +incdir+C:/elec374/Elec374Lab-RISC-CPU {C:/elec374/Elec374Lab-RISC-CPU/datapath_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiii_ver -L rtl_work -L work -voptargs="+acc"  datapath_tb

add wave *
view structure
view signals
run 500 ns
