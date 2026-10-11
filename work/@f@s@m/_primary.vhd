library verilog;
use verilog.vl_types.all;
entity FSM is
    port(
        i_Clk_fsm       : in     vl_logic;
        i_RST_fsm       : in     vl_logic;
        i_PAR_EN_fsm    : in     vl_logic;
        i_Data_Valid_fsm: in     vl_logic;
        i_Ser_Done_fsm  : in     vl_logic;
        o_Ser_EN_fsm    : out    vl_logic;
        o_Busy_fsm      : out    vl_logic;
        o_Mux_Sel_fsm   : out    vl_logic_vector(1 downto 0)
    );
end FSM;
