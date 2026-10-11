// UART_TOP Module
module UART_TOP #(
    parameter WIDTH        = 8,
              PRESCALE     = 6,
              START_BIT    = 1'b0,
              STOP_BIT     = 1'b1,
              PAR_TYP_EVEN = 1'b0,
              PAR_TYP_ODD  = 1'b1
)(
    input  wire                  i_CLK_TX,
    input  wire                  i_CLK_RX,
    input  wire                  i_RST,
    
    // TX Inputs
    input  wire                  i_DATA_Valid_TX,
    input  wire   [WIDTH-1:0]    i_DATA_TX,
    input  wire                  i_PAR_EN_TX,
    input  wire                  i_PAR_TYP_TX,
    
    // RX Inputs (External serial line, can be looped back from TX for testing)
    input  wire                  i_Serial_Data_RX,
    input  wire                  i_PAR_EN_RX,
    input  wire                  i_PAR_TYP_RX,
    input  wire   [PRESCALE-1:0] i_Prescale_RX,
    
    // TX Outputs
    output wire                  o_OUT_TX,
    output wire                  o_BUSY_TX,
    
    // RX Outputs
    output wire   [WIDTH-1:0]    o_P_Data_RX,
    output wire                  o_Data_Valid_RX,
    output wire                  o_Stop_Error_RX,
    output wire                  o_Parity_Error_RX
);

// Instantiate UART_TX
UART_TX #(
    .WIDTH(WIDTH),
    .START_BIT(START_BIT),
    .STOP_BIT(STOP_BIT)
) u_uart_tx (
    .i_CLK_TX(i_CLK_TX),
    .i_RST_TX(i_RST),
    .i_DATA_Valid_TX(i_DATA_Valid_TX),
    .i_DATA_TX(i_DATA_TX),
    .i_PAR_EN_TX(i_PAR_EN_TX),
    .i_PAR_TYP_TX(i_PAR_TYP_TX),
    
    .o_OUT_TX(o_OUT_TX),
    .o_BUSY_TX(o_BUSY_TX)
);

// Instantiate UART_RX
UART_RX #(
    .WIDTH(WIDTH),
    .PRESCALE(PRESCALE),
    .PAR_TYP_EVEN(PAR_TYP_EVEN),
    .PAR_TYP_ODD(PAR_TYP_ODD)
) u_uart_rx (
    .i_Clk_RX(i_CLK_RX),
    .i_RST_RX(i_RST),
    .i_Serial_Data_RX(i_Serial_Data_RX), 
    .i_PAR_EN_RX(i_PAR_EN_RX),
    .i_PAR_TYP_RX(i_PAR_TYP_RX),
    .i_Prescale_RX(i_Prescale_RX),

    .o_P_Data_RX(o_P_Data_RX),
    .o_Data_Valid_RX(o_Data_Valid_RX),
    .o_Stop_Error_RX(o_Stop_Error_RX),
    .o_Parity_Error_RX(o_Parity_Error_RX)
);

endmodule