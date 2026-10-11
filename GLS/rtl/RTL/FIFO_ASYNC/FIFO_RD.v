//shahd mahmoud 
//FIFO r_ptr & Empty W_addr  Block
module FIFO_RD #(
    parameter ADDR = 4
)(
// port declaration
input   wire              R_clk,
input   wire              R_rst_n,
input   wire              R_inc,
input   wire  [ADDR:0]    Rq2_ptr, //from write memory

output  reg   [ADDR:0]    R_ptr,
output  wire  [ADDR-1:0]  R_addr,
output  reg               R_empty

);

// Internal signals
    reg  [ADDR:0] reg_R_bin;       // Binary counter
    wire [ADDR:0] wire_R_bin_next;
    wire [ADDR:0] wire_R_gray;      // Gray code for next state
    wire          wire_R_empty;

// 1. Write Address to Memory 
    assign R_addr = reg_R_bin[ADDR-1:0];

// 2. Binary Counter Increment Logic
    assign wire_R_bin_next = reg_R_bin + (R_inc & ~R_empty);

// 3. Binary to Gray Code Conversion
    assign wire_R_gray = (wire_R_bin_next >> 1) ^ wire_R_bin_next;

// 4. full Memory
    assign wire_R_empty = (wire_R_gray==Rq2_ptr);


always @(posedge R_clk or negedge  R_rst_n) begin
   if(!R_rst_n)  begin
    reg_R_bin <= {(ADDR+1){1'b0}};
    R_ptr     <= {(ADDR+1){1'b0}};
    R_empty   <= 1'b1;
   end
   else begin
    reg_R_bin <= wire_R_bin_next;
    R_ptr     <= wire_R_gray;
    R_empty   <= wire_R_empty;
   end
end



endmodule
