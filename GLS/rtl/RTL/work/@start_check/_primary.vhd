library verilog;
use verilog.vl_types.all;
entity Start_check is
    port(
        clk_start       : in     vl_logic;
        rst_start       : in     vl_logic;
        start_chk_en_start: in     vl_logic;
        sampled_bit_start: in     vl_logic;
        start_error     : out    vl_logic
    );
end Start_check;
