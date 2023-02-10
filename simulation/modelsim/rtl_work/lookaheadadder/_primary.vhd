library verilog;
use verilog.vl_types.all;
entity lookaheadadder is
    port(
        x               : in     vl_logic_vector(31 downto 0);
        y               : in     vl_logic_vector(31 downto 0);
        subAdd          : in     vl_logic;
        s               : out    vl_logic_vector(31 downto 0)
    );
end lookaheadadder;
