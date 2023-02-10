library verilog;
use verilog.vl_types.all;
entity BoothAlgorithm is
    port(
        X               : in     vl_logic_vector(31 downto 0);
        Y               : in     vl_logic_vector(31 downto 0);
        result          : out    vl_logic_vector(63 downto 0)
    );
end BoothAlgorithm;
