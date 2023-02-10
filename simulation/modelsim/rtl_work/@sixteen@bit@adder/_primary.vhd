library verilog;
use verilog.vl_types.all;
entity SixteenBitAdder is
    port(
        c0              : in     vl_logic;
        X               : in     vl_logic_vector(15 downto 0);
        Y               : in     vl_logic_vector(15 downto 0);
        Gpp             : out    vl_logic;
        Ppp             : out    vl_logic;
        S               : out    vl_logic_vector(15 downto 0)
    );
end SixteenBitAdder;
