//Shahd Mahmoud 
// UART_TX
module UART_TX #(
    parameter  WIDTH     = 8,
               START_BIT = 1'b0,
               STOP_BIT  = 1'b1
) (
// Port Declaretion
input   wire                  i_CLK_TX,
input   wire                  i_RST_TX,
input   wire                  i_DATA_Valid_TX,
input   wire   [WIDTH-1:0]    i_DATA_TX,
input   wire                  i_PAR_EN_TX,
input   wire                  i_PAR_TYP_TX,

output  wire                   o_OUT_TX,
output  wire                   o_BUSY_TX
);

//Internal Signals
wire         SER_DONE_TX;
wire         SER_EN_TX;
wire         PARITY_BIT_TX;
wire         SER_DATA_TX;
wire [1:0]   MUS_SEL_TX;

// Instantiation
Serializer #(.WIDTH(WIDTH)) 
SER (
    .i_Clk_s(i_CLK_TX),
    .i_RST_s(i_RST_TX),
    .i_Data_Valid_s(i_DATA_Valid_TX),
    .i_P_Data_s(i_DATA_TX),
    .i_Busy_s(o_BUSY_TX),
    .i_Ser_En_s(SER_EN_TX),
    .o_Ser_DATA_s(SER_DATA_TX),
    .o_Ser_Done_s(SER_DONE_TX)
);

FSM fsm_tx(
    .i_Clk_fsm(i_CLK_TX),
    .i_RST_fsm(i_RST_TX),
    .i_PAR_EN_fsm(i_PAR_EN_TX),
    .i_Data_Valid_fsm(i_DATA_Valid_TX),
    .i_Ser_Done_fsm(SER_DONE_TX),
    .o_Ser_EN_fsm(SER_EN_TX),
    .o_Busy_fsm(o_BUSY_TX),
    .o_Mux_Sel_fsm(MUS_SEL_TX)
);

Parity_Calc #(.WIDTH(WIDTH))
PER_TX(
    .i_Clk_p(i_CLK_TX),
    .i_RST_p(i_RST_TX),
    .i_Data_Valid_p(i_DATA_Valid_TX),
    .i_DATA(i_DATA_TX),
    .i_PAR_TYP_p(i_PAR_TYP_TX),
    .i_PAR_En_p(i_PAR_EN_TX),
    .i_Busy_p(o_BUSY_TX),
    .o_Par_bit(PARITY_BIT_TX)
);

Mux mux_tx(
    .i_Clk_mux(i_CLK_TX),
    .i_RST_mux(i_RST_TX),
    .i_mux_sel(MUS_SEL_TX),
    .i_IN_0_mux(START_BIT),
    .i_IN_1_mux(STOP_BIT),
    .i_IN_2_mux(SER_DATA_TX),
    .i_IN_3_mux(PARITY_BIT_TX),
    .o_OUT_mux(o_OUT_TX)
);

endmodule
