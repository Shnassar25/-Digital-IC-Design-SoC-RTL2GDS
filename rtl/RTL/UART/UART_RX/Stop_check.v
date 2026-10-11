// Shahd Mahmoud
// Stop Check module
module Stop_check(

    input  wire clk_stop,
    input  wire rst_stop,
    input  wire stop_chk_en_stop,
    input  wire sampled_bit_stop,

    output reg  stop_error
);

// Check for stop bit error
always @(posedge clk_stop or negedge rst_stop) begin
    if (!rst_stop) begin
        stop_error <= 1'b0;
    end 
    else if (stop_chk_en_stop) begin
        stop_error <= ~sampled_bit_stop; // 1 if sampled_bit is 0 (error), 0 if sampled_bit is 1 (valid)
    end
    else begin
        stop_error <= 1'b0; // Reset error when not checking
    end
end

endmodule