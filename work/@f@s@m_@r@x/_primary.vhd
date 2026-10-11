library verilog;
use verilog.vl_types.all;
entity FSM_RX is
    generic(
        PRESCALE        : integer := 6;
        DATA_BITS       : integer := 8;
        cont_bits       : vl_notype
    );
    port(
        clk_fsm         : in     vl_logic;
        rst_fsm         : in     vl_logic;
        data_in_fsm     : in     vl_logic;
        bit_cont_fsm    : in     vl_logic_vector;
        parity_en_fsm   : in     vl_logic;
        edge_cont_fsm   : in     vl_logic_vector;
        prescale_fsm    : in     vl_logic_vector;
        parity_err_fsm  : in     vl_logic;
        stop_err_fsm    : in     vl_logic;
        start_glitch_fsm: in     vl_logic;
        parity_check_en_fsm: out    vl_logic;
        start_check_en_fsm: out    vl_logic;
        stop_check_en_fsm: out    vl_logic;
        deserializer_en_fsm: out    vl_logic;
        data_valid_fsm  : out    vl_logic;
        Enable_sampling_fsm: out    vl_logic;
        Data_sample_en_fsm: out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of PRESCALE : constant is 1;
    attribute mti_svvh_generic_type of DATA_BITS : constant is 1;
    attribute mti_svvh_generic_type of cont_bits : constant is 3;
end FSM_RX;
