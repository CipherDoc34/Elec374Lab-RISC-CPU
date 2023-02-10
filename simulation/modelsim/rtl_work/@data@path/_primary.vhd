library verilog;
use verilog.vl_types.all;
entity DataPath is
    port(
        PCout           : in     vl_logic;
        ZLOout          : in     vl_logic;
        MDRout          : in     vl_logic;
        R2out           : in     vl_logic;
        R3out           : in     vl_logic;
        MARin           : in     vl_logic;
        PCin            : in     vl_logic;
        MDRin           : in     vl_logic;
        IRin            : in     vl_logic;
        Yin             : in     vl_logic;
        IncPC           : in     vl_logic;
        Read            : in     vl_logic;
        R1in            : in     vl_logic;
        R2in            : in     vl_logic;
        R3in            : in     vl_logic;
        clock           : in     vl_logic;
        ALUin           : in     vl_logic;
        ZMuxEnbale      : in     vl_logic;
        ZSelect         : in     vl_logic;
        ZMuxOut         : in     vl_logic;
        Mdatain         : in     vl_logic_vector(31 downto 0);
        aluControl      : in     vl_logic_vector(4 downto 0);
        \out\           : out    vl_logic_vector(31 downto 0)
    );
end DataPath;
