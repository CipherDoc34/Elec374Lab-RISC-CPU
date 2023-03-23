library verilog;
use verilog.vl_types.all;
entity DataPath is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic
    );
end DataPath;
