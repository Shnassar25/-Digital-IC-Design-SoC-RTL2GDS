library verilog;
use verilog.vl_types.all;
entity REG_file is
    generic(
        WIDTH           : integer := 8;
        NO_OF_REG       : integer := 16;
        ADDR            : vl_notype
    );
    port(
        CLK_regfile     : in     vl_logic;
        RST_regfile     : in     vl_logic;
        WrData          : in     vl_logic_vector;
        Address         : in     vl_logic_vector;
        WrEn            : in     vl_logic;
        RdEn            : in     vl_logic;
        RdData          : out    vl_logic_vector;
        RdData_Valid    : out    vl_logic;
        REG0            : out    vl_logic_vector;
        REG1            : out    vl_logic_vector;
        REG2            : out    vl_logic_vector;
        REG3            : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of NO_OF_REG : constant is 1;
    attribute mti_svvh_generic_type of ADDR : constant is 3;
end REG_file;
