library verilog;
use verilog.vl_types.all;
entity FIFO_MEM_CNTRL is
    generic(
        ADDR            : integer := 4;
        DATA            : integer := 8;
        DEPTH           : integer := 16
    );
    port(
        W_clk           : in     vl_logic;
        W_rst           : in     vl_logic;
        W_inc           : in     vl_logic;
        W_full          : in     vl_logic;
        W_addr          : in     vl_logic_vector;
        R_addr          : in     vl_logic_vector;
        W_data          : in     vl_logic_vector;
        R_data          : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ADDR : constant is 1;
    attribute mti_svvh_generic_type of DATA : constant is 1;
    attribute mti_svvh_generic_type of DEPTH : constant is 1;
end FIFO_MEM_CNTRL;
