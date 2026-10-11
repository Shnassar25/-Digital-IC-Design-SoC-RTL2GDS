// Shahd Mahmoud
//CLK Gating Module

module CLK_GATING (
input  wire     CLK,        //clk from REF_CLK
input  wire     EN_CLK,     //from Sys_CTRL to enable the clock for ALU
output wire     CLK_GATED   //to ALU
);

// internal signals
reg     Latch_Out ;

// ANDING
assign  CLK_GATED = CLK && Latch_Out ;

// latch (Level Sensitive)
always @(CLK or EN_CLK)
 begin
  if(!CLK) // active low
   begin
    Latch_Out <= EN_CLK ;
   end
 end
/*
 TLATNCAX12M U0_TLATNCAX12M (
.E(EN_CLK),
.CK(CLK),
.ECK(CLK_GATED)
);*/

endmodule


