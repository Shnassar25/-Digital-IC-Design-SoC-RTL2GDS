// Shahd Mahmoud
// Serializer Block
module Serializer #(
    parameter WIDTH = 8
) (
// Port Declaretion
input   wire                    i_Clk_s,
input   wire                    i_RST_s,
input   wire                    i_Data_Valid_s,
input   wire    [WIDTH-1:0]     i_P_Data_s,
input   wire                    i_Busy_s,
input   wire                    i_Ser_En_s,

output  wire                     o_Ser_DATA_s,
output  wire                     o_Ser_Done_s

);

//internal signals

//register to store data
reg  [WIDTH-1:0]          reg_data;
//counter
reg  [$clog2(WIDTH):0]  count_ser;

//OUTPUT
assign o_Ser_DATA_s = reg_data[0];
assign o_Ser_Done_s = (count_ser == WIDTH-1)? 1'b1 : 1'b0;

//Processing
always @(posedge i_Clk_s or negedge i_RST_s ) begin
    // Asyncrounus RST active low
    if(!i_RST_s) begin
        reg_data <= 'b0;
    end
    // Transmission
    else if (i_Data_Valid_s && !i_Busy_s) begin
        reg_data <= i_P_Data_s;
    end
    // Serialization
    else if (i_Ser_En_s) begin
        reg_data <= reg_data >>1;
    end
end


//Counter
always @(posedge i_Clk_s or negedge i_RST_s ) begin
    if(!i_RST_s) begin
        count_ser <= 'b0;
    end
    else if (i_Ser_En_s) begin
        count_ser <= count_ser +'b1;
    end
    else begin
        count_ser <= 'b0;
    end
end
    
endmodule