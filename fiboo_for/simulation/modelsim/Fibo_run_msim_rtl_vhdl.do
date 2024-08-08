transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Lab/Lab_6_Fibonacci Detector/Fibo.vhd}
vlib v_jtag
vmap v_jtag v_jtag
vcom -93 -work v_jtag {C:/Lab/Lab_6_Fibonacci Detector/Scan_Chain_Files/v_jtag/synthesis/v_jtag.vhd}
vcom -93 -work work {C:/Lab/Lab_6_Fibonacci Detector/Scan_Chain_Files/TopLevel.vhdl}
vcom -93 -work work {C:/Lab/Lab_6_Fibonacci Detector/DUT.vhdl}

vcom -93 -work work {C:/Lab/Lab_6_Fibonacci Detector/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -L v_jtag -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
