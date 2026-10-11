library verilog;
use verilog.vl_types.all;
entity CLK_GATING is
    port(
        CLK             : in     vl_logic;
        EN_CLK          : in     vl_logic;
        CLK_GATED       : out    vl_logic
    );
end CLK_GATING;
