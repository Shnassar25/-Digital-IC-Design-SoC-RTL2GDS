// Shahd Mahmoud
// FSM module 
module FSM_RX #(
    parameter PRESCALE  = 6,
              DATA_BITS = 8,
              cont_bits = $clog2(DATA_BITS)
)(
    input  wire                 clk_fsm,
    input  wire                 rst_fsm,
    input  wire                 data_in_fsm,
    input  wire [cont_bits:0]   bit_cont_fsm,
    input  wire                 parity_en_fsm,
    input  wire [PRESCALE-1:0]  edge_cont_fsm,
    input  wire [PRESCALE-1:0]  prescale_fsm,
    input  wire                 parity_err_fsm,
    input  wire                 stop_err_fsm,
    input  wire                 start_glitch_fsm,

    output reg                  parity_check_en_fsm,
    output reg                  start_check_en_fsm,
    output reg                  stop_check_en_fsm,
    output reg                  deserializer_en_fsm,
    output reg                  data_valid_fsm,
    output reg                  Enable_sampling_fsm,
    output reg                  Data_sample_en_fsm
);

// State encoding with gray code
localparam IDLE   = 3'b000,
           START  = 3'b001,
           DATA   = 3'b011,
           PARITY = 3'b010,
           STOP   = 3'b110;

// State register
reg [2:0] current_state_fsm, next_state_fsm;

// State transition logic
always @(posedge clk_fsm or negedge rst_fsm) begin
    if (!rst_fsm) begin
        current_state_fsm <= IDLE;
    end else begin
        current_state_fsm <= next_state_fsm;
    end
end

// Next state logic
always @(*) begin
    case (current_state_fsm)
        IDLE: begin
            if (!data_in_fsm) begin // Wait for start bit (logic low)
                next_state_fsm = START;
            end else begin
                next_state_fsm = IDLE;
            end
        end

        START: begin
            if (bit_cont_fsm == 4'b0 && edge_cont_fsm == (prescale_fsm - 6'b1)) begin // Start bit received
                if (start_glitch_fsm) begin
                    next_state_fsm = IDLE;
                end else begin
                    next_state_fsm = DATA;
                end
            end else begin
                next_state_fsm = START;
            end
        end

        DATA: begin
            if (bit_cont_fsm == DATA_BITS && edge_cont_fsm == (prescale_fsm - 6'b1)) begin // All data bits received
                if (parity_en_fsm) begin
                    next_state_fsm = PARITY;
                end else begin
                    next_state_fsm = STOP;
                end
            end else begin
                next_state_fsm = DATA;
            end
        end

        PARITY: begin
            if ( edge_cont_fsm == (prescale_fsm - 1)) begin // Parity bit received
                if (!parity_err_fsm) begin
                    next_state_fsm = STOP;
                end else begin
                    next_state_fsm = IDLE; // Parity error, go back to IDLE
                end
            end else begin
                next_state_fsm = PARITY;
            end
        end

        STOP: begin
            if (edge_cont_fsm == (prescale_fsm - 1)) begin // Stop bit received
                next_state_fsm = IDLE;
            end else begin
                next_state_fsm = STOP;
            end 
        end

        default: next_state_fsm = IDLE;
    endcase
end

// Output logic based on the current state
always @(*) begin
    // Default values to prevent latches
    parity_check_en_fsm  = 1'b0;
    start_check_en_fsm   = 1'b0;
    stop_check_en_fsm    = 1'b0;
    deserializer_en_fsm  = 1'b0;
    Enable_sampling_fsm  = 1'b0;
    Data_sample_en_fsm   = 1'b0;

    case (current_state_fsm)
        IDLE: begin
            // No specific actions in IDLE state
        end

        START: begin
            Enable_sampling_fsm = 1'b1; 
            Data_sample_en_fsm  = 1'b1; 
            if (edge_cont_fsm >= (prescale_fsm >> 1) + 3) begin
                start_check_en_fsm = 1'b1;
            end else begin
                start_check_en_fsm = 1'b0;
            end
        end

        DATA: begin
            deserializer_en_fsm = 1'b1; 
            Enable_sampling_fsm = 1'b1; 
            Data_sample_en_fsm  = 1'b1; 
        end

        PARITY: begin
             if (edge_cont_fsm >= (prescale_fsm >> 1) + 3) begin
                parity_check_en_fsm = 1'b1;
            end else begin
                parity_check_en_fsm = 1'b0;
            end
            Enable_sampling_fsm = 1'b1; 
            Data_sample_en_fsm  = 1'b1; 
        end

        STOP: begin
            Data_sample_en_fsm  = 1'b1; 
            Enable_sampling_fsm = 1'b1; 
            if (edge_cont_fsm >= (prescale_fsm >> 1) + 3) begin
                stop_check_en_fsm = 1'b1;
            end else begin
                stop_check_en_fsm = 1'b0;
            end
        end

        default: begin
        end
    endcase
end

wire data_valid_comb;

// 1. Combinational evaluation while still in STOP state
assign data_valid_comb = (current_state_fsm == STOP) && 
                         (edge_cont_fsm == (prescale_fsm - 1)) && 
                         (!stop_err_fsm) && 
                         (!parity_en_fsm || !parity_err_fsm);

// Data-valid signal generation
always @(posedge clk_fsm or negedge rst_fsm) begin
    if (!rst_fsm) begin
        data_valid_fsm <= 1'b0;
    end else begin
        data_valid_fsm <= data_valid_comb;
    end
end
endmodule