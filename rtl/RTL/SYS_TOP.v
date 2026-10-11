//Shahd Mahmoud
//TOP Module
module SYS_TOP # (
    parameter WIDTH     = 8,
              ADDR      = 4,
              NO_OF_REG = 2*WIDTH
)(
    input wire              REF_CLK,    //reference clock
    input wire              UART_CLK,   //uart clock
    input wire              RST,        //reset signal
    input wire              RX_IN,      //uart receive data
    
    output wire             TX_OUT,     //uart transmit data
    output wire             PAR_ERR,    //parity error
    output wire             STOP_ERR    //stop error
);

//=========================== Internal Signals ===============================

//RST_SYC
wire               SYNC_REF_RST;        //synchronized reset for reference clock
wire               SYNC_UART_RST;       //synchronized reset for uart clock

//CLK_DIV
wire               RX_CLK;              //uart receive clock
wire               TX_CLK;              //uart transmit clock
wire [WIDTH-1:0]   PRESCALE_RX;         //prescale value for uart clock

//UART
wire [WIDTH-1:0]   UART_RX_OUT;         //uart data signal 
wire               UART_RX_VALID;       //uart data valid signal
wire               UART_TX_BUSY;        //uart busy signal from uart tx to Fifo

//FIFO
wire [WIDTH-1:0]   UART_TX_IN_SYNC;     //uart data signal from Fifo to uart tx
wire               UART_TX_VALID_SYNC;  //uart data valid signal from Fifo to uart tx
wire               FIFO_FULL;           //fifo full signal from Fifo to Sys_CTRL

//DATA_SYNC
wire [WIDTH-1:0]   UART_RX_OUT_SYNC;    //uart data signal from uart rx to Sys_CTRL
wire               UART_RX_VALID_SYNC;  //uart data valid signal from uart rx to Sys_CTRL

//PULSE_GEN
wire               UART_TX_BUSY_PULSE;  //uart data valid pulse signal from Sys_CTRL to

//ALU
wire [2*WIDTH-1:0] ALU_RESULT;          //ALU result signal
wire               ALU_OUT_VALID;       //ALU output valid signal

//CLK_GATE
wire               CLK_GATE_EN;         //clock gate enable signal from Sys_CTRL to CLK_GATE
wire               ALU_CLK;             //clock gate output signal from CLK_GATE to FIFO

// Register File
wire [WIDTH-1:0]   REG0_A;              //from REG0 to ALU address 0x0 operand A
wire [WIDTH-1:0]   REG1_B;              //from REG1 to ALU address 0x1 operand B
wire [WIDTH-1:0]   REG2_UART_CONFIG;    //from REG2 to UART address 0x2
wire [WIDTH-1:0]   REG3_DIV_RATIO;      //prescale value for uart clock
wire [WIDTH-1:0]   RD_DATA;             //read data from register file to Sys_CTRL
wire               RD_DATA_VALID;       //read data valid from register file to Sys_CTRL

//SYS_CTRL
wire [WIDTH-1:0]   WR_DATA;             //write data from Sys_CTRL
wire [ADDR-1:0]    WR_ADDR;             //write address from Sys_CTRL
wire               WR_EN;               //write enable from Sys_CTRL
wire               RD_EN;               //read enable from Sys_CTRL

wire [ADDR-1:0]    ALU_FUN;             //ALU function select from Sys_CTRL
wire               ALU_EN;              //ALU enable from Sys_CTRL

wire [WIDTH-1:0]   UART_TX_IN;          //uart data signal from Sys_CTRL to Fifo
wire               UART_TX_VALID;       //uart data valid signal from Sys_CTRL to Fifo
wire               CLK_DIV_EN;          //enable for clk div

//=========================== Module Instantiation ===========================

//RST_SYNC for reference clock
RST_SYNC #(
    .NUM_STAGES(2)
) RST_SYNC_REF (
    .CLK_Rsync(REF_CLK),
    .RST_Rsync(RST),
    .SYNC_RST(SYNC_REF_RST)
);

//RST_SYNC for uart clock
RST_SYNC #(
    .NUM_STAGES(2)
) RST_SYNC_UART (
    .CLK_Rsync(UART_CLK),
    .RST_Rsync(RST),
    .SYNC_RST(SYNC_UART_RST)
);

//CLK Divider for UART_TX
Clk_div_50 #(
    .Div_Ratio(8)
) CLK_DIV_TX(
    .i_ref_clk(UART_CLK),
    .i_rst_n(SYNC_UART_RST),
    .i_clk_en(CLK_DIV_EN),
    .i_div_ratio(REG3_DIV_RATIO),
    .o_div_clk(TX_CLK)
);

//CLK Divider for UART_RX
Clk_div_50 #(
    .Div_Ratio(8)
) CLK_DIV_RX(
    .i_ref_clk(UART_CLK),
    .i_rst_n(SYNC_UART_RST),
    .i_clk_en(CLK_DIV_EN),
    .i_div_ratio(PRESCALE_RX),
    .o_div_clk(RX_CLK)
);

//CLK_DIV_RX_MUX
CLK_DIV_MUX #(
    .WIDTH(WIDTH)
) MUX_RX(
    .IN(REG2_UART_CONFIG[WIDTH-1:2]),
    .OUT(PRESCALE_RX)
);

