###################################################################

# Created by write_sdc on Wed Oct 7 01:18:13 2026

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -max_library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -min scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -min_library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c
set_wire_load_model -name tsmc13_wl30 -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports RX_IN]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports TEST_MODE]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports SE]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {SI[4]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {SI[3]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {SI[2]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {SI[1]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {SI[0]}]
set_load -pin_load 0.1 [get_ports {SO[4]}]
set_load -pin_load 0.1 [get_ports {SO[3]}]
set_load -pin_load 0.1 [get_ports {SO[2]}]
set_load -pin_load 0.1 [get_ports {SO[1]}]
set_load -pin_load 0.1 [get_ports {SO[0]}]
set_load -pin_load 0.1 [get_ports TX_OUT]
set_load -pin_load 0.1 [get_ports PAR_ERR]
set_load -pin_load 0.1 [get_ports STOP_ERR]
set_case_analysis 1 [get_ports TEST_MODE]
create_clock [get_ports REF_CLK]  -period 20  -waveform {0 10}
set_clock_latency 0  [get_clocks REF_CLK]
set_clock_uncertainty -setup 0.2  [get_clocks REF_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks REF_CLK]
set_clock_transition -min -fall 0.05 [get_clocks REF_CLK]
set_clock_transition -max -fall 0.05 [get_clocks REF_CLK]
set_clock_transition -min -rise 0.05 [get_clocks REF_CLK]
set_clock_transition -max -rise 0.05 [get_clocks REF_CLK]
create_clock [get_ports UART_CLK]  -period 271.29  -waveform {0 135.645}
set_clock_latency 0  [get_clocks UART_CLK]
set_clock_uncertainty -setup 0.2  [get_clocks UART_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks UART_CLK]
set_clock_transition -min -fall 0.05 [get_clocks UART_CLK]
set_clock_transition -max -fall 0.05 [get_clocks UART_CLK]
set_clock_transition -min -rise 0.05 [get_clocks UART_CLK]
set_clock_transition -max -rise 0.05 [get_clocks UART_CLK]
create_generated_clock [get_pins U0_TLATNCAX12M/ECK]  -name ALU_CLK  -source [get_ports REF_CLK]  -master_clock REF_CLK  -divide_by 1  -add
set_clock_uncertainty -setup 0.2  [get_clocks ALU_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks ALU_CLK]
create_generated_clock [get_pins CLK_DIV_RX/o_div_clk]  -name UART_RX_CLK  -source [get_ports UART_CLK]  -master_clock UART_CLK  -divide_by 1  -add
set_clock_uncertainty -setup 0.2  [get_clocks UART_RX_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks UART_RX_CLK]
create_generated_clock [get_pins CLK_DIV_TX/o_div_clk]  -name UART_TX_CLK  -source [get_ports UART_CLK]  -master_clock UART_CLK  -divide_by 32  -add
set_clock_uncertainty -setup 0.2  [get_clocks UART_TX_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks UART_TX_CLK]
create_clock [get_ports SCAN_CLK]  -name scan_clk  -period 1000  -waveform {0 500}
set_clock_latency 0  [get_clocks scan_clk]
set_clock_uncertainty -setup 0.025  [get_clocks scan_clk]
set_clock_uncertainty -hold 0.01  [get_clocks scan_clk]
set_clock_transition -min -fall 0.05 [get_clocks scan_clk]
set_clock_transition -max -fall 0.05 [get_clocks scan_clk]
set_clock_transition -min -rise 0.05 [get_clocks scan_clk]
set_clock_transition -max -rise 0.05 [get_clocks scan_clk]
group_path -name INOUT  -from [list [get_ports REF_CLK] [get_ports UART_CLK] [get_ports RST] [get_ports RX_IN] [get_ports SCAN_CLK] [get_ports SCAN_RST] [get_ports TEST_MODE] [get_ports SE] [get_ports {SI[4]}] [get_ports {SI[3]}] [get_ports {SI[2]}] [get_ports {SI[1]}] [get_ports {SI[0]}]]  -to [list [get_ports {SO[4]}] [get_ports {SO[3]}] [get_ports {SO[2]}] [get_ports {SO[1]}] [get_ports {SO[0]}] [get_ports TX_OUT] [get_ports PAR_ERR] [get_ports STOP_ERR]]
group_path -name INREG  -from [list [get_ports REF_CLK] [get_ports UART_CLK] [get_ports RST] [get_ports RX_IN] [get_ports SCAN_CLK] [get_ports SCAN_RST] [get_ports TEST_MODE] [get_ports SE] [get_ports {SI[4]}] [get_ports {SI[3]}] [get_ports {SI[2]}] [get_ports {SI[1]}] [get_ports {SI[0]}]]
group_path -name REGOUT  -to [list [get_ports {SO[4]}] [get_ports {SO[3]}] [get_ports {SO[2]}] [get_ports {SO[1]}] [get_ports {SO[0]}] [get_ports TX_OUT] [get_ports PAR_ERR] [get_ports STOP_ERR]]
set_input_delay -clock UART_RX_CLK  54.258  [get_ports RX_IN]
set_input_delay -clock scan_clk  200  [get_ports TEST_MODE]
set_input_delay -clock scan_clk  200  [get_ports SE]
set_input_delay -clock scan_clk  200  [get_ports {SI[4]}]
set_input_delay -clock scan_clk  200  [get_ports {SI[3]}]
set_input_delay -clock scan_clk  200  [get_ports {SI[2]}]
set_input_delay -clock scan_clk  200  [get_ports {SI[1]}]
set_input_delay -clock scan_clk  200  [get_ports {SI[0]}]
set_output_delay -clock scan_clk  200  [get_ports {SO[4]}]
set_output_delay -clock scan_clk  200  [get_ports {SO[3]}]
set_output_delay -clock scan_clk  200  [get_ports {SO[2]}]
set_output_delay -clock scan_clk  200  [get_ports {SO[1]}]
set_output_delay -clock scan_clk  200  [get_ports {SO[0]}]
set_output_delay -clock UART_TX_CLK  54.258  [get_ports TX_OUT]
set_output_delay -clock UART_RX_CLK  54.258  [get_ports PAR_ERR]
set_output_delay -clock UART_RX_CLK  54.258  [get_ports STOP_ERR]
set_clock_groups -logically_exclusive -name REF_CLK_2 -group [list [get_clocks REF_CLK] [get_clocks ALU_CLK]] -group [get_clocks scan_clk]
set_clock_groups -logically_exclusive -name UART_CLK_1 -group [list [get_clocks UART_CLK] [get_clocks UART_TX_CLK] [get_clocks UART_RX_CLK]] -group [get_clocks scan_clk]
set_clock_groups -asynchronous -name REF_CLK_1 -group [list [get_clocks REF_CLK] [get_clocks ALU_CLK]] -group [list [get_clocks UART_CLK] [get_clocks UART_TX_CLK] [get_clocks UART_RX_CLK]]

set_case_analysis 0 TEST_MODE
set_case_analysis 0 SE
