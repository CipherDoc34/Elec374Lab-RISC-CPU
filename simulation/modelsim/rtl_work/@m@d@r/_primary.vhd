library verilog;
use verilog.vl_types.all;
entity MDR is
    port(
        clear           : in     vl_logic;
        clock           : in     vl_logic;
        MDRIn           : in     vl_logic;
        BusMuxOut       : in     vl_logic_vector(31 downto 0);
        MDatain         : in     vl_logic_vector(31 downto 0);
        Read            : in     vl_logic;
        BusMuxInMDR     : out    vl_logic_vector(31 downto 0)
    );
end MDR;
