//shahd mahmoud
//Test Bench
`timescale 1ns/1ps

module SYS_TOP_TB;

    // Parameters
    parameter WIDTH_tb     = 8;
    parameter ADDR_tb      = 4;
    parameter NO_OF_REG_tb = 2 * WIDTH_tb;

    //=========================== Timing Parameters ===========================
    parameter integer BIT_TIME   = 271;                     // UART_CLK half-period * 2 = 271ns
    parameter integer PRESCALE   = 32;                      // Prescale factor
    parameter integer BIT_PERIOD = PRESCALE * BIT_TIME;     // Bit time = prescale * UART_CLK period
    parameter integer REF_PERIOD = 20;                      // 50 MHz ref clock => 20 ns

    //=========================== Command Localparams ===========================
    localparam CMD_WR_REG  = 8'hAA;
    localparam CMD_RD_REG  = 8'hBB;
    localparam CMD_ALU_OP  = 8'hCC;
    localparam CMD_ALU_NOP = 8'hDD; 

    // Testbench Signals
    reg                  REF_CLK_tb;
    reg                  UART_CLK_tb;
    reg                  RST_tb;
    reg                  RX_IN_tb;
    
    wire                 TX_OUT_tb;
    wire                 PAR_ERR_tb;
    wire                 STOP_ERR_tb;

    // Variables for checking received data
    reg [WIDTH_tb-1:0]   received_data;  //for Regfile
    reg [2*WIDTH_tb-1:0] received_data_16bit; //for Alu

    integer              error_count = 0;

    // Dynamic Parity Configuration for TB
    reg                  parity_enable_tb = 1'b0; // 0: Disabled, 1: Enabled
    reg                  parity_type_tb   = 1'b0; // 0: Even, 1: Odd

    // Instantiate Top Module
    SYS_TOP SYS_TOP_tb (
        .REF_CLK(REF_CLK_tb),
        .UART_CLK(UART_CLK_tb),
        .RST(RST_tb),
        .RX_IN(RX_IN_tb),
        .TX_OUT(TX_OUT_tb),
        .PAR_ERR(PAR_ERR_tb),
        .STOP_ERR(STOP_ERR_tb)
    );
 initial begin
    $dumpfile("/home/ICer/ASS/Final_System/GLS/sim/VCD/SYS_TOP.vcd");
    $dumpvars;
   end

//=========================== Clock Generators ===========================
    always #(REF_PERIOD / 2) REF_CLK_tb = ~REF_CLK_tb;
    always #(BIT_TIME / 2.0) UART_CLK_tb = ~UART_CLK_tb;

//=========================== Monitor for protocol errors ===========================
    initial begin
        $monitor("[%0t] MONITOR: PAR_ERR = %b | STOP_ERR = %b | RST = %b", 
                 $time, PAR_ERR_tb, STOP_ERR_tb, RST_tb);
    end
    
//================================= Tasks ================================

task intialization;
        begin
            REF_CLK_tb       = 0;
            UART_CLK_tb      = 0;
            RX_IN_tb         = 1'b1;
            parity_enable_tb = 1'b0;
            parity_type_tb   = 1'b0;
            error_count      = 0;
            $display("[%0t] SYSTEM: Initial inputs applied.", $time);
        end
    endtask
        
task reset_system;
        begin
            RST_tb   = 1'b0; 
            RX_IN_tb = 1'b1;
            #(REF_PERIOD * 10);
            RST_tb   = 1'b1;
            @(posedge REF_CLK_tb);
            $display("[%0t] SYSTEM: Reset Applied and Released.", $time);
        end
    endtask

    // Task to send a byte serially with dynamic Parity support
task uart_send_byte(
        input [WIDTH_tb-1:0] data_in,
        input parity_en,
        input parity_type // 0: Even, 1: Odd
    );
    integer i;
    reg parity_bit;
    begin
        parity_bit = (parity_type) ? ~^data_in : ^data_in;

        RX_IN_tb = 1'b1;
        #(BIT_PERIOD*2);

        // 1. Start Bit
        RX_IN_tb = 1'b0;
        #(BIT_PERIOD);

        // 2. Data Bits (LSB First)
        for (i = 0; i < WIDTH_tb; i = i + 1) begin
            RX_IN_tb = data_in[i];
            #(BIT_PERIOD);
        end

        // 3. Parity Bit (If enabled)
        if (parity_en) begin
            RX_IN_tb = parity_bit;
            #(BIT_PERIOD);
        end

        // 4. Stop Bit
        RX_IN_tb = 1'b1;
        #(BIT_PERIOD*0.5);
    end
    endtask

    // Task to capture a byte coming out of UART TX (CORRECTED SAMPLING TIMING)
task uart_receive_byte(
        output [WIDTH_tb-1:0] data_out
    );
    integer i;
    begin
        // Wait for Start Bit (falling edge on TX_OUT)
        @(negedge TX_OUT_tb);
        
        // Wait 1.5 BIT_PERIODs to skip Start Bit and sample in middle of Data Bit 0
        #(BIT_PERIOD * 1.5);

        // Sample 8 data bits, LSB first
        for (i = 0; i < WIDTH_tb; i = i + 1) begin
            data_out[i] = TX_OUT_tb;
            #(BIT_PERIOD);
        end

        $display("[%0t] UART RX CHECK: Captured Byte = 0x%h (%0d)", $time, data_out, data_out);
    end
    endtask

    // Task to capture a 16-bit word by receiving two consecutive UART bytes
task uart_receive_2bytes(
    output [2*WIDTH_tb-1:0] data_out  //16bit combined output data
);
reg [WIDTH_tb-1:0] byte_lsb;     // Temporary register for Least Significant Byte (LSB)
reg [WIDTH_tb-1:0] byte_msb;     // Temporary register for Most Significant Byte (MSB)
    begin

        // 1. Receive the first byte transmitted (MSB, per PUSH_FIFO's byte order)
        uart_receive_byte(byte_msb);
        // 2. Receive the second byte transmitted (LSB)
        uart_receive_byte(byte_lsb);
            
        // 3. Concatenate both bytes into a single 16-bit word {MSB, LSB}
        data_out = {byte_msb, byte_lsb};
        end
    endtask

    // Task: Write to Register File
task write_reg(
        input [WIDTH_tb-1:0] address, 
        input [WIDTH_tb-1:0] data
    );
        begin
            $display("[%0t] -> [WRITE REG] Addr: 0x%h | Data: 0x%h", $time, address, data);
            uart_send_byte(CMD_WR_REG, parity_enable_tb, parity_type_tb); 
            uart_send_byte(address,    parity_enable_tb, parity_type_tb);    
            uart_send_byte(data,       parity_enable_tb, parity_type_tb);    
            #(BIT_PERIOD * 5);
        end
    endtask

    // Task: Read from Register File & Verify Output
task read_reg_and_check(
        input [WIDTH_tb-1:0] address,
        input [WIDTH_tb-1:0] expected_data
    );
        begin
            $display("[%0t] -> [READ REG] Requesting Addr: 0x%h (Expected: 0x%h)", $time, address, expected_data);
            uart_send_byte(CMD_RD_REG, parity_enable_tb, parity_type_tb); 
            uart_send_byte(address,    parity_enable_tb, parity_type_tb);    
                
             uart_receive_byte(received_data);
            
            if (received_data === expected_data) begin
                $display("[%0t] [PASS] Read match! Got 0x%h as expected.", $time, received_data);
            end else begin
                $display("[%0t] [FAIL] Read mismatch! Got 0x%h, Expected 0x%h", $time, received_data, expected_data);
                error_count = error_count + 1;
            end
            #(BIT_PERIOD * 5);
        end
    endtask

    // Task: Execute ALU Operation & Verify Output
task execute_alu_and_check(
        input [WIDTH_tb-1:0]   op_a, 
        input [WIDTH_tb-1:0]   op_b, 
        input [WIDTH_tb-1:0]   alu_fun, 
        input [2*WIDTH_tb-1:0] expected_result
    );
        begin
            $display("[%0t] -> [ALU OP] OpA: 0x%h, OpB: 0x%h, Fun: 0x%h (Expected Res: 0x%h)", $time, op_a, op_b, alu_fun, expected_result);
            uart_send_byte(CMD_ALU_OP, parity_enable_tb, parity_type_tb); 
            uart_send_byte(op_a,       parity_enable_tb, parity_type_tb);    
            uart_send_byte(op_b,       parity_enable_tb, parity_type_tb);    
            uart_send_byte(alu_fun,    parity_enable_tb, parity_type_tb);    
                
           uart_receive_2bytes(received_data_16bit);

            if (received_data_16bit === expected_result) begin
                $display("[%0t] [PASS] ALU result match! Got 0x%h as expected.", $time, received_data_16bit);
            end else begin
                $display("[%0t] [FAIL] ALU result mismatch! Got 0x%h, Expected 0x%h", $time, received_data_16bit, expected_result);
                error_count = error_count + 1;
            end
            #(BIT_PERIOD * 10);         
        end
    endtask

    // Task: Execute ALU NOP Command
task execute_alu_nop(
        input [WIDTH_tb-1:0] alu_fun
    );
        begin
            $display("[%0t] -> [ALU NOP] Executing NOP command", $time);
            uart_send_byte(CMD_ALU_NOP, parity_enable_tb, parity_type_tb); 
            uart_send_byte(alu_fun,     parity_enable_tb, parity_type_tb); 
            #(BIT_PERIOD * 5);         
        end
    endtask

//=========================== INITIAL BLOCK ===========================
    initial begin
        intialization();
        reset_system();

        $display("\n--- PHASE 1: CONFIGURATION ---");
        write_reg(8'h02, 8'h81); 
        // Update TB parity flags to match the new config
        parity_enable_tb = 1'b1; 
        parity_type_tb   = 1'b0;

        write_reg(8'h03, 8'h20); 

        $display("\n--- PHASE 2: REGISTER FILE WRITE & READ TESTS ---");
        write_reg(8'h04, 8'h55);
        write_reg(8'h05, 8'hAA);
        write_reg(8'h06, 8'h3F);

        read_reg_and_check(8'h04, 8'h55);
        read_reg_and_check(8'h05, 8'hAA);
        read_reg_and_check(8'h06, 8'h3F);

        $display("\n--- PHASE 3: ALU OPERATIONS & VERIFICATION ---");
        execute_alu_and_check(8'h10, 8'h05, 8'h00, 16'h0015);
        execute_alu_and_check(8'h20, 8'h05, 8'h01, 16'h001B);
        execute_alu_and_check(8'hF0, 8'h0F, 8'h02, 16'h0E10);

        execute_alu_nop(8'h03);

        #1000;
        $display("\n========================================");
        if (error_count == 0) begin
            $display("ALL TESTS PASSED SUCCESSFULLY! No errors detected.");
        end else begin
            $display("SIMULATION FINISHED WITH %0d ERRORS.", error_count);
        end
        $display("========================================\n");
        $finish;
    end

endmodule
