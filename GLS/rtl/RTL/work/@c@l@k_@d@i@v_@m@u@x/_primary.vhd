library verilog;
use verilog.vl_types.all;
entity CLK_DIV_MUX is
    generic(
        WIDTH           : integer := 8
    );
    port(
        \IN\            : in     vl_logic_vector(5 downto 0);
        \OUT\           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
end CLK_DIV_MUX;
