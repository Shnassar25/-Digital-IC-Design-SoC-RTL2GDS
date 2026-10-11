library verilog;
use verilog.vl_types.all;
entity SYS_TOP is
    generic(
        WIDTH           : integer := 8;
        ADDR            : integer := 4;
        NO_OF_REG       : vl_notype
    );
    port(
        REF_CLK         : in     vl_logic;
        UART_CLK        : in     vl_logic;
        RST             : in     vl_logic;
        RX_IN           : in     vl_logic;
        TX_OUT          : out    vl_logic;
        PAR_ERR         : out    vl_logic;
        STOP_ERR        : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of ADDR : constant is 1;
    attribute mti_svvh_generic_type of NO_OF_REG : constant is 3;
end SYS_TOP;
