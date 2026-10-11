//shahd mahmoud 
//Fsm for system control
module SYS_CTRL # (
    parameter WIDTH = 8,
              ADDR  = 4   
) (
    input wire               CLK,
    input wire               RST_N,

    // ALU Interface INPUTS
    input wire [2*WIDTH-1:0] ALU_OUT,
    input wire               ALU_OUT_Valid,

    // RegFile Interface INPUTS
    input wire [WIDTH-1:0]   RD_DATA,
    input wire               RD_DATA_VLD,

    // FIFO Interface INPUTS
    input wire               FIFO_FULL,

    // UART / Data Synchronizer Interface
    input wire [WIDTH-1:0]   RX_DATA,
    input wire               RX_VLD,

    // ALU Interface OUTPUTS
    output reg [ADDR-1:0]    ALU_FUN,
    output reg               ALU_EN,
    output reg               CLKG_EN,

    // RegFile Interface OUTPUTS
    output reg               WR_EN,
    output reg               RD_EN,
    output reg [ADDR-1:0]    ADDR_S,
    output reg [WIDTH-1:0]   WR_DATA_S,
    
    // FIFO Interface OUTPUTS
    output reg [WIDTH-1:0]   TX_P_DATA,
    output reg               TX_D_VLD,
    
    // CLK_DIV OUTPUTS
    output wire              CLK_DIV_EN
);

//=========================== Local Parameters ===============================

    // Command Opcodes based on the protocol diagram
    localparam [WIDTH-1:0] CMD_WR_REG  = 8'hAA,
                           CMD_RD_REG  = 8'hBB,
                           CMD_ALU_OP  = 8'hCC,
                           CMD_ALU_NOP = 8'hDD;

    // FSM States Definition
    localparam [ADDR-1:0] IDLE           = 4'b0000,
                          WR_ADDR        = 4'b0001,
                          WR_DATA        = 4'b0010,
                          RD_ADDR        = 4'b0011,
                          Send_RD_DAT    = 4'b0100,
                          ALU_OP_A       = 4'b0101,
                          ALU_OP_B       = 4'b0110,
                          ALU_FUN_ST     = 4'b0111,
                          EXECUTE_ALU    = 4'b1000,
                          PUSH_FIFO      = 4'b1001;

    // Address Definitions for ALU Operands
    localparam [ADDR-1:0] ADDR_A = 4'b0000, // Address for ALU Operand A
                          ADDR_B = 4'b0001; // Address for ALU Operand B

 //=========================== Internal Registers ============================

    reg [ADDR-1:0]    current_state; 
    reg [ADDR-1:0]    next_state;

    reg [2*WIDTH-1:0] reg_alu_out;    // store the ALU output when OUT_Valid is high
    reg               reg_alu_saved;  // flag to indicate that the ALU output is valid

    reg [WIDTH-1:0]   reg_addr;       // flag to store the address received for read/write operations

    reg [1:0]         byte_counter;   // to count the number of bytes pushed to FIFO


//=========================== Output Assignments ============================
    assign CLK_DIV_EN = 1'b1; // Always enable clock divider
  

//=========================== Sequential Logic ==============================
    // State register
    always @(posedge CLK or negedge RST_N) begin
        if (!RST_N) begin
            current_state <= IDLE;
        end else begin
            current_state <= next_state;
        end
    end

// Register to store the address for write operations
    always @(posedge CLK or negedge RST_N) begin
        if (!RST_N) begin
            reg_addr  <=  'b0;
        end 
        else begin
            // Save the address for write operations when valid
            if (RX_VLD && (current_state == WR_ADDR || current_state == RD_ADDR)) begin
                reg_addr <= RX_DATA[ADDR-1:0]; // Save the received address for write operation
                end
        end
    end

// Register to store the ALU output when valid
    always @(posedge CLK or negedge RST_N) begin
        if (!RST_N) begin
            reg_alu_out <=  'b0;
            reg_alu_saved <= 1'b0;
        end 
        else begin
            // Store the ALU output when valid
            if (ALU_OUT_Valid && current_state == EXECUTE_ALU) begin
                reg_alu_out   <= ALU_OUT; // Store the ALU output when valid
                reg_alu_saved <= 1'b1;
            end
            else if (current_state == IDLE) begin
                reg_alu_saved <= 1'b0; // Reset the flag when returning to IDLE state
            end
        end
    end

