library verilog;
use verilog.vl_types.all;
entity SE is
    port(
        Gra             : in     vl_logic;
        Grb             : in     vl_logic;
        Grc             : in     vl_logic;
        Rin             : in     vl_logic;
        Rout            : in     vl_logic;
        BAout           : in     vl_logic;
        IR              : in     vl_logic_vector(31 downto 0);
        CSign           : out    vl_logic_vector(31 downto 0);
        \in\            : out    vl_logic_vector(16 downto 0);
        \out\           : out    vl_logic_vector(16 downto 0)
    );
end SE;
