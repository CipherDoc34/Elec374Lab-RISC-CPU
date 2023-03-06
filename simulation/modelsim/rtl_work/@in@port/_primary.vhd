library verilog;
use verilog.vl_types.all;
entity InPort is
    generic(
        DATA_WIDTH_IN   : integer := 32;
        DATA_WIDTH_OUT  : integer := 32;
        INIT            : integer := 0
    );
    port(
        clear           : in     vl_logic;
        clock           : in     vl_logic;
        inputData       : in     vl_logic_vector;
        BusMuxIn        : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH_IN : constant is 1;
    attribute mti_svvh_generic_type of DATA_WIDTH_OUT : constant is 1;
    attribute mti_svvh_generic_type of INIT : constant is 1;
end InPort;
