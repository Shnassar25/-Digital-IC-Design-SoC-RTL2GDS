library verilog;
use verilog.vl_types.all;
entity ASYNC_FIFO is
    generic(
        DATASIZE        : integer := 8;
        ADDRSIZE        : integer := 4;
        DEPTHSIZE       : integer := 16
    );
    port(
        W_CLK           : in     vl_logic;
        W_RST_N         : in     vl_logic;
        W_INC           : in     vl_logic;
        W_DATA          : in     vl_logic_vector;
        R_CLK           : in     vl_logic;
        R_RST_N         : in     vl_logic;
        R_INC           : in     vl_logic;
        W_FULL          : out    vl_logic;
        R_DATA          : out    vl_logic_vector;
        R_EMPTY         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATASIZE : constant is 1;
    attribute mti_svvh_generic_type of ADDRSIZE : constant is 1;
    attribute mti_svvh_generic_type of DEPTHSIZE : constant is 1;
end ASYNC_FIFO;
