transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/misar/Desktop/trainVHDL/classWork/reg_4bit/reg_4bit.vhd}
vcom -93 -work work {/home/misar/Desktop/trainVHDL/classWork/reg_4bit/gate.vhd}
vcom -93 -work work {/home/misar/Desktop/trainVHDL/classWork/reg_4bit/dlatchme.vhd}

vcom -93 -work work {/home/misar/Desktop/trainVHDL/classWork/reg_4bit/reg_4bit_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  reg_4bit_tb

add wave *
view structure
view signals
run -all
