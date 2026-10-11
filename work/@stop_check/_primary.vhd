library verilog;
use verilog.vl_types.all;
entity Stop_check is
    port(
        clk_stop        : in     vl_logic;
        rst_stop        : in     vl_logic;
        stop_chk_en_stop: in     vl_logic;
        sampled_bit_stop: in     vl_logic;
        stop_error      : out    vl_logic
    );
end Stop_check;
