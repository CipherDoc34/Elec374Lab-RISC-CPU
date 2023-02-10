library verilog;
use verilog.vl_types.all;
entity ThirtyTwoBitAdder is
    port(
        c0              : in     vl_logic;
        X               : in     vl_logic_vector(31 downto 0);
        Y               : in     vl_logic_vector(31 downto 0);
        Gpp             : out    vl_logic;
        Ppp             : out    vl_logic;
        S               : out    vl_logic_vector(31 downto 0)
    );
end ThirtyTwoBitAdder;
