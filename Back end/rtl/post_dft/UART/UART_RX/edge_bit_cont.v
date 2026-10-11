//Shahd Mahmoud
// edge bit counter module
module edge_bit_cont #(
    parameter PRESCALE  = 6,
              DATA_BITS = 8,
              cont_bits = $clog2(DATA_BITS) 
)(
    input  wire                 clk_cont,
    input  wire                 rst_cont,
    input  wire                 Enable_sampling_cont,
    input  wire [PRESCALE-1:0]  prescale_cont,
    input  wire                 parity_en_cont,

    output reg  [cont_bits:0]   bit_cont,
    output reg  [PRESCALE-1:0]  edge_cont
);

// Edge counter logic
always @(posedge clk_cont or negedge rst_cont) begin
    if (!rst_cont) begin
        edge_cont <= {PRESCALE{1'b0}};
    end else if (Enable_sampling_cont) begin
        if (edge_cont == prescale_cont - 1) begin
            edge_cont <= {PRESCALE{1'b0}}; // Reset edge counter after reaching prescale value
        end else begin
            edge_cont <= edge_cont + 1; // Increment edge counter
        end
    end else begin
        edge_cont <= {PRESCALE{1'b0}}; // Reset edge counter when sampling is disabled
    end
end

// Bit counter logic
always @(posedge clk_cont or negedge rst_cont) begin
    if (!rst_cont) begin
        bit_cont <= {(cont_bits+1){1'b0}};
    end else if (Enable_sampling_cont && edge_cont == prescale_cont - 1) begin
       if(parity_en_cont) begin
            if (bit_cont == DATA_BITS + 2) begin
                bit_cont <= {(cont_bits+1){1'b0}}; // Reset bit counter after receiving all bits (start, data, parity, stop)
            end else begin
                bit_cont <= bit_cont + 1; // Increment bit counter
            end
        end else begin
            if (bit_cont == DATA_BITS + 1) begin
                bit_cont <= {(cont_bits+1){1'b0}}; // Reset bit counter after receiving all bits (start, data, stop)
            end else begin
                bit_cont <= bit_cont + 1; // Increment bit counter
            end
        end
    end else if (!Enable_sampling_cont) begin
        bit_cont <= {(cont_bits+1){1'b0}}; // Reset bit counter when sampling is disabled
    end
end

endmodule