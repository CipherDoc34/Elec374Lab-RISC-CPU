library verilog;
use verilog.vl_types.all;
entity BCell is
    port(
        x               : in     vl_logic;
        y               : in     vl_logic;
        c               : in     vl_logic;
        G               : out    vl_logic;
        P               : out    vl_logic;
        S               : out    vl_logic
    );
end BCell;
