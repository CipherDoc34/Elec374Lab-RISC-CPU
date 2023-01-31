library verilog;
use verilog.vl_types.all;
entity \register\ is
    port(
        clear           : in     vl_logic;
        clock           : in     vl_logic;
        REnable         : in     vl_logic;
        BusMuxOut       : in     vl_logic_vector(31 downto 0);
        BusMuxIn        : out    vl_logic_vector(31 downto 0)
    );
end \register\;
