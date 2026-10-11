library verilog;
use verilog.vl_types.all;
entity parity_check is
    generic(
        PAR_TYP_EVEN    : vl_logic := Hi0;
        PAR_TYP_ODD     : vl_logic := Hi1;
        WIDTH           : integer := 8
    );
    port(
        clk_parity      : in     vl_logic;
        rst_parity      : in     vl_logic;
        PAR_TYP         : in     vl_logic;
        parity_chk_en_parity: in     vl_logic;
        sampled_bit_parity: in     vl_logic;
        data_in_parity  : in     vl_logic_vector;
        parity_error    : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of PAR_TYP_EVEN : constant is 1;
    attribute mti_svvh_generic_type of PAR_TYP_ODD : constant is 1;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
end parity_check;