//Pulse Generator
PULSE_GEN  pulse_gen_busy(
    .clk(TX_CLK),
    .rst(SYNC_UART_RST),
    .lvl_sig(UART_TX_BUSY),
    .pulse_sig(UART_TX_BUSY_PULSE)
);

//CLK Gating
CLK_GATING U0_CLK_GATING (
.EN_CLK(CLK_GATE_EN),
.CLK(REF_CLK),
.CLK_GATED(ALU_CLK)
);

//Data syncrounizer
Data_SYNC #(
    .NUM_STAGES(2),
    .BUS_WIDTH(WIDTH)
) D_SYNC(
    .CLK(REF_CLK),
    .RST(SYNC_REF_RST),
    .ASYNC(UART_RX_OUT),
    .BUS_EN(UART_RX_VALID),
    .ENABLE_PULSE(UART_RX_VALID_SYNC),
    .SYNC_BUS(UART_RX_OUT_SYNC)
);

//Register File
REG_file #(
    .WIDTH(WIDTH),
    .NO_OF_REG(NO_OF_REG),
    .ADDR(ADDR)
) reg_file(
    .CLK_regfile(REF_CLK),
    .RST_regfile(SYNC_REF_RST),
    .WrData(WR_DATA),
    .Address(WR_ADDR),
    .WrEn(WR_EN),
    .RdEn(RD_EN),
    .RdData(RD_DATA),
    .RdData_Valid(RD_DATA_VALID),
    .REG0(REG0_A),
    .REG1(REG1_B),
    .REG2(REG2_UART_CONFIG),
    .REG3(REG3_DIV_RATIO)
);

//ALU
Alu_16_bit #(
    .OPER_WIDTH(WIDTH),
    .OUT_WIDTH(NO_OF_REG),
    .ALU_FUN_WIDTH(ADDR)
) alu(
    .CLK_alu(ALU_CLK),
    .RST_alu(SYNC_REF_RST),
    .EN_alu(ALU_EN),
    .A(REG0_A),
    .B(REG1_B),
    .ALU_FUN(ALU_FUN),
    .ALU_OUT(ALU_RESULT),
    .OUT_VALID(ALU_OUT_VALID)
);

//Asynchronous FIFO
ASYNC_FIFO #(
    .DATASIZE(WIDTH),
    .ADDRSIZE(ADDR),
    .DEPTHSIZE(NO_OF_REG)
) fifo_async(
    .W_CLK(REF_CLK),
    .W_RST_N(SYNC_REF_RST),
    .W_INC(UART_TX_VALID),
    .W_DATA(UART_TX_IN),
    .R_CLK(TX_CLK),
    .R_RST_N(SYNC_UART_RST),
    .R_INC(UART_TX_BUSY_PULSE),
    .W_FULL(FIFO_FULL),
    .R_DATA(UART_TX_IN_SYNC),
    .R_EMPTY(UART_TX_VALID_SYNC)
);

//UART
UART_TOP #(
    .WIDTH(WIDTH),
    .PRESCALE(6),
    .START_BIT(1'b0),
    .STOP_BIT(1'b1),
    .PAR_TYP_EVEN(1'b0),
    .PAR_TYP_ODD(1'b1)
) uart(
    .i_CLK_TX(TX_CLK),
    .i_CLK_RX(RX_CLK),
    .i_RST(SYNC_UART_RST),
    .i_DATA_Valid_TX(!UART_TX_VALID_SYNC),
    .i_DATA_TX(UART_TX_IN_SYNC),
    .i_PAR_EN_TX(REG2_UART_CONFIG[0]),
    .i_PAR_TYP_TX(REG2_UART_CONFIG[1]),
    .i_Prescale_RX(REG2_UART_CONFIG[7:2]),
    .i_Serial_Data_RX(RX_IN),
    .i_PAR_EN_RX(REG2_UART_CONFIG[0]),
    .i_PAR_TYP_RX(REG2_UART_CONFIG[1]),
    .o_OUT_TX(TX_OUT),
    .o_BUSY_TX(UART_TX_BUSY),
    .o_P_Data_RX(UART_RX_OUT),
    .o_Data_Valid_RX(UART_RX_VALID),
    .o_Stop_Error_RX(STOP_ERR),
    .o_Parity_Error_RX(PAR_ERR)
);

//System Control
SYS_CTRL #(
    .WIDTH(WIDTH),
    .ADDR(ADDR)
) control(
    .CLK(REF_CLK),
    .RST_N(SYNC_REF_RST),
    .ALU_OUT(ALU_RESULT),
    .ALU_OUT_Valid(ALU_OUT_VALID),
    .RD_DATA(RD_DATA),
    .RD_DATA_VLD(RD_DATA_VALID),
    .FIFO_FULL(FIFO_FULL),
    .RX_DATA(UART_RX_OUT_SYNC),
    .RX_VLD(UART_RX_VALID_SYNC),
    .ALU_FUN(ALU_FUN),
    .ALU_EN(ALU_EN),
    .CLKG_EN(CLK_GATE_EN),
    .WR_EN(WR_EN),
    .RD_EN(RD_EN),
    .ADDR_S(WR_ADDR),
    .WR_DATA_S(WR_DATA),
    .TX_P_DATA(UART_TX_IN),
    .TX_D_VLD(UART_TX_VALID),
    .CLK_DIV_EN(CLK_DIV_EN)
);

endmodule
