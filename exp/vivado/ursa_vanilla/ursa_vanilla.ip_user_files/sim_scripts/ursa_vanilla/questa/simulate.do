onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib ursa_vanilla_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {ursa_vanilla.udo}

run 1000ns

quit -force
