// Shahd Mahmoud
// UART_TX Testbench
`timescale 1ns/1ps

module UART_TX_TB;

    // Parameters
    parameter WIDTH = 8;
    parameter CLK_PERIOD = 5; // 200MHz Clock (5ns period)

    // Signals Declaration
    reg                tb_CLK;
    reg                tb_RST;
    reg                tb_DATA_Valid;
    reg    [WIDTH-1:0] tb_DATA;
    reg                tb_PAR_EN;
    reg                tb_PAR_TYP;
    
    wire               tb_OUT;
    wire               tb_BUSY;

    // Instantiate the Unit Under Test (UUT)
    UART_TX #(
        .WIDTH(WIDTH)
    ) uut (
        .i_CLK_TX(tb_CLK),
        .i_RST_TX(tb_RST),
        .i_DATA_Valid_TX(tb_DATA_Valid),
        .i_DATA_TX(tb_DATA),
        .i_PAR_EN_TX(tb_PAR_EN),
        .i_PAR_TYP_TX(tb_PAR_TYP),
        .o_OUT_TX(tb_OUT),
        .o_BUSY_TX(tb_BUSY)
    );

    // Clock Generation (200MHz)
    always #(CLK_PERIOD / 2) tb_CLK = ~tb_CLK;

/*initial begin
    $monitor(
        "Time=%0t | State=%0d | Count=%0d | MUX=%b | SER_EN=%b | SER_DONE=%b | REG_DATA=%b | SER_DATA=%b | OUT=%b | BUSY=%b",
        $time,
        uut.fsm_tx.Current_state,
        uut.SER.count_ser,
        uut.MUS_SEL_TX,
        uut.SER_EN_TX,
        uut.SER_DONE_TX,
        uut.SER.reg_data,
        uut.SER_DATA_TX,
        tb_OUT,
        tb_BUSY
    );
end
*/
initial 
  begin
    intialization();
    $display("test case 1 no parity");
    UART_Transmitter(8'b01010000,1'b0,1'b0);         // no parity
    
    #(CLK_PERIOD*50);
    $display("test case 2 even parity");
    UART_Transmitter(8'b10101010,1'b1,1'b0);  // even parity
    
    #(CLK_PERIOD*50);
    $display("test case 3 odd parity");
    UART_Transmitter(8'b10101010,1'b1,1'b1);          // odd parity
    
    #(CLK_PERIOD*50);
    
    $finish;
  end    

//////////////////////////////////////////////////////////
//////////////////////// Tasks ///////////////////////////
//////////////////////////////////////////////////////////

task intialization();
  begin
   // 1. Initialize Signals
        tb_CLK        = 1'b0;
        tb_RST        = 1'b0; // Active low reset
        tb_DATA_Valid = 1'b0;
        tb_DATA       =  'b0;
        tb_PAR_EN     = 1'b0;
        tb_PAR_TYP    = 1'b0;

        // Apply Reset
        #(CLK_PERIOD * 2);
        tb_RST        = 1'b1; // Release reset     
  end
endtask

task UART_Transmitter(
    input [WIDTH-1:0] data_in,
    input             parity_en,
    input             parity_typ
);
    integer i;
        integer total_bits;
        reg [15:0] collected_frame;
       
       begin
        // If the transmitter is currently busy, wait for it to finish safely
        if (tb_BUSY) begin
            @(negedge tb_BUSY);
        end

        #(CLK_PERIOD);

        // Drive input data and configuration
        tb_DATA       = data_in;
        tb_PAR_EN     = parity_en;
        tb_PAR_TYP    = parity_typ;
        tb_DATA_Valid = 1'b1;
        
        #(CLK_PERIOD);
        tb_DATA_Valid = 1'b0;

        // --- Monitor & Capture Frame ---
        @(posedge tb_BUSY);
        $display("[Time %0t] --- Start of Frame Transmission ---", $time);
        total_bits = parity_en ? (WIDTH + 3) : (WIDTH + 2);
        collected_frame = 0;
        
         
            for(i=0;i<total_bits;i=i+1) begin
            #(CLK_PERIOD / 2);
            collected_frame[i]=tb_OUT;
            #(CLK_PERIOD / 2);
            end

        $display("[Time %0t] --- End of Frame Transmission ---", $time);
        
   
        if(total_bits == WIDTH + 3)begin
             $display("[Time %0t] Transmitted Frame (Start -> Stop): 0b = %b", $time, collected_frame[10:0]);
            end
        if(total_bits == WIDTH + 2)begin
           $display("[Time %0t] Transmitted Frame Bits (Binary): 0b = %b", $time, collected_frame[9:0]);
            end
             end

endtask
endmodule