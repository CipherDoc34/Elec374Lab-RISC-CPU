library verilog;
use verilog.vl_types.all;
entity DataPath is
    port(
        PCout           : in     vl_logic;
        IncPC           : in     vl_logic;
        ZLOout          : in     vl_logic;
        ZLOin           : in     vl_logic;
        CSignout        : in     vl_logic;
        MDRout          : in     vl_logic;
        RAMenable       : in     vl_logic;
        MARin           : in     vl_logic;
        PCin            : in     vl_logic;
        MDRin           : in     vl_logic;
        IRin            : in     vl_logic;
        Gra             : in     vl_logic;
        Grb             : in     vl_logic;
        Grc             : in     vl_logic;
        Rin             : in     vl_logic;
        Rout            : in     vl_logic;
        BAout           : in     vl_logic;
        clock           : in     vl_logic;
        read            : in     vl_logic;
        write           : in     vl_logic;
        clear           : in     vl_logic;
        conin           : in     vl_logic;
        ZMuxEnbale      : in     vl_logic;
        ZSelect         : in     vl_logic;
        ZMuxOut         : in     vl_logic;
        aluControl      : in     vl_logic_vector(4 downto 0);
        Yin             : in     vl_logic;
        DummyOut        : out    vl_logic_vector(31 downto 0)
    );
end DataPath;
