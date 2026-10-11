// Shahd Mahmoud
// Bit / Multi-Flop Synchronizer (BIT_SYNC)

module BIT_SYNC #( 
    parameter NUM_STAGES = 2,
    parameter BUS_WIDTH  = 4 
)(
    input  wire                 CLK,
    input  wire                 RST,    // Active-low asynchronous reset
    input  wire [BUS_WIDTH-1:0] ASYNC,

    output wire [BUS_WIDTH-1:0] SYNC
);

    // 2D Array to hold stages for multi-bit bus synchronization
    reg  [BUS_WIDTH-1:0] sync_reg [NUM_STAGES-1:0];
    integer i;

    // Connect output to the final flop stage
    assign SYNC = sync_reg[NUM_STAGES-1];

    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            for (i = 0; i < NUM_STAGES; i = i + 1) begin
                sync_reg[i] <= {BUS_WIDTH{1'b0}};
            end
        end else begin
            // First stage samples the asynchronous bus
            sync_reg[0] <= ASYNC;
            
            // Subsequent stages shift the bus values
            for (i = 1; i < NUM_STAGES; i = i + 1) begin
                sync_reg[i] <= sync_reg[i-1];
            end
        end
    end

endmodule