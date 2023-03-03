library verilog;
use verilog.vl_types.all;
entity conFF is
    port(
        conin           : in     vl_logic;
        BusMuxIn        : in     vl_logic_vector(31 downto 0);
        IR              : in     vl_logic_vector(31 downto 0);
        conff           : out    vl_logic
    );
end conFF;
