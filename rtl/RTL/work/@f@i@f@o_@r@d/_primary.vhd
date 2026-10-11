library verilog;
use verilog.vl_types.all;
entity FIFO_RD is
    generic(
        ADDR            : integer := 4
    );
    port(
        R_clk           : in     vl_logic;
        R_rst_n         : in     vl_logic;
        R_inc           : in     vl_logic;
        Rq2_ptr         : in     vl_logic_vector;
        R_ptr           : out    vl_logic_vector;
        R_addr          : out    vl_logic_vector;
        R_empty         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ADDR : constant is 1;
end FIFO_RD;
