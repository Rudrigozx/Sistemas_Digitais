onerror {exit -code 1}
vlib work
vlog -work work LatchD_Nor.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.LatchD_Nor_vlg_vec_tst -voptargs="+acc"
vcd file -direction LatchD_Nor.msim.vcd
vcd add -internal LatchD_Nor_vlg_vec_tst/*
vcd add -internal LatchD_Nor_vlg_vec_tst/i1/*
run -all
quit -f
