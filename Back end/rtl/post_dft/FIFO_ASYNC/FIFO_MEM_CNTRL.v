//shahd mahmoud 
//Memory Buffer
module FIFO_MEM_CNTRL #(
    parameter ADDR  = 4,
              DATA  = 8,
              DEPTH = 16
) (
// port declaration
input   wire                W_clk,
input   wire                W_rst,
input   wire                W_inc,
input   wire                W_full,
input   wire   [ADDR-1:0]   W_addr, 
input   wire   [ADDR-1:0]   R_addr,
input   wire   [DATA-1:0]   W_data,

output  wire    [DATA-1:0]   R_data
);

//internal signals
wire  W_CLK_EN;
integer i;
//internal memory 2d
reg [DATA-1:0] MEM [0:(1<<ADDR)-1];

//enable clk
assign W_CLK_EN = (W_inc & (~W_full));


//write data
always @(posedge W_clk or negedge W_rst) begin
    if(!W_rst) begin
        for(i=0;i<DEPTH;i=i+1) begin
          MEM[i] <= 0;
        end
    end
    else if(W_CLK_EN)begin
        MEM[W_addr] <= W_data;
    end  
end
// read data 
assign R_data = MEM[R_addr];

endmodule