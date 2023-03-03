library verilog;
use verilog.vl_types.all;
entity RAM is
    generic(
        DATA_WIDTH      : integer := 32;
        ADDR_SPACE      : integer := 9
    );
    port(
        datain          : in     vl_logic_vector;
        addr            : in     vl_logic_vector;
        read            : in     vl_logic;
        write           : in     vl_logic;
        enable          : in     vl_logic;
        dataout         : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of ADDR_SPACE : constant is 1;
end RAM;
