transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Lab/Lab_4Fulladder_using_3to8decoder/Gates.vhdl}
vcom -93 -work work {C:/Lab/Lab_4Fulladder_using_3to8decoder/DUT.vhdl}
vcom -93 -work work {C:/Lab/Lab_4Fulladder_using_3to8decoder/2to4decoder.vhd}
vcom -93 -work work {C:/Lab/Lab_4Fulladder_using_3to8decoder/decoder_3to8.vhd}
vcom -93 -work work {C:/Lab/Lab_4Fulladder_using_3to8decoder/Full_adder_1.vhd}

vcom -93 -work work {C:/Lab/Lab_4Fulladder_using_3to8decoder/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
