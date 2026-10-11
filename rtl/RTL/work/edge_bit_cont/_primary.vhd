library verilog;
use verilog.vl_types.all;
entity edge_bit_cont is
    generic(
        PRESCALE        : integer := 6;
        DATA_BITS       : integer := 8;
        cont_bits       : vl_notype
    );
    port(
        clk_cont        : in     vl_logic;
        rst_cont        : in     vl_logic;
        Enable_sampling_cont: in     vl_logic;
        prescale_cont   : in     vl_logic_vector;
        parity_en_cont  : in     vl_logic;
        bit_cont        : out    vl_logic_vector;
        edge_cont       : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of PRESCALE : constant is 1;
    attribute mti_svvh_generic_type of DATA_BITS : constant is 1;
    attribute mti_svvh_generic_type of cont_bits : constant is 3;
end edge_bit_cont;
