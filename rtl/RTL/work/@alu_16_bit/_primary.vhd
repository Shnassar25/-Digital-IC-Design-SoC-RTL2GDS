library verilog;
use verilog.vl_types.all;
entity Alu_16_bit is
    generic(
        OPER_WIDTH      : integer := 8;
        OUT_WIDTH       : vl_notype;
        ALU_FUN_WIDTH   : vl_notype
    );
    port(
        CLK_alu         : in     vl_logic;
        RST_alu         : in     vl_logic;
        EN_alu          : in     vl_logic;
        A               : in     vl_logic_vector;
        B               : in     vl_logic_vector;
        ALU_FUN         : in     vl_logic_vector;
        ALU_OUT         : out    vl_logic_vector;
        OUT_VALID       : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of OPER_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of OUT_WIDTH : constant is 3;
    attribute mti_svvh_generic_type of ALU_FUN_WIDTH : constant is 3;
end Alu_16_bit;
