// Shahd Mahmoud
// Testbench with Separated Initial Blocks for Asynchronous FIFO

`timescale 1ns/1ps

module tb_ASYNC_FIFO();

    // Parameters
    parameter tb_DATASIZE    = 8;
    parameter tb_ADDRSIZE    = 4;
    parameter tb_DEPTHSIZE   = 16;
    parameter tb_W_CLKPERIOD = 10;
    parameter tb_R_CLKPERIOD = 25;

    // Testbench Signals
    reg                        tb_W_CLK;
    reg                        tb_W_RST_N;
    reg                        tb_W_INC;
    reg    [tb_DATASIZE-1:0]   tb_W_DATA;

    reg                        tb_R_CLK;
    reg                        tb_R_RST_N;
    reg                        tb_R_INC;

    wire                       tb_W_FULL;
    wire   [tb_DATASIZE-1:0]   tb_R_DATA;
    wire                       tb_R_ENMPTY;

    // Instantiate the UUT
    ASYNC_FIFO #(
        .DATASIZE(tb_DATASIZE),
        .ADDRSIZE(tb_ADDRSIZE),
        .DEPTHSIZE(tb_DEPTHSIZE)
    ) u_fifo (
        .W_CLK(tb_W_CLK),
        .W_RST_N(tb_W_RST_N),
        .W_INC(tb_W_INC),
        .W_DATA(tb_W_DATA),
        .R_CLK(tb_R_CLK),
        .R_RST_N(tb_R_RST_N),
        .R_INC(tb_R_INC),
        .W_FULL(tb_W_FULL),
        .R_DATA(tb_R_DATA),
        .R_ENMPTY(tb_R_ENMPTY)
    );

    // Clock Generation 
    always #(tb_W_CLKPERIOD/2)   tb_W_CLK = ~tb_W_CLK; 
    always #(tb_R_CLKPERIOD/2.0) tb_R_CLK = ~tb_R_CLK; 

    // Write Task
task write_fifo(
        input [tb_DATASIZE-1:0] data_in
    );
        begin
            @(posedge tb_W_CLK);
            if (!tb_W_FULL) begin
                tb_W_INC  <= 1'b1;
                tb_W_DATA <= data_in;
                $display("[%0t ns] [WRITE] Data: 0x%h | W_Addr: %0d", $time, data_in, u_fifo.W_ADDR);
            end else begin
                tb_W_INC <= 1'b0;
                $display("[%0t ns] [WRITE] FIFO is FULL! Skipped 0x%h", $time, data_in);
            end
            
            @(posedge tb_W_CLK);
            tb_W_INC <= 1'b0; 
        end
    endtask

    // Read Task with Self-Checking
task read_fifo(input [tb_DATASIZE-1:0] expected_data);
    begin
        @(posedge tb_R_CLK);
        if (!tb_R_ENMPTY) begin
            #1;
            if (tb_R_DATA === expected_data) begin
               $display("[%0t ns] [READ]  Data: 0x%h | Expected: 0x%h | R_Addr: %0d ---> [PASS] ✅", $time, tb_R_DATA, expected_data, u_fifo.R_ADDR);
            end else begin
               $display("[%0t ns] [READ]  Data: 0x%h | Expected: 0x%h | R_Addr: %0d ---> [FAIL] ❌", $time, tb_R_DATA, expected_data, u_fifo.R_ADDR);
            end
            tb_R_INC <= 1'b1;
            @(posedge tb_R_CLK);
            tb_R_INC <= 1'b0;
        end else begin
            tb_R_INC <= 1'b0;
            $display("[%0t ns] [READ]  FIFO is EMPTY!", $time);
        end
    end
endtask
    

    // 1. Write Domain Initial Block
    initial begin
        tb_W_CLK   = 0;
        tb_W_RST_N = 0;
        tb_W_INC   = 0;
        tb_W_DATA  = 0;

        #(tb_W_CLKPERIOD * 3);
        tb_W_RST_N = 1;
        $display("[%0t ns] [INIT] Write Reset released.", $time);

        //#(tb_W_CLKPERIOD * 2);

        $display("--- STARTING WRITE SEQUENCE ---");
       
        write_fifo(8'h01);
        write_fifo(8'h02);
        write_fifo(8'h03);
        write_fifo(8'h04);
        write_fifo(8'h05);
        write_fifo(8'h06);
        write_fifo(8'h07);
        write_fifo(8'h08);
        write_fifo(8'h09);

        write_fifo(8'h0A);
        write_fifo(8'h0B);
        write_fifo(8'h0C);
        write_fifo(8'h0D);
        write_fifo(8'h0E);
        write_fifo(8'h0F);
        write_fifo(8'h10);

        $display("--- TRYING TO WRITE INTO FULL FIFO ---");
        write_fifo(8'hFF);
        

        //write_fifo(8'hF0);
        /* #100;
        $display("--- SIMULATION FINISHED ---");
        $finish;
       @(posedge tb_W_FULL);
       $display("FULLLLLLLLLLLLLLLLL");*/
    end

    // 2. Read Domain Initial Block
    initial begin
        tb_R_CLK   = 0;
        tb_R_RST_N = 0;
        tb_R_INC   = 0;

        #(tb_R_CLKPERIOD * 2);
        tb_R_RST_N = 1;
        $display("[%0t ns] [INIT] Read Reset released.", $time);
#500;
        // Give a little time for data to be written first
        //#(tb_R_CLKPERIOD * 4);

        $display("--- STARTING READ SEQUENCE ---");
        read_fifo(8'h01);
        read_fifo(8'h02);
        read_fifo(8'h03);
        read_fifo(8'h04);
        read_fifo(8'h05);
        read_fifo(8'h06);
        read_fifo(8'h07);
        read_fifo(8'h08);
        read_fifo(8'h09);

        read_fifo(8'h0A);
        read_fifo(8'h0B);
        read_fifo(8'h0C);
        read_fifo(8'h0D);
        read_fifo(8'h0E);
        read_fifo(8'h0F);
        read_fifo(8'h10);

        read_fifo(8'hff);

        #100;
        $display("--- SIMULATION FINISHED ---");
        $finish;
    end

endmodule