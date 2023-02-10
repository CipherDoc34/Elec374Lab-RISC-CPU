library verilog;
use verilog.vl_types.all;
entity NonRestoringDivision is
    port(
        Dividend        : in     vl_logic_vector(31 downto 0);
        Divisor         : in     vl_logic_vector(31 downto 0);
        Q               : out    vl_logic_vector(31 downto 0);
        R               : out    vl_logic_vector(31 downto 0)
    );
end NonRestoringDivision;
