// Shahd Mahmoud
// Data Sampling module
module Data_Sampling #(
    parameter PRESCALE = 6
)(
    input  wire                 clk_ds,
    input  wire                 rst_ds,
    input  wire                 Data_sample_en,
    input  wire [PRESCALE-1:0]  edge_cont_ds,
    input  wire [PRESCALE-1:0]  prescale_ds,
    input  wire                 data_in_ds,

    output reg                  sampled_bit_ds 
);

// Internal signals
reg sample1_ds;
reg sample2_ds;
reg sample3_ds;
wire majority_ds;

// Majority voting logic
assign majority_ds = (sample1_ds & sample2_ds) | (sample1_ds & sample3_ds) | (sample2_ds & sample3_ds);

// Sampling process & Output update (Single always block)
    always @(posedge clk_ds or negedge rst_ds) begin
        if (!rst_ds) begin
            sampled_bit_ds <= 1'b1;
            sample1_ds     <= 1'b1;
            sample2_ds     <= 1'b1;
            sample3_ds     <= 1'b1;
        end 
        else begin
            if (Data_sample_en) begin
                // 1. Sample before the middle edge
                if (edge_cont_ds == (prescale_ds >> 1) - 1) begin
                    sample1_ds <= data_in_ds;
                // 2. Sample at the middle edge
                end else if (edge_cont_ds == (prescale_ds >> 1)) begin
                    sample2_ds <= data_in_ds;
                // 3. Sample after the middle edge
                end else if (edge_cont_ds == (prescale_ds >> 1) + 1) begin
                    sample3_ds <= data_in_ds;
                // 4. Update sampled bit based on majority voting right at (middle + 2)
                end else if (edge_cont_ds == (prescale_ds >> 1) + 2) begin
                    sampled_bit_ds <= majority_ds;
                end
            end
        end    
    end

endmodule