library verilog;
use verilog.vl_types.all;
entity UART_TX is
    generic(
        WIDTH           : integer := 8;
        START_BIT       : vl_logic := Hi0;
        STOP_BIT        : vl_logic := Hi1
    );
    port(
        i_CLK_TX        : in     vl_logic;
        i_RST_TX        : in     vl_logic;
        i_DATA_Valid_TX : in     vl_logic;
        i_DATA_TX       : in     vl_logic_vector;
        i_PAR_EN_TX     : in     vl_logic;
        i_PAR_TYP_TX    : in     vl_logic;
        o_OUT_TX        : out    vl_logic;
        o_BUSY_TX       : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of START_BIT : constant is 1;
    attribute mti_svvh_generic_type of STOP_BIT : constant is 1;
end UART_TX;
