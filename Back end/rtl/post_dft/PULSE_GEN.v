// Shahd Mahmoud
//PULSE GEN Module

module PULSE_GEN(
input    wire    clk,        //from UART_TX
input    wire    rst,        //from RST_SYNC_2
input    wire    lvl_sig,    //from UART_TX

output   wire    pulse_sig   // to ASYNC_FIFO
);

// Internal Signals
reg     lvl_sig_ff;
reg     pulse_flop;

// Pulse Generator
assign pulse_sig = lvl_sig_ff && (~pulse_flop);

// Flip-flop to store the previous state of lvl_sig
always @(posedge clk or negedge rst) begin
    if (!rst) begin
        lvl_sig_ff <= 1'b0;
        pulse_flop <= 1'b0;
    end else begin
        lvl_sig_ff <= lvl_sig;
        pulse_flop <= lvl_sig_ff;
    end
end
endmodule
