// Shahd Mahmoud
// RST Double-Flop Synchronizer (RST_SYNC)
module RST_SYNC #( 
    parameter NUM_STAGES = 2  // Number of synchronization stages
)(
    input  wire    CLK_Rsync,
    input  wire    RST_Rsync, // Active-low asynchronous reset

    output wire    SYNC_RST
);

    // Internal shift register for synchronization stages
reg [NUM_STAGES-1:0] sync_reg ;

assign SYNC_RST = sync_reg[NUM_STAGES-1];

always @(posedge CLK_Rsync or negedge RST_Rsync) begin
    if (!RST_Rsync) 
     begin
        sync_reg <= {NUM_STAGES{1'b0}}; // Asynchronous assertion: instantly clear the shift register
     end 
    else 
     begin
        sync_reg <= {sync_reg[NUM_STAGES-2:0],1'b1};  // Synchronous de-assertion: shift '1's through the chain on each clock edge
     end
    end
endmodule