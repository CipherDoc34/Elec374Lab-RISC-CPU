library verilog;
use verilog.vl_types.all;
entity carrylookaheadlogic is
    port(
        c0              : in     vl_logic;
        P0              : in     vl_logic;
        G0              : in     vl_logic;
        G1              : in     vl_logic;
        P1              : in     vl_logic;
        P2              : in     vl_logic;
        G2              : in     vl_logic;
        P3              : in     vl_logic;
        G3              : in     vl_logic;
        c1              : out    vl_logic;
        c2              : out    vl_logic;
        c3              : out    vl_logic;
        c4              : out    vl_logic;
        Gp              : out    vl_logic;
        Pp              : out    vl_logic
    );
end carrylookaheadlogic;
