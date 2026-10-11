// Shahd Mahmoud
// Start Check module
module Start_check(

    input  wire clk_start,
    input  wire rst_start,
    input  wire start_chk_en_start,
    input  wire sampled_bit_start,
    
    output reg  start_error
);
// Check for start bit error
always @(posedge clk_start or negedge rst_start) begin
    if (!rst_start) begin
        start_error <= 1'b0;
    end else if (start_chk_en_start) 
    begin
        start_error <= sampled_bit_start; // Start bit error detected
    end
end

endmodule