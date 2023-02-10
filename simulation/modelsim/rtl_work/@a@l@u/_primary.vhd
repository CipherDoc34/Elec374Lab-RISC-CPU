library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        YMuxOut         : in     vl_logic_vector(31 downto 0);
        BusMuxOut       : in     vl_logic_vector(31 downto 0);
        ALUControl      : in     vl_logic_vector(4 downto 0);
        ALUin           : in     vl_logic;
        ZMuxIn          : out    vl_logic_vector(63 downto 0)
    );
end ALU;
