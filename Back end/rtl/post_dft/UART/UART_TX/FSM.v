// Shahd Mahmoud
// FSM_TX Block
module FSM (
// Port Declaretion
input   wire          i_Clk_fsm,
input   wire          i_RST_fsm,
input   wire          i_PAR_EN_fsm,
input   wire          i_Data_Valid_fsm,
input   wire          i_Ser_Done_fsm,

output  reg           o_Ser_EN_fsm,
output  reg           o_Busy_fsm,
output  reg   [1:0]   o_Mux_Sel_fsm
);

//internal signals
reg   [2:0]   Current_state , Next_state;
reg           busy;

// States using Gray code
localparam  [2:0]   IDLE   = 3'b000,
                    START  = 3'b001,
                    DATA   = 3'b011,
                    PARITY = 3'b010,
                    STOP   = 3'b110;

// Sel_line 
localparam  [1:0]   Stop_mux   = 2'b01,
                    Start_mux  = 2'b00,
                    Ser_data   = 2'b10,
                    Parity_mux = 2'b11;

// State Transiton
always @(posedge i_Clk_fsm or negedge i_RST_fsm ) 
begin
    if(!i_RST_fsm) begin
        Current_state <= IDLE; 
    end
    else begin
        Current_state <= Next_state;
    end
end 

// Next State
always @(*)
 begin
case (Current_state)
    IDLE  : begin
        if(i_Data_Valid_fsm) begin
            Next_state = START;
        end
        else begin
            Next_state = IDLE;
        end
    end
    
    START : begin
         Next_state = DATA;
    end

    DATA  : begin
        if(i_Ser_Done_fsm) begin
            //check parity enable
           if(i_PAR_EN_fsm) begin
             Next_state = PARITY;
           end
           else begin
             Next_state = STOP;
           end 
        end
        else begin
            Next_state = DATA;
        end
    end

    PARITY : begin
        Next_state = STOP;
    end

    STOP   : begin
        Next_state = IDLE;
    end

    default: begin
        Next_state = IDLE;
    end
endcase  
end

//Output
always @(*) 
begin
// Default values to prevent latches
   o_Ser_EN_fsm   = 1'b0 ;
   o_Mux_Sel_fsm  = Stop_mux; // Default to stop/idle mux selection
   busy           = 1'b0 ;
   case (Current_state)

      IDLE  : begin
        o_Mux_Sel_fsm = Stop_mux; // Stop/Idle bit selection
      end
     
      START : begin
        busy          = 1'b1;
        o_Mux_Sel_fsm = Start_mux; // Start bit selection
      end

      DATA  : begin
        busy          = 1'b1;
        o_Mux_Sel_fsm = Ser_data; // Serializer data output selection
        o_Ser_EN_fsm  = 1'b1;
      end

      PARITY : begin
        busy          = 1'b1;
        o_Mux_Sel_fsm = Parity_mux; // Parity bit selection
      end

      STOP   : begin
        busy          = 1'b1;
        o_Mux_Sel_fsm = Stop_mux; // Stop bit selection
      end

    default : begin
        o_Mux_Sel_fsm = Stop_mux;
    end
   endcase
end

// Registration out
always @(posedge i_Clk_fsm or negedge i_RST_fsm) 
begin
    if(!i_RST_fsm) begin
        o_Busy_fsm <= 1'b0;
    end
    else begin
       o_Busy_fsm  <= busy;
    end
end
    
endmodule