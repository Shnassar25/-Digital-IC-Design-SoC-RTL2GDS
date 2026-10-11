//shahd mahmoud
// REG file module
module REG_file #(
    parameter WIDTH     = 8,
              NO_OF_REG = 16,
              ADDR      = $clog2(NO_OF_REG) // Address width based on number of registers = 4
) (
    //Port Declaration
    input    wire                CLK_regfile, //clk from REF_CLK
    input    wire                RST_regfile, //Active low reset from RST_SYNC 
    input    wire   [WIDTH-1:0]  WrData,      //data to be written in the register file
    input    wire   [ADDR-1:0]   Address,
    input    wire                WrEn,        //from Sys_CTRL to write data in the register file
    input    wire                RdEn,        //from Sys_CTRL to read data from the register file

    output   reg    [WIDTH-1:0]  RdData,      //data read from the register file
    output   reg                 RdData_Valid,
    output   wire   [WIDTH-1:0]  REG0,        //from REG0 to ALU address 0x0 operand A
    output   wire   [WIDTH-1:0]  REG1,        //from REG1 to ALU address 0x1 operand B
    output   wire   [WIDTH-1:0]  REG2,        //from REG2 to UART address 0x2
    output   wire   [WIDTH-1:0]  REG3         //from REG3 to CLK_DIV address 0x3 for division ratio

     
);
//internal memory
reg [WIDTH-1:0] Reg_File [NO_OF_REG-1:0];

integer i;

//Operaion
always @(posedge CLK_regfile or negedge RST_regfile) 
    begin 
    if(!RST_regfile) 
     begin
       RdData       <= 'd0;
       RdData_Valid <= 1'b0;
        for(i = 0; i<NO_OF_REG; i=i+1) 
        begin
            if(i==2)begin
                Reg_File[i] <= 'b100000_01;  //REG2[0]: Parity Enable (Default = 1) ,REG2[1]: Parity Type (Default = 0) ,REG2[7:2]: Prescale(Default = 32)
            end
            else if(i==3)begin
                Reg_File[i] <= 'b0010_0000; //REG3[7:0]: Division ratio (Default = 32) 
            end
            else begin
                Reg_File[i] <= 'b0;
            end  
        end
    end
    else if (WrEn && !RdEn) //write operation
      begin
        Reg_File[Address] <= WrData;
      end
    else if (RdEn && !WrEn) //Read operation
      begin
        RdData       <= Reg_File[Address];
        RdData_Valid <= 1'b1 ;
      end
    else begin
        RdData_Valid <= 1'b0;
      end
    end

    
//assigning the output of the registers to the ALU, UART and CLK_DIV
assign REG0 = Reg_File[0]; //REG0 to ALU address
assign REG1 = Reg_File[1]; //REG1 to ALU address
assign REG2 = Reg_File[2]; //REG2 to UART address
assign REG3 = Reg_File[3]; //REG3 to CLK_DIV address

endmodule