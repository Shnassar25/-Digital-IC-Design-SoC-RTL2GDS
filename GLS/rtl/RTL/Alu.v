//shahd mahmoud
// Design for ALU
module Alu_16_bit #(
   parameter OPER_WIDTH    = 8,
             OUT_WIDTH     = OPER_WIDTH*2,
             ALU_FUN_WIDTH = OPER_WIDTH/2
)(
//port decleration
input wire                      CLK_alu,      //clk from CLK_GATE
input wire                      RST_alu,      //reset form RST_SYNC
input wire                      EN_alu,       //enable from Sys_CTRL
input wire [OPER_WIDTH-1:0]     A,            //first input  from REG0
input wire [OPER_WIDTH-1:0]     B,            //second input from REG1
input wire [ALU_FUN_WIDTH-1:0]  ALU_FUN,      //select any operation accure

output reg [OUT_WIDTH-1:0]      ALU_OUT,      //Alu output from Sys_CTRL
output reg                      OUT_VALID    //High when output is valid from Sys_CTRL
);
//internal signals
reg [OUT_WIDTH-1:0] reg_OUT;
reg                 reg_Valid;

//combinational block
always @(*) begin
    //intial values
    reg_OUT = {OUT_WIDTH{1'b0}};
    reg_Valid = 1'b0;

    if(EN_alu)
     begin
      reg_Valid = 1'b1;  //active the output valid
      case(ALU_FUN)
      //arithmetic operations
       4'b0000: begin
                 reg_OUT = A + B;
                end
       4'b0001: begin
                 reg_OUT = A - B;
                end
       4'b0010: begin
                 reg_OUT = A * B;
                end
       4'b0011: begin
         if(B!=0) begin
          reg_OUT = A / B;
         end
         else begin
          reg_OUT = {OUT_WIDTH{1'b0}};
         end
       end
       //logical operations
       4'b0100: begin
                 reg_OUT = A & B;
                end
       4'b0101: begin
                 reg_OUT = A|B;
                end
       4'b0110: begin
                 reg_OUT = ~(A & B);
                end
       4'b0111: begin
                 reg_OUT = ~(A|B);
                end
       4'b1000: begin
                 reg_OUT = A ^ B;
                end
       4'b1001: begin
                 reg_OUT = ~(A^B);
                end
      //compare
       4'b1010: begin
        if (A==B) 
        begin
            reg_OUT = 'd1; 
        end
        else 
        begin
          reg_OUT = 'd0; 
        end
       end
       4'b1011: begin
        if (A>B) 
        begin
             reg_OUT ='d2;
        end
        else  
        begin
            reg_OUT = 'd0;   
        end
       end
       4'b1100: begin
        if (A<B) 
        begin
             reg_OUT ='d3;
          end
           else begin
             reg_OUT = 'd0;
           end
           
       end
       // Shift
       4'b1101: begin
                 reg_OUT = A>>1;
                end
       4'b1110: begin
                 reg_OUT = A<<1;
                end
       //case16(NOP)
       default: begin
        reg_OUT = {OUT_WIDTH{1'b0}};
       end
     endcase
end
end

always @(posedge CLK_alu or negedge RST_alu) begin
  if(!RST_alu) 
  begin
    ALU_OUT <= {OUT_WIDTH{1'b0}};
    OUT_VALID <= 1'b0;
  end
  else
   begin
    ALU_OUT   <= reg_OUT;
    OUT_VALID <= reg_Valid;
  end
end
endmodule