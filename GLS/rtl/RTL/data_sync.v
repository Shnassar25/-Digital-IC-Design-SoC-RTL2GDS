//Shahd Mahmoud
//Data syncrounizer

module Data_SYNC # ( 
   parameter NUM_STAGES = 2 ,
   parameter BUS_WIDTH = 8 
)(
input    wire                      CLK,
input    wire                      RST,
input    wire    [BUS_WIDTH-1:0]   ASYNC,
input    wire                      BUS_EN,

output   reg                       ENABLE_PULSE,
output   reg     [BUS_WIDTH-1:0]   SYNC_BUS
);

// Internal Signals
reg  [NUM_STAGES-1:0] sync_enable_reg;
reg                   pulse_flop;
wire                  sync_enable_out;
wire                  pulse_gen;
//reg   [NUM_STAGES-1:0] sync_reg [BUS_WIDTH-1:0] ;

integer  I ;

assign sync_enable_out = sync_enable_reg[NUM_STAGES-1];
assign pulse_gen       = sync_enable_out && (~pulse_flop);					 
//----------------- Multi flop synchronizer --------------

always @(posedge CLK or negedge RST)
 begin
  if(!RST)      // active low
   begin
      sync_enable_reg <= {NUM_STAGES{1'b0}};
   end
  else 
   begin
     sync_enable_reg <= {sync_enable_reg [NUM_STAGES-2:0],BUS_EN};   // {SYNC,sync_reg} <= {sync_reg[NUM_STAGES-1:0],ASYNC};
   end  
 end

//----------------- Pulse Generator --------------
always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            pulse_flop <= 1'b0;
        end else begin
            pulse_flop <= sync_enable_out;
        end
    end

//----------------- Mux & Register for Unsync_bus --------------
always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            SYNC_BUS <= {BUS_WIDTH{1'b0}};
        end 
        else if(pulse_gen) begin
            SYNC_BUS <= ASYNC;
        end
    end

//----------------- Output Enable Pulse --------------
always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            ENABLE_PULSE <= 1'b0;
        end else begin
            ENABLE_PULSE <= pulse_gen;
        end
    end



endmodule