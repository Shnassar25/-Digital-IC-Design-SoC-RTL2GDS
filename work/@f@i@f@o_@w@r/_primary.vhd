library verilog;
use verilog.vl_types.all;
entity FIFO_WR is
    generic(
        ADDR            : integer := 4
    );
    port(
        W_clk           : in     vl_logic;
        W_rst_n         : in     vl_logic;
        W_inc           : in     vl_logic;
        Wq2_ptr         : in     vl_logic_vector;
        W_ptr           : out    vl_logic_vector;
        W_addr          : out    vl_logic_vector;
        W_full          : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ADDR : constant is 1;
end FIFO_WR;
