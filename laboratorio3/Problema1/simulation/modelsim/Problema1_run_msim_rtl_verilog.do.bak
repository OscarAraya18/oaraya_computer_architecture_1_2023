transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1 {C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1/moduloXOR.sv}
vlog -sv -work work +incdir+C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1 {C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1/moduloSuma.sv}
vlog -sv -work work +incdir+C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1 {C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1/moduloShiftR.sv}
vlog -sv -work work +incdir+C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1 {C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1/moduloShiftL.sv}
vlog -sv -work work +incdir+C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1 {C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1/moduloResta.sv}
vlog -sv -work work +incdir+C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1 {C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1/moduloOR.sv}
vlog -sv -work work +incdir+C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1 {C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1/moduloMultiplicacion.sv}
vlog -sv -work work +incdir+C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1 {C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1/moduloModulo.sv}
vlog -sv -work work +incdir+C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1 {C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1/moduloDivision.sv}
vlog -sv -work work +incdir+C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1 {C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1/moduloControlOperaciones.sv}
vlog -sv -work work +incdir+C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1 {C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1/moduloAND.sv}
vlog -sv -work work +incdir+C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1 {C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1/ALU.sv}
vlog -sv -work work +incdir+C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1 {C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1/Problema1.sv}
vlog -sv -work work +incdir+C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1 {C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1/moduloDisplayResultado.sv}
vlog -sv -work work +incdir+C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1 {C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1/moduloDisplayBanderas.sv}

vlog -sv -work work +incdir+C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1 {C:/Users/osaro/OneDrive/Escritorio/oaraya_computer_architecture_1_2023/laboratorio3/Problema1/TestbenchProblema1.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
