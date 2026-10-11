library verilog;
use verilog.vl_types.all;
entity Parity_Calc is
    generic(
        WIDTH           : integer := 8
    );
    port(
        i_Clk_p         : in     vl_logic;
        i_RST_p         : in     vl_logic;
        i_Data_Valid_p  : in     vl_logic;
        i_DATA          : in     vl_logic_vector;
        i_PAR_TYP_p     : in     vl_logic;
        i_PAR_En_p      : in     vl_logic;
        i_Busy_p        : in     vl_logic;
        o_Par_bit       : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
end Parity_Calc;
