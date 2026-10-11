// Shahd Mahmoud
// UART RX Top module
module UART_RX #(
    parameter WIDTH        = 8,
              PRESCALE     = 6,
              PAR_TYP_EVEN = 1'b0,
              PAR_TYP_ODD  = 1'b1
)(
    input  wire                i_Clk_RX,
    input  wire                i_RST_RX,
    input  wire                i_Serial_Data_RX,
    input  wire                i_PAR_EN_RX,
    input  wire                i_PAR_TYP_RX,
    input  wire [PRESCALE-1:0] i_Prescale_RX,

    output wire  [WIDTH-1:0]   o_P_Data_RX,
    output wire                o_Data_Valid_RX,
    output wire                o_Stop_Error_RX,
    output wire                o_Parity_Error_RX
 // output wire                o_Start_Glitch_RX
);

// Internal Signals
wire                   data_sampled_en;
wire [PRESCALE-1:0]    edge_cont;
wire [$clog2(WIDTH):0] bit_cont;
wire                   enable_cont;

wire                   stop_chk_en;
wire                   parity_chk_en;
wire                   start_chk_en;
wire                   start_error;
wire                   sampled_bit;
wire                   deser_en;

// Instantiate the edge_bit_cont module
edge_bit_cont #(
    .PRESCALE(PRESCALE),
    .DATA_BITS(WIDTH)
) edge_bit_counter (
    .clk_cont(i_Clk_RX),
    .rst_cont(i_RST_RX),
    .Enable_sampling_cont(enable_cont),
    .prescale_cont(i_Prescale_RX),
    .parity_en_cont(i_PAR_EN_RX),

    .bit_cont(bit_cont),
    .edge_cont(edge_cont)
);

// Instantiate the FSM_RX module
FSM_RX #(
    .PRESCALE(PRESCALE),
    .DATA_BITS(WIDTH)
) fsm_rx (
    .clk_fsm(i_Clk_RX),
    .rst_fsm(i_RST_RX),
    .data_in_fsm(i_Serial_Data_RX),
    .bit_cont_fsm(bit_cont),
    .parity_en_fsm(i_PAR_EN_RX),
    .edge_cont_fsm(edge_cont),
    .parity_err_fsm(o_Parity_Error_RX),
    .stop_err_fsm(o_Stop_Error_RX),
    .start_glitch_fsm(start_error),
    .prescale_fsm(i_Prescale_RX),

    .parity_check_en_fsm(parity_chk_en),
    .start_check_en_fsm(start_chk_en),
    .stop_check_en_fsm(stop_chk_en),
    .deserializer_en_fsm(deser_en),
    .data_valid_fsm(o_Data_Valid_RX),
    .Enable_sampling_fsm(enable_cont),
    .Data_sample_en_fsm(data_sampled_en)
);

// Instantiate the Deserializer module
Deserializer #(
    .WIDTH(WIDTH),
    .PRESCALE(PRESCALE)
) deserializer (
    .Clk_d(i_Clk_RX),
    .RST_d(i_RST_RX),
    .Serial_Data_d(sampled_bit),
    .deser_en_d(deser_en),
    .edge_cont_ds(edge_cont),
    .prescale_ds(i_Prescale_RX),

    .P_Data_d(o_P_Data_RX)
);

// Instantiate the Start_check module
Start_check start_checker (
    .clk_start(i_Clk_RX),
    .rst_start(i_RST_RX),
    .start_chk_en_start(start_chk_en),
    .sampled_bit_start(sampled_bit),

    .start_error(start_error)
);

// Instantiate the Stop_check module
Stop_check stop_checker (
    .clk_stop(i_Clk_RX),
    .rst_stop(i_RST_RX),
    .stop_chk_en_stop(stop_chk_en),
    .sampled_bit_stop(sampled_bit),

    .stop_error(o_Stop_Error_RX)// framing_error
);

// Instantiate the parity_check module
parity_check #(
    .PAR_TYP_EVEN(PAR_TYP_EVEN),
    .PAR_TYP_ODD(PAR_TYP_ODD),
    .WIDTH(WIDTH)
) parity_checker (
    .clk_parity(i_Clk_RX),
    .rst_parity(i_RST_RX),
    .PAR_TYP(i_PAR_TYP_RX),
    .parity_chk_en_parity(parity_chk_en),
    .sampled_bit_parity(sampled_bit),
    .data_in_parity(o_P_Data_RX),

    .parity_error(o_Parity_Error_RX)
);

// Instantiate the Data_sampling module
Data_Sampling #(
    .PRESCALE(PRESCALE)
) data_sampler (
    .clk_ds(i_Clk_RX),
    .rst_ds(i_RST_RX),
    .Data_sample_en(data_sampled_en),
    .prescale_ds(i_Prescale_RX),
    .data_in_ds(i_Serial_Data_RX),
    .edge_cont_ds(edge_cont),

    .sampled_bit_ds(sampled_bit)
);
endmodule
