library verilog;
use verilog.vl_types.all;
entity UART_RX is
    generic(
        WIDTH           : integer := 8;
        PRESCALE        : integer := 6;
        PAR_TYP_EVEN    : vl_logic := Hi0;
        PAR_TYP_ODD     : vl_logic := Hi1
    );
    port(
        i_Clk_RX        : in     vl_logic;
        i_RST_RX        : in     vl_logic;
        i_Serial_Data_RX: in     vl_logic;
        i_PAR_EN_RX     : in     vl_logic;
        i_PAR_TYP_RX    : in     vl_logic;
        i_Prescale_RX   : in     vl_logic_vector;
        o_P_Data_RX     : out    vl_logic_vector;
        o_Data_Valid_RX : out    vl_logic;
        o_Stop_Error_RX : out    vl_logic;
        o_Parity_Error_RX: out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of PRESCALE : constant is 1;
    attribute mti_svvh_generic_type of PAR_TYP_EVEN : constant is 1;
    attribute mti_svvh_generic_type of PAR_TYP_ODD : constant is 1;
end UART_RX;
