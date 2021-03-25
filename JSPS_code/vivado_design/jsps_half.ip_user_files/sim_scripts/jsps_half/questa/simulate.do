onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib jsps_half_opt

do {wave.do}

view wave
view structure
view signals

do {jsps_half.udo}

run -all

quit -force
