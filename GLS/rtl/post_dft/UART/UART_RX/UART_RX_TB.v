// Shahd Mahmoud
// UART_RX Testbench
`timescale 1ns/1ps

module UART_RX_TB;

    // Parameters
    parameter WIDTH      = 8;
    parameter PRESCALE   = 6;
    parameter PRESCALING = 32; // OVER SAMPLING(8,16,32)
    parameter CLK_PERIOD = 8.680555556; // 115.2KHz Clock (8.680555556 us period)

    // Signals Declaration
    reg                 tb_CLK_RX;
    reg                 tb_CLK_TX;
    reg                 tb_RST;
    reg                 tb_SERIAL_IN;
    reg                 tb_PAR_EN;
    reg                 tb_PAR_TYP;
    reg  [PRESCALE-1:0] tb_PRESCALE;

    wire [WIDTH-1:0]    tb_PARALLEL_DATA_OUT;
    wire                tb_DATA_VALID_OUT;
    wire                tb_PARITY_ERROR_OUT;
    wire                tb_STOP_ERROR_OUT;
    wire                tb_START_GLITCH_OUT;

    // Clock Generation RX (115.2KHz)
    always #(CLK_PERIOD / (PRESCALING * 2.0) ) tb_CLK_RX = ~tb_CLK_RX;

    // Clock Generation TX (115.2KHz)
    always #(CLK_PERIOD / 2 ) tb_CLK_TX = ~tb_CLK_TX;

    // Instantiate the Unit Under Test (UUT)
    UART_RX #(
        .WIDTH(WIDTH),
        .PRESCALE(PRESCALE)
    ) uut (
        .i_Clk_RX(tb_CLK_RX),
        .i_RST_RX(tb_RST),
        .i_Serial_Data_RX(tb_SERIAL_IN),
        .i_PAR_EN_RX(tb_PAR_EN),
        .i_PAR_TYP_RX(tb_PAR_TYP),
        .i_Prescale_RX(tb_PRESCALE),

        .o_P_Data_RX(tb_PARALLEL_DATA_OUT),
        .o_Data_Valid_RX(tb_DATA_VALID_OUT),
        .o_Parity_Error_RX(tb_PARITY_ERROR_OUT),
        .o_Stop_Error_RX(tb_STOP_ERROR_OUT),
        .o_Start_Glitch_RX(tb_START_GLITCH_OUT)
     
    );

    ///////////////////////////////////////////////////////////
    /////////// Monitor 1: Parallel Data when valid////////////
    ///////////////////////////////////////////////////////////
    always @( posedge tb_DATA_VALID_OUT) begin
       $display("T=%0t | p_data=%b | data_valid=%b | par_err=%b | stp_err=%b | strt_glitch=%b",
        $time, tb_PARALLEL_DATA_OUT, tb_DATA_VALID_OUT, tb_PARITY_ERROR_OUT, tb_STOP_ERROR_OUT, tb_START_GLITCH_OUT);
end  

always @(posedge tb_PARITY_ERROR_OUT or posedge tb_STOP_ERROR_OUT or posedge tb_START_GLITCH_OUT) begin
  if (tb_PARITY_ERROR_OUT)   $display("T=%0t | PARITY ERROR", $time);
  if (tb_STOP_ERROR_OUT)     $display("T=%0t | STOP ERROR",   $time);
  if (tb_START_GLITCH_OUT)   $display("T=%0t | START GLITCH", $time);
end

    //////////////////////////////////////////////////////////
    //////////////////////// Tasks ///////////////////////////
    //////////////////////////////////////////////////////////
initial 
  begin
    intialization;

    $display("Test Case 1: No Parity");
    tb_PAR_TYP = 1'b0; // Even parity
    UART_Receiver(8'b01010000,1'b0,1'b0,1'b1,1'b0);         // no parity
    #(CLK_PERIOD*50);

    $display("Test Case 2: Even Parity");
    tb_PAR_TYP = 1'b0; // Even parity
    UART_Receiver(8'b10101010,1'b0,1'b1,1'b1,1'b0);  // even parity
    #(CLK_PERIOD*50);

    $display("Test Case 3: Odd Parity");
    tb_PAR_TYP = 1'b1; // Odd parity
    UART_Receiver(8'b10101010,1'b1,1'b1,1'b1,1'b0);          // odd parity
    #(CLK_PERIOD*50);

    $display("Test Case 4: Parity Error");
    tb_PAR_TYP = 1'b0; // Even parity
    UART_Receiver(8'b10101010,1'b1,1'b1,1'b1,1'b0);          // parity error
    #(CLK_PERIOD*50);

    $display("Test Case 5: Stop Error");
    tb_PAR_TYP = 1'b0; // Even parity
    UART_Receiver(8'b10101010,1'b0,1'b1,1'b0,1'b0);          // stop error
    #(CLK_PERIOD*50);

    $display("Test Case 6: Start Glitch");
    tb_PAR_TYP = 1'b0; // Even parity
    test_start_glitch;
    #(CLK_PERIOD*50);

    $display("Test Case 7: Back-to-Back Transfers");
    tb_PAR_TYP = 1'b0;
    UART_Receiver(8'b10101010,1'b0,1'b1,1'b1,1'b0);          // first transfer
    UART_Receiver(8'b11001100,1'b0,1'b1,1'b1,1'b0);          // second transfer
    #(CLK_PERIOD * 50);

    $display("Test Case 8: Back-to-Back Transfers Error");
    tb_PAR_TYP = 1'b0;
    UART_Receiver(8'b10101010,1'b0,1'b1,1'b0,1'b0);          // first transfer with stop error
    UART_Receiver(8'b11001100,1'b0,1'b1,1'b1,1'b0);          // second transfer
    #(CLK_PERIOD * 50);

    $display("All test cases completed.");

    $stop;
  end    



task intialization();
  begin
   // 1. Initialize Signals
        tb_SERIAL_IN  = 1'b1; // Idle state for UART
        tb_CLK_RX     = 1'b0;
        tb_CLK_TX     = 1'b0;
        tb_RST        = 1'b0; // Active low reset
        tb_PRESCALE   = PRESCALING;
        tb_PAR_EN     = 1'b0;
        tb_PAR_TYP    = 1'b0;

        // Apply Reset
        @(posedge tb_CLK_TX); // Wait for 2 clock cycles
        tb_RST = 1'b1; // Release reset

  end
endtask

task test_start_glitch();
    begin
        $display("--- Testing Start Glitch ---");
        
        // 1. Glitch: Line goes low briefly
        tb_SERIAL_IN = 1'b0;
        #(CLK_PERIOD / 4.0); // Nanosconds pulse (Less than half bit time)

        // 2. Line recovers back to 1 (Glitch detected!)
        tb_SERIAL_IN = 1'b1;
        
        // 3. Wait for FSM to sample at middle of bit and return to IDLE
        #(CLK_PERIOD * 5);
    end
endtask

task UART_Receiver(
    input [WIDTH-1:0] data_in,
    input parity_bit,
    input parity_enable,
    input stop_bit,
    input start_bit

);
    integer i;
    begin
        
        tb_PAR_EN = parity_enable;
        // Start bit
        tb_SERIAL_IN = start_bit; // Start bit is low
        #(CLK_PERIOD);

        // Data bits
        for (i = 0; i < WIDTH; i = i + 1) begin
            tb_SERIAL_IN = data_in[i];
            #(CLK_PERIOD);
        end

        // Parity bit
        if (parity_enable) begin
            tb_SERIAL_IN = parity_bit;
            #(CLK_PERIOD);
        end

        // Stop bit
        tb_SERIAL_IN = stop_bit; // Stop bit is high
        #(CLK_PERIOD);

        if(tb_STOP_ERROR_OUT) begin
            tb_SERIAL_IN = 1'b1; // Stop bit is low to simulate stop error
        end
    end    
endtask




endmodule
