transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/misar/Desktop/trainVHDL/classWork/add/add.vhd}
vcom -93 -work work {/home/misar/Desktop/trainVHDL/classWork/add/portOu.vhd}
vcom -93 -work work {/home/misar/Desktop/trainVHDL/classWork/add/portEt.vhd}
vcom -93 -work work {/home/misar/Desktop/trainVHDL/classWork/add/portXor.vhd}

vcom -93 -work work {/home/misar/Desktop/trainVHDL/classWork/add/add_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  add_tb

add wave *
view structure
view signals
run -all
