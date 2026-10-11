library verilog;
use verilog.vl_types.all;
entity SYS_CTRL is
    generic(
        WIDTH           : integer := 8;
        ADDR            : integer := 4
    );
    port(
        CLK             : in     vl_logic;
        RST_N           : in     vl_logic;
        ALU_OUT         : in     vl_logic_vector;
        ALU_OUT_Valid   : in     vl_logic;
        RD_DATA         : in     vl_logic_vector;
        RD_DATA_VLD     : in     vl_logic;
        FIFO_FULL       : in     vl_logic;
        RX_DATA         : in     vl_logic_vector;
        RX_VLD          : in     vl_logic;
        ALU_FUN         : out    vl_logic_vector;
        ALU_EN          : out    vl_logic;
        CLKG_EN         : out    vl_logic;
        WR_EN           : out    vl_logic;
        RD_EN           : out    vl_logic;
        ADDR_S          : out    vl_logic_vector;
        WR_DATA_S       : out    vl_logic_vector;
        TX_P_DATA       : out    vl_logic_vector;
        TX_D_VLD        : out    vl_logic;
        CLK_DIV_EN      : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of ADDR : constant is 1;
end SYS_CTRL;
