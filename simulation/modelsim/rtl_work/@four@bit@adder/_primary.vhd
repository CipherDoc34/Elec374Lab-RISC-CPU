library verilog;
use verilog.vl_types.all;
entity FourBitAdder is
    port(
        c0              : in     vl_logic;
        X               : in     vl_logic_vector(3 downto 0);
        Y               : in     vl_logic_vector(3 downto 0);
        Gp              : out    vl_logic;
        Pp              : out    vl_logic;
        S               : out    vl_logic_vector(3 downto 0)
    );
end FourBitAdder;
