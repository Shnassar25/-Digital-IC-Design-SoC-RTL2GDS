vlib work
vmap work

# Compile Standard Cell Library
vlog -sv /home/ICer/ASS/Final_System/GLS/std_cells/tsmc13_m.v

# Compile Gate-Level Netlist
vlog -sv /home/ICer/ASS/Final_System/syn/netlists/SYS_TOP.v

# Compile Testbench
vlog -sv SYS_TOP_TB.v

# Start Simulation
vsim -sdfmax /SYS_TOP_TB/SYS_TOP_tb=/home/ICer/ASS/Final_System/syn/sdf/SYS_TOP.sdf -sdfnoerror work.SYS_TOP_TB

# Load waveform 
do wave.do

# Run
run -all
