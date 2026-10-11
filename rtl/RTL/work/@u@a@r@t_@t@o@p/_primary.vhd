library verilog;
use verilog.vl_types.all;
entity UART_TOP is
    generic(
        WIDTH           : integer := 8;
        PRESCALE        : integer := 6;
        START_BIT       : vl_logic := Hi0;
        STOP_BIT        : vl_logic := Hi1;
        PAR_TYP_EVEN    : vl_logic := Hi0;
        PAR_TYP_ODD     : vl_logic := Hi1
    );
    port(
        i_CLK_TX        : in     vl_logic;
        i_CLK_RX        : in     vl_logic;
        i_RST           : in     vl_logic;
        i_DATA_Valid_TX : in     vl_logic;
        i_DATA_TX       : in     vl_logic_vector;
        i_PAR_EN_TX     : in     vl_logic;
        i_PAR_TYP_TX    : in     vl_logic;
        i_Serial_Data_RX: in     vl_logic;
        i_PAR_EN_RX     : in     vl_logic;
        i_PAR_TYP_RX    : in     vl_logic;
        i_Prescale_RX   : in     vl_logic_vector;
        o_OUT_TX        : out    vl_logic;
        o_BUSY_TX       : out    vl_logic;
        o_P_Data_RX     : out    vl_logic_vector;
        o_Data_Valid_RX : out    vl_logic;
        o_Stop_Error_RX : out    vl_logic;
        o_Parity_Error_RX: out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of PRESCALE : constant is 1;
    attribute mti_svvh_generic_type of START_BIT : constant is 1;
    attribute mti_svvh_generic_type of STOP_BIT : constant is 1;
    attribute mti_svvh_generic_type of PAR_TYP_EVEN : constant is 1;
    attribute mti_svvh_generic_type of PAR_TYP_ODD : constant is 1;
end UART_TOP;
