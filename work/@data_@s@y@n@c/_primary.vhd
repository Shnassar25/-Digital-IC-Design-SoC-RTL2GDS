library verilog;
use verilog.vl_types.all;
entity Data_SYNC is
    generic(
        NUM_STAGES      : integer := 2;
        BUS_WIDTH       : integer := 8
    );
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        ASYNC           : in     vl_logic_vector;
        BUS_EN          : in     vl_logic;
        ENABLE_PULSE    : out    vl_logic;
        SYNC_BUS        : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NUM_STAGES : constant is 1;
    attribute mti_svvh_generic_type of BUS_WIDTH : constant is 1;
end Data_SYNC;
