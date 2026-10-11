//shahd mahmoud
module CLK_DIV_MUX #(
    parameter WIDTH = 8
)(
input    wire     [5:0]              IN,
output   reg      [WIDTH-1:0]        OUT
);

localparam PRESCALE_1 = 6'b100000 ,
           PRESCALE_2 = 6'b010000 ,
           PRESCALE_4 = 6'b001000 ,
           PRESCALE_8 = 6'b000100 ;

always @(*)
  begin
	case(IN) 
	PRESCALE_1 : begin
				OUT = 'd1 ;
				end
	PRESCALE_2 : begin
				OUT = 'd2 ;
				end	
	PRESCALE_4 : begin
				OUT = 'd4 ;
				end	
	PRESCALE_8 : begin
				OUT = 'd8 ;
				end
	default   : begin
				OUT = 'd1 ;
				end					
	endcase
  end	
  
  
  
  
endmodule