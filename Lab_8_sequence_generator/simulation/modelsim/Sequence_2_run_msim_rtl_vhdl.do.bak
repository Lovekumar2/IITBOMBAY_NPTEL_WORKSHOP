transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Lab/Lab_8_sequence_generator/Gates.vhdl}
vcom -93 -work work {C:/Lab/Lab_8_sequence_generator/DUT.vhdl}
vcom -93 -work work {C:/Lab/Lab_8_sequence_generator/Flipflops.vhd}
vcom -93 -work work {C:/Lab/Lab_8_sequence_generator/Sequence_2.vhd}

vcom -93 -work work {C:/Lab/Lab_8_sequence_generator/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
