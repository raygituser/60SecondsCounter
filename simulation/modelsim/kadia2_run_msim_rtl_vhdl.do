transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {F:/COMPSYS/kadai2/kadai2.vhd}
vcom -93 -work work {F:/COMPSYS/kadai2/clock_down.vhd}
vcom -93 -work work {F:/COMPSYS/kadai2/4bit_counter.vhd}
vcom -93 -work work {F:/COMPSYS/kadai2/leddec.vhd}
vcom -93 -work work {F:/COMPSYS/kadai2/4bit_counter_2digit.vhd}

