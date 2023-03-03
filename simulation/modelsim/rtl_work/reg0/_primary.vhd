library verilog;
use verilog.vl_types.all;
entity reg0 is
    port(
        clear           : in     vl_logic;
        clock           : in     vl_logic;
        enable          : in     vl_logic;
        BAout           : in     vl_logic;
        BusMuxOut       : in     vl_logic_vector(31 downto 0);
        BusMuxIn        : out    vl_logic_vector(31 downto 0)
    );
end reg0;
