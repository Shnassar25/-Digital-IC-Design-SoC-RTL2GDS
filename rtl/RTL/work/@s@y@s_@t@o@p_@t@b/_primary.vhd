library verilog;
use verilog.vl_types.all;
entity SYS_TOP_TB is
    generic(
        WIDTH_tb        : integer := 8;
        ADDR_tb         : integer := 4;
        NO_OF_REG_tb    : vl_notype;
        BIT_TIME        : integer := 271;
        PRESCALE        : integer := 32;
        BIT_PERIOD      : vl_logic_vector(31 downto 0);
        REF_PERIOD      : integer := 20
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH_tb : constant is 1;
    attribute mti_svvh_generic_type of ADDR_tb : constant is 1;
    attribute mti_svvh_generic_type of NO_OF_REG_tb : constant is 3;
    attribute mti_svvh_generic_type of BIT_TIME : constant is 2;
    attribute mti_svvh_generic_type of PRESCALE : constant is 2;
    attribute mti_svvh_generic_type of BIT_PERIOD : constant is 4;
    attribute mti_svvh_generic_type of REF_PERIOD : constant is 2;
end SYS_TOP_TB;
