library verilog;
use verilog.vl_types.all;
entity Serializer is
    generic(
        WIDTH           : integer := 8
    );
    port(
        i_Clk_s         : in     vl_logic;
        i_RST_s         : in     vl_logic;
        i_Data_Valid_s  : in     vl_logic;
        i_P_Data_s      : in     vl_logic_vector;
        i_Busy_s        : in     vl_logic;
        i_Ser_En_s      : in     vl_logic;
        o_Ser_DATA_s    : out    vl_logic;
        o_Ser_Done_s    : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
end Serializer;