// Byte counter sequential logic (Cleaned to satisfy STARC Lint rules)
    always @(posedge CLK or negedge RST_N) begin
        if (!RST_N) begin
            byte_counter <= 2'b00;
        end else if (current_state == PUSH_FIFO) begin
            if (!FIFO_FULL && reg_alu_saved) begin
                byte_counter <= byte_counter + 1'b1;
            end
        end else begin
            byte_counter <= 2'b00;
        end
    end        

//=========================== Next-State Logic ==============================
always @(*) begin
  next_state = current_state;
    case (current_state)
        IDLE: begin
            if (RX_VLD) begin
                case (RX_DATA)
                    CMD_WR_REG:  next_state = WR_ADDR;
                    CMD_RD_REG:  next_state = RD_ADDR;
                    CMD_ALU_OP:  next_state = ALU_OP_A;
                    CMD_ALU_NOP: next_state = ALU_FUN_ST;
                    default:     next_state = IDLE;
                endcase
            end
            else begin
                next_state = IDLE;
            end
        end

        //Register File Write command (3 frames)
        WR_ADDR: begin
            if (RX_VLD) begin
                next_state = WR_DATA;
            end
            else begin
                next_state = WR_ADDR;
            end
        end

        WR_DATA: begin
            if (RX_VLD) begin
                next_state = IDLE;
            end
            else begin
                next_state = WR_DATA;
            end
        end

       // Register File Read command (2 frames)
        RD_ADDR: begin
            if (RX_VLD) begin
                next_state = Send_RD_DAT;
            end
            else begin
                next_state = RD_ADDR;
            end
        end

        Send_RD_DAT: begin
            if (RD_DATA_VLD) begin
                next_state = IDLE;
            end
            else begin
                next_state = Send_RD_DAT;
            end
        end

       // ALU Operation command with operand (4 frames)
        ALU_OP_A: begin
            if (RX_VLD) begin
                next_state = ALU_OP_B;
            end
            else begin
                next_state = ALU_OP_A;
            end
        end

        ALU_OP_B: begin
            if (RX_VLD) begin
                next_state = ALU_FUN_ST;
            end
            else begin
                next_state = ALU_OP_B;
            end
        end

        ALU_FUN_ST: begin
            if (RX_VLD) begin
                next_state = EXECUTE_ALU;
            end
            else begin
                next_state = ALU_FUN_ST;
            end
        end

        EXECUTE_ALU: begin
            if (ALU_OUT_Valid) begin
                next_state = PUSH_FIFO;
            end
            else begin
                next_state = EXECUTE_ALU;
            end
        end

        PUSH_FIFO: begin
            if (!FIFO_FULL && reg_alu_saved && byte_counter == 2'b01) 
            begin
                next_state = IDLE;
            end
            else begin
                next_state = PUSH_FIFO;
            end
        end
        default: begin
            next_state = IDLE;
        end
    endcase   
end
  
//=========================== Output Logic ==================================
always @(*) 
begin
    // default values
    ALU_EN         = 1'b0;
    ALU_FUN        = 4'b0;
    CLKG_EN        = 1'b0;
    WR_EN          = 1'b0;
    RD_EN          = 1'b0;
    ADDR_S         =  'b0;
    WR_DATA_S      =  'b0;
    TX_P_DATA      =  'b0;
    TX_D_VLD       = 1'b0;

  case (current_state)
       IDLE: begin
            // No specific actions in IDLE state
        end

        WR_ADDR: begin
           // No specific actions in WR_ADDR state
        end

        WR_DATA: begin
            if (RX_VLD) begin
                WR_EN     = 1'b1;        // Enable write to register file
                ADDR_S    = reg_addr;    // Use the saved address for writing data
                WR_DATA_S = RX_DATA;     // Write the received data to the register file
                end
            else begin
                WR_EN      = 1'b0;        // Disable write if no valid data is received
                ADDR_S     = reg_addr;    // Use the saved address for writing data
                WR_DATA_S  = RX_DATA;     // Write the received data to the register file
            end
        end

        RD_ADDR: begin
            if (RX_VLD) begin
                ADDR_S = RX_DATA[ADDR-1:0];  // Set the address for read operation
                RD_EN  = 1'b1;      // Enable read from register file
            end
            else begin
                RD_EN  = 1'b0;      // Disable read if no valid data is received
            end
        end

        Send_RD_DAT: begin
            if (RD_DATA_VLD && !FIFO_FULL) begin
                TX_P_DATA = RD_DATA;  // Send the read data to FIFO for transmission
                TX_D_VLD  = 1'b1;     // Indicate that data is valid for transmission
            end
            else begin
                TX_D_VLD  = 1'b0;     // Disable transmission if no valid data or FIFO is full
            end
        end

        ALU_OP_A: begin
            if (RX_VLD) begin
                WR_EN     = 1'b1;    // Enable write to register file for operand A
                ADDR_S    = ADDR_A;  // Use the saved address for writing operand A
                WR_DATA_S = RX_DATA; // Set ALU function based on received data  
            end
            else begin
                WR_EN     = 1'b0;    // Disable write if no valid data is received
                ADDR_S    = ADDR_A;  // Use the saved address for writing operand A
                WR_DATA_S = RX_DATA; // Set ALU function based on received data  
            end
        end

        ALU_OP_B: begin
             if (RX_VLD) begin
                WR_EN     = 1'b1;    // Enable write to register file for operand B
                ADDR_S    = ADDR_B;  // Use the saved address for writing operand B   
                WR_DATA_S = RX_DATA; // Set ALU function based on received data  
            end
            else begin
                WR_EN     = 1'b0;    // Disable write if no valid data is received
                ADDR_S    = ADDR_B;  // Use the saved address for writing operand B
                WR_DATA_S = RX_DATA; // Set ALU function based on received data  
            end
        end

        ALU_FUN_ST: begin
            CLKG_EN = 1'b1; // Enable clock gating for ALU operation
            if (RX_VLD) begin
                ALU_EN  = 1'b1;              // Enable ALU operation with specified function code
                ALU_FUN = RX_DATA[ADDR-1:0]; // Set ALU function based on received data
            end 
            else begin
                ALU_EN  = 1'b0;              // Disable ALU operation if no valid data is received
                ALU_FUN = RX_DATA[ADDR-1:0]; // Set ALU function based on received data
            end
        end

        EXECUTE_ALU: begin
            ALU_EN  = 1'b1;
            CLKG_EN = 1'b1; // Enable clock gating for ALU operation
            ALU_FUN = RX_DATA[ADDR-1:0]; // Set ALU function based on received data
            
        end

        PUSH_FIFO: begin
            CLKG_EN = 1'b1; // Enable clock gating for ALU operation
            if (!FIFO_FULL && reg_alu_saved) begin
                 TX_D_VLD     = 1'b1;              // Indicate that data is valid for transmission
                    if (byte_counter == 2'b00) begin
                        TX_P_DATA = reg_alu_out[2*WIDTH-1:WIDTH]; // Send the high byte of ALU output to FIFO for transmission
                    end 
                    else begin
                        TX_P_DATA = reg_alu_out[WIDTH-1:0];  // Send the low byte of ALU output to FIFO for transmission
                    end
            end
            else begin
                TX_D_VLD = 1'b0;               // Disable transmission if no valid data or FIFO is full
            end
        end
        default : begin
            // Default case to handle unexpected states
            ALU_EN         = 1'b0; // Disable ALU operation
            ALU_FUN        = 4'b0; // Clear ALU function code
            CLKG_EN        = 1'b0; // Disable clock gating
            WR_EN          = 1'b0; // Disable write to register file
            RD_EN          = 1'b0; // Disable read from register file
            ADDR_S         =  'b0; // Clear address for register file operations
            WR_DATA_S      =  'b0; // Clear data for writing to register file
            TX_P_DATA      =  'b0; // Clear data for transmission to FIFO
            TX_D_VLD       = 1'b0; // Indicate that no data is valid for transmission
        end
    endcase
end
endmodule
