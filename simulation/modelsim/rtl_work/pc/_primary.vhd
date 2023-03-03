library verilog;
use verilog.vl_types.all;
entity pc is
    generic(
        INITIAL_ADDR    : integer := 0
    );
    port(
        clear           : in     vl_logic;
        clock           : in     vl_logic;
        pcenable        : in     vl_logic;
        incPC           : in     vl_logic;
        BusMuxOut       : in     vl_logic_vector(31 downto 0);
        BusMuxIn        : out    vl_logic_vector(31 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of INITIAL_ADDR : constant is 1;
end pc;
