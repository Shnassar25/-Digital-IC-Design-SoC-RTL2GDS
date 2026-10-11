//shahd mahmoud 
//FIFO W_ptr & full W_addr  Block
module FIFO_WR #(
    parameter ADDR = 4
)(
// port declaration
input   wire              W_clk,
input   wire              W_rst_n,
input   wire              W_inc,
input   wire  [ADDR:0]    Wq2_ptr, //from read memory

output  reg   [ADDR:0]    W_ptr,
output  wire  [ADDR-1:0]  W_addr,
output  reg               W_full

);

// Internal signals
    reg  [ADDR:0] reg_W_bin;       // Binary counter
    wire [ADDR:0] wire_W_bin_next;
    wire [ADDR:0] wire_W_gray;      // Gray code for next state
    wire          wire_W_full;

// 1. Write Address to Memory 
    assign W_addr = reg_W_bin[ADDR-1:0];

// 2. Binary Counter Increment Logic
    assign wire_W_bin_next = reg_W_bin + (W_inc & ~W_full);

// 3. Binary to Gray Code Conversion
    assign wire_W_gray = (wire_W_bin_next >> 1) ^ wire_W_bin_next;

// 4. full Memory
    assign wire_W_full = ((wire_W_gray[ADDR]!=Wq2_ptr[ADDR])&&
                         (wire_W_gray[ADDR-1]!=Wq2_ptr[ADDR-1])&&
                         (wire_W_gray[ADDR-2:0]==Wq2_ptr[ADDR-2:0]));

always @(posedge W_clk or negedge  W_rst_n) begin
   if(!W_rst_n)  begin
    reg_W_bin <= {(ADDR+1){1'b0}};
    W_ptr     <= {(ADDR+1){1'b0}};
    W_full    <= 1'b0;
   end
   else begin
    reg_W_bin <= wire_W_bin_next;
    W_ptr     <= wire_W_gray;
    W_full    <= wire_W_full;
   end
end


endmodule