library verilog;
use verilog.vl_types.all;
entity ZMux is
    port(
        ZMuxIn          : in     vl_logic_vector(63 downto 0);
        ZSelect         : in     vl_logic;
        ZMuxEnable      : in     vl_logic;
        BusMuxOut       : out    vl_logic_vector(31 downto 0)
    );
end ZMux;
