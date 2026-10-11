// Shahd Mahmoud
// Parity Block
module Parity_Calc #(
    parameter WIDTH = 8
) (
// Port Declaretion
input    wire               i_Clk_p,
input    wire               i_RST_p,
input    wire               i_Data_Valid_p,
input    wire  [WIDTH-1:0]  i_DATA,
input    wire               i_PAR_TYP_p,
input    wire               i_PAR_En_p,
input    wire               i_Busy_p,

output   reg                o_Par_bit
);

//internal signals
reg   [WIDTH-1:0]  data;
// PARITY TYPE
localparam  EVEN_PARITY = 1'b0,
            ODD_PARITY  = 1'b1;


always @(posedge i_Clk_p or negedge i_RST_p ) 
begin
    if(!i_RST_p) begin
        data <= 'b0;
    end
    else if (i_Data_Valid_p && !i_Busy_p) begin
        data <= i_DATA;
    end
end

// OUTPUT
always @(*) 
begin
        o_Par_bit = 1'b0;
     if (i_PAR_En_p) 
    begin
        case(i_PAR_TYP_p) 
            EVEN_PARITY :  o_Par_bit = ^data ;
            ODD_PARITY  :  o_Par_bit = ~(^data);
        endcase
    end
end
    
endmodule