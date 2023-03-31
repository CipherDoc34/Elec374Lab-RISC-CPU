library verilog;
use verilog.vl_types.all;
entity DataPath is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        Inport          : in     vl_logic_vector(31 downto 0);
        OutportData     : out    vl_logic_vector(31 downto 0);
        led             : out    vl_logic_vector(7 downto 0)
    );
end DataPath;
