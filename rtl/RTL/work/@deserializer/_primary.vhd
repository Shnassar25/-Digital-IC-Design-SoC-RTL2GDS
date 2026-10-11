library verilog;
use verilog.vl_types.all;
entity Deserializer is
    generic(
        WIDTH           : integer := 8;
        PRESCALE        : integer := 6
    );
    port(
        Clk_d           : in     vl_logic;
        RST_d           : in     vl_logic;
        Serial_Data_d   : in     vl_logic;
        deser_en_d      : in     vl_logic;
        edge_cont_ds    : in     vl_logic_vector;
        prescale_ds     : in     vl_logic_vector;
        P_Data_d        : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of PRESCALE : constant is 1;
end Deserializer;
