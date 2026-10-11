// Shahd Mahmoud
// Parity check module
module parity_check #(
    parameter PAR_TYP_EVEN = 1'b0,
              PAR_TYP_ODD  = 1'b1,
              WIDTH        = 8
)(
    input  wire             clk_parity,
    input  wire             rst_parity,
    input  wire             PAR_TYP,
    input  wire             parity_chk_en_parity,
    input  wire             sampled_bit_parity,
    input  wire [WIDTH-1:0] data_in_parity,
    
    output reg              parity_error
);
// Internal signals
reg parity_bit;

// Calculate the parity bit
always @(*) begin
    if (PAR_TYP == PAR_TYP_ODD) begin
        parity_bit = ~(^data_in_parity); // Odd parity: XNOR of data bits
    end else begin
        parity_bit = ^data_in_parity; // Even parity: XOR of data bits
    end
end

// Check for parity error
always @(posedge clk_parity or negedge rst_parity) begin
    if (!rst_parity) begin
        parity_error <= 1'b0;
    end else if (parity_chk_en_parity) begin
        if (sampled_bit_parity != parity_bit) begin
            parity_error <= 1'b1; // Parity error detected
        end else begin
            parity_error <= 1'b0; // No parity error
        end
    end
    else begin
        parity_error <= 1'b0; // Reset parity error when not checking
    end
end

endmodule