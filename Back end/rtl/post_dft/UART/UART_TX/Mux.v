// Shahd Mahmoud
// Mux Block
module Mux (
// Port Declaretion
input   wire         i_Clk_mux,
input   wire         i_RST_mux,
input   wire  [1:0]  i_mux_sel,
input   wire         i_IN_0_mux,
input   wire         i_IN_1_mux,
input   wire         i_IN_2_mux,
input   wire         i_IN_3_mux,

output  reg          o_OUT_mux
);

// internal signals 
reg  OUT;

// Sel_line 
localparam  [1:0]   Stop_mux   = 2'b01,
                    Start_mux  = 2'b00,
                    Ser_data   = 2'b10,
                    Parity_mux = 2'b11;


// OUTPUT
always @(posedge i_Clk_mux or negedge i_RST_mux ) 
begin
    if(!i_RST_mux) begin
        o_OUT_mux <= 1'b0;
    end 
    else begin
        o_OUT_mux <= OUT;
    end
end

//MUX Selction
always @(*) 
begin
    case(i_mux_sel) 
        Start_mux  : OUT  = i_IN_0_mux;
        Stop_mux   : OUT  = i_IN_1_mux;
        Ser_data   : OUT  = i_IN_2_mux;
        Parity_mux : OUT  = i_IN_3_mux;
    endcase
end      
endmodule