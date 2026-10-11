library verilog;
use verilog.vl_types.all;
entity Mux is
    port(
        i_Clk_mux       : in     vl_logic;
        i_RST_mux       : in     vl_logic;
        i_mux_sel       : in     vl_logic_vector(1 downto 0);
        i_IN_0_mux      : in     vl_logic;
        i_IN_1_mux      : in     vl_logic;
        i_IN_2_mux      : in     vl_logic;
        i_IN_3_mux      : in     vl_logic;
        o_OUT_mux       : out    vl_logic
    );
end Mux;
