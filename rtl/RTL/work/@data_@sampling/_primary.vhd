library verilog;
use verilog.vl_types.all;
entity Data_Sampling is
    generic(
        PRESCALE        : integer := 6
    );
    port(
        clk_ds          : in     vl_logic;
        rst_ds          : in     vl_logic;
        Data_sample_en  : in     vl_logic;
        edge_cont_ds    : in     vl_logic_vector;
        prescale_ds     : in     vl_logic_vector;
        data_in_ds      : in     vl_logic;
        sampled_bit_ds  : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of PRESCALE : constant is 1;
end Data_Sampling;
