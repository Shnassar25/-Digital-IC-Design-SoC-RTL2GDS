// Shahd Mahmoud
// Deserializer block
module Deserializer #(
    parameter WIDTH    = 8,
              PRESCALE = 6
)(
    input  wire                 Clk_d,
    input  wire                 RST_d,
    input  wire                 Serial_Data_d,
    input  wire                 deser_en_d,
    input  wire [PRESCALE-1:0]  edge_cont_ds,
    input  wire [PRESCALE-1:0]  prescale_ds,

    output wire [WIDTH-1:0]     P_Data_d
);
// Internal Signals
reg [WIDTH-1:0] shift_reg;

// Sequential Logic
always @(posedge Clk_d or negedge RST_d) begin
    if (!RST_d) begin
        shift_reg <= {WIDTH{1'b0}};
    end else if (deser_en_d) begin
    if (edge_cont_ds == (prescale_ds - 1)) begin
            shift_reg <= {Serial_Data_d, shift_reg[WIDTH-1:1]}; // LSB First
        end
        end
end

// Output Assignment
assign P_Data_d = shift_reg;


endmodule