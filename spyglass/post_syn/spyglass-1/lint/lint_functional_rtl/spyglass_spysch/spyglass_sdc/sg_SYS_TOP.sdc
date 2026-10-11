###################################################################

# Created by write_sdc on Sun Sep 20 02:40:26 2026

###################################################################
set sdc_version 2.0

sg_set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
sg_set_operating_conditions -max scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -max_library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -min scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -min_library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c
sg_set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [sg_get_ports RX_IN]
sg_set_load -pin_load 0.1 [sg_get_ports TX_OUT]
sg_set_load -pin_load 0.1 [sg_get_ports PAR_ERR]
sg_set_load -pin_load 0.1 [sg_get_ports STOP_ERR]
sg_create_clock [sg_get_ports REF_CLK]  -period 20  -waveform {0 10}
sg_set_clock_latency 0  [sg_get_clocks REF_CLK]
sg_set_clock_uncertainty -setup 0.2  [sg_get_clocks REF_CLK]
sg_set_clock_uncertainty -hold 0.1  [sg_get_clocks REF_CLK]
sg_set_clock_transition -max -rise 0.05 [sg_get_clocks REF_CLK]
sg_set_clock_transition -min -rise 0.05 [sg_get_clocks REF_CLK]
sg_set_clock_transition -max -fall 0.05 [sg_get_clocks REF_CLK]
sg_set_clock_transition -min -fall 0.05 [sg_get_clocks REF_CLK]
sg_create_clock [sg_get_ports UART_CLK]  -period 271.29  -waveform {0 135.645}
sg_set_clock_latency 0  [sg_get_clocks UART_CLK]
sg_set_clock_uncertainty -setup 0.2  [sg_get_clocks UART_CLK]
sg_set_clock_uncertainty -hold 0.1  [sg_get_clocks UART_CLK]
sg_set_clock_transition -max -rise 0.05 [sg_get_clocks UART_CLK]
sg_set_clock_transition -min -rise 0.05 [sg_get_clocks UART_CLK]
sg_set_clock_transition -max -fall 0.05 [sg_get_clocks UART_CLK]
sg_set_clock_transition -min -fall 0.05 [sg_get_clocks UART_CLK]
sg_create_generated_clock [sg_get_pins CLKG/CLK_GATED]  -name ALU_CLK  -source [sg_get_ports REF_CLK]  -master_clock REF_CLK  -divide_by 1  -add
sg_set_clock_uncertainty -setup 0.2  [sg_get_clocks ALU_CLK]
sg_set_clock_uncertainty -hold 0.1  [sg_get_clocks ALU_CLK]
sg_create_generated_clock [sg_get_pins CLK_DIV_RX/o_div_clk]  -name UART_RX_CLK  -source [sg_get_ports UART_CLK]  -master_clock UART_CLK  -divide_by 1  -add
sg_set_clock_uncertainty -setup 0.2  [sg_get_clocks UART_RX_CLK]
sg_set_clock_uncertainty -hold 0.1  [sg_get_clocks UART_RX_CLK]
sg_create_generated_clock [sg_get_pins CLK_DIV_TX/o_div_clk]  -name UART_TX_CLK  -source [sg_get_ports UART_CLK]  -master_clock UART_CLK  -divide_by 32  -add
sg_set_clock_uncertainty -setup 0.2  [sg_get_clocks UART_TX_CLK]
sg_set_clock_uncertainty -hold 0.1  [sg_get_clocks UART_TX_CLK]
sg_set_input_delay -clock UART_RX_CLK  54.258  [sg_get_ports RX_IN]
sg_set_output_delay -clock UART_TX_CLK  54.258  [sg_get_ports TX_OUT]
sg_set_output_delay -clock UART_RX_CLK  54.258  [sg_get_ports PAR_ERR]
sg_set_output_delay -clock UART_RX_CLK  54.258  [sg_get_ports STOP_ERR]
sg_set_clock_groups -asynchronous -name REF_CLK_1 -group [list [sg_get_clocks REF_CLK] [sg_get_clocks ALU_CLK]] -group [list [sg_get_clocks UART_CLK] [sg_get_clocks UART_TX_CLK] [sg_get_clocks UART_RX_CLK]]
