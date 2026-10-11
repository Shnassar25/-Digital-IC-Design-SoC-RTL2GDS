onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /SYS_TOP_TB/SYS_TOP_tb/uart/i_CLK_TX
add wave -noupdate /SYS_TOP_TB/SYS_TOP_tb/uart/u_uart_rx/i_Clk_RX
add wave -noupdate /SYS_TOP_TB/SYS_TOP_tb/uart/i_RST
add wave -noupdate -expand -group RX /SYS_TOP_TB/SYS_TOP_tb/uart/i_CLK_RX
add wave -noupdate -expand -group RX -color Maroon /SYS_TOP_TB/SYS_TOP_tb/uart/i_Serial_Data_RX
add wave -noupdate -expand -group RX -color Salmon -radix hexadecimal /SYS_TOP_TB/SYS_TOP_tb/uart/o_P_Data_RX
add wave -noupdate -expand -group IN(FSM) -radix hexadecimal /SYS_TOP_TB/SYS_TOP_tb/D_SYNC/SYNC_BUS
add wave -noupdate -expand -group IN(FSM) /SYS_TOP_TB/SYS_TOP_tb/D_SYNC/sync_enable_out
add wave -noupdate -expand -group IN(FSM) /SYS_TOP_TB/SYS_TOP_tb/D_SYNC/BUS_EN
add wave -noupdate -expand -group FSM -color Cyan /SYS_TOP_TB/SYS_TOP_tb/control/current_state
add wave -noupdate -expand -group FSM -color {Orange Red} /SYS_TOP_TB/SYS_TOP_tb/control/CLKG_EN
add wave -noupdate -expand -group FSM /SYS_TOP_TB/SYS_TOP_tb/control/byte_counter
add wave -noupdate -expand -group FSM /SYS_TOP_TB/SYS_TOP_tb/control/RD_EN
add wave -noupdate -expand -group FSM /SYS_TOP_TB/SYS_TOP_tb/control/WR_EN
add wave -noupdate -expand -group FSM -color {Medium Slate Blue} -radix hexadecimal /SYS_TOP_TB/SYS_TOP_tb/control/WR_DATA_S
add wave -noupdate -expand -group FSM -color Khaki -radix hexadecimal /SYS_TOP_TB/SYS_TOP_tb/control/RD_DATA
add wave -noupdate -expand -group FSM -color {Steel Blue} /SYS_TOP_TB/SYS_TOP_tb/control/ADDR_S
add wave -noupdate -expand -group FSM /SYS_TOP_TB/SYS_TOP_tb/control/CLKG_EN
add wave -noupdate -expand -group ALU /SYS_TOP_TB/SYS_TOP_tb/alu/CLK_alu
add wave -noupdate -expand -group ALU -color Magenta -radix unsigned /SYS_TOP_TB/SYS_TOP_tb/alu/A
add wave -noupdate -expand -group ALU -color Plum -radix unsigned /SYS_TOP_TB/SYS_TOP_tb/alu/B
add wave -noupdate -expand -group ALU /SYS_TOP_TB/SYS_TOP_tb/control/ALU_FUN
add wave -noupdate -expand -group ALU -color Brown /SYS_TOP_TB/SYS_TOP_tb/control/ALU_EN
add wave -noupdate -expand -group ALU -color Pink -radix unsigned /SYS_TOP_TB/SYS_TOP_tb/control/reg_alu_out
add wave -noupdate -expand -group ALU /SYS_TOP_TB/SYS_TOP_tb/control/ALU_OUT_Valid
add wave -noupdate -expand -group FIFO /SYS_TOP_TB/SYS_TOP_tb/control/TX_P_DATA
add wave -noupdate -expand -group FIFO /SYS_TOP_TB/SYS_TOP_tb/control/FIFO_FULL
add wave -noupdate -expand -group FIFO /SYS_TOP_TB/SYS_TOP_tb/control/TX_D_VLD
add wave -noupdate -expand -group OUT(TX) -color Salmon -radix hexadecimal /SYS_TOP_TB/SYS_TOP_tb/UART_TX_IN_SYNC
add wave -noupdate -color {Medium Violet Red} /SYS_TOP_TB/SYS_TOP_tb/uart/u_uart_tx/o_OUT_TX
add wave -noupdate /SYS_TOP_TB/SYS_TOP_tb/uart/u_uart_tx/o_BUSY_TX
add wave -noupdate -radix hexadecimal /SYS_TOP_TB/SYS_TOP_tb/control/RD_DATA
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3673186485 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {2859214121 ps} {5292305780 ps}
