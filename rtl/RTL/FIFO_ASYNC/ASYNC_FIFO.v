// Shahd Mahmoud
// Asynchronous FIFO Top Module

module ASYNC_FIFO #(
    parameter DATASIZE  = 8,
              ADDRSIZE  = 4,
              DEPTHSIZE = 16

)(
    input  wire                 W_CLK,
    input  wire                 W_RST_N,
    input  wire                 W_INC,
    input  wire [DATASIZE-1:0]  W_DATA,
   

    input  wire                 R_CLK,
    input  wire                 R_RST_N,
    input  wire                 R_INC,

    output wire                 W_FULL,
    output wire [DATASIZE-1:0]  R_DATA,
    output wire                 R_EMPTY
);

    // Internal wires connecting the blocks as shown in the architecture
    wire [ADDRSIZE-1:0] W_ADDR, R_ADDR;
    wire [ADDRSIZE:0]   W_ptr, R_ptr;
    wire [ADDRSIZE:0]   Wq2_rptr, Rq2_wptr;
    

    // 1. Write Control & Full Block 
    FIFO_WR #(
        .ADDR(ADDRSIZE)
    ) u_fifo_wr (
        .W_clk(W_CLK),
        .W_rst_n(W_RST_N),
        .W_inc(W_INC),
        .Wq2_ptr(Wq2_rptr),
        .W_ptr(W_ptr),
        .W_addr(W_ADDR),
        .W_full(W_FULL)
    );

    // 2. Read Control & Empty Block 
    FIFO_RD #(
        .ADDR(ADDRSIZE)
    ) u_fifo_rd (
        .R_clk(R_CLK),
        .R_rst_n(R_RST_N),
        .R_inc(R_INC),
        .Rq2_ptr(Rq2_wptr),
        .R_ptr(R_ptr),
        .R_addr(R_ADDR),
        .R_empty(R_EMPTY)
    );

    // 3. Write-to-Read Pointer Synchronizer 
    BIT_SYNC #(
        .NUM_STAGES(2),
        .BUS_WIDTH(ADDRSIZE+1)
    ) u_sync_w2r (
        .CLK(R_CLK),
        .RST(R_RST_N),
        .ASYNC(W_ptr),
        .SYNC(Rq2_wptr)
    );

    // 4. Read-to-Write Pointer Synchronizer 
    BIT_SYNC #(
        .NUM_STAGES(2),
        .BUS_WIDTH(ADDRSIZE+1)
    ) u_sync_r2w (
        .CLK(W_CLK),
        .RST(W_RST_N),
        .ASYNC(R_ptr),
        .SYNC(Wq2_rptr)
    );

    // 5. FIFO Memory (Dual-Port RAM)
    FIFO_MEM_CNTRL #(
        .ADDR(ADDRSIZE),
        .DATA(DATASIZE),
        .DEPTH(DEPTHSIZE)
    ) u_fifo_mem (
        .W_clk(W_CLK),
        .W_rst(W_RST_N),
        .W_inc(W_INC),
        .W_full(W_FULL),
        .W_addr(W_ADDR),
        .W_data(W_DATA),
        .R_addr(R_ADDR),
        .R_data(R_DATA)
    );

endmodule
