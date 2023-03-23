library verilog;
use verilog.vl_types.all;
entity ControlUnit is
    generic(
        Reset_state     : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        T0              : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi1);
        T1              : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi0, Hi1, Hi0);
        T2              : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi0, Hi1, Hi1);
        ld3             : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi1, Hi0, Hi0);
        ld4             : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi1, Hi0, Hi1);
        ld5             : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi1, Hi1, Hi0);
        ld6             : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi1, Hi1, Hi1);
        ld7             : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi1, Hi0, Hi0, Hi0);
        ldi3            : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi1, Hi0, Hi0, Hi1);
        ldi4            : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi1, Hi0, Hi1, Hi0);
        ldi5            : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi1, Hi0, Hi1, Hi1);
        st3             : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi1, Hi1, Hi0, Hi0);
        st4             : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi1, Hi1, Hi0, Hi1);
        st5             : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi1, Hi1, Hi1, Hi0);
        st6             : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi1, Hi1, Hi1, Hi1);
        st7             : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi0, Hi0, Hi0, Hi0);
        ALUi3           : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi0, Hi0, Hi0, Hi1);
        ALUi4           : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi0, Hi0, Hi1, Hi0);
        ALUi5           : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi0, Hi0, Hi1, Hi1);
        ALU3            : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi0, Hi1, Hi0, Hi0);
        ALU4            : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi0, Hi1, Hi0, Hi1);
        ALU5            : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi0, Hi1, Hi1, Hi0);
        MULDIV6         : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi0, Hi1, Hi1, Hi1);
        br3             : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi1, Hi0, Hi0, Hi0);
        br4             : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi1, Hi0, Hi0, Hi1);
        br5             : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi1, Hi0, Hi1, Hi0);
        br6             : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi1, Hi0, Hi1, Hi1);
        jr3             : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi1, Hi1, Hi0, Hi0);
        jal3            : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi1, Hi1, Hi0, Hi1);
        jal4            : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi1, Hi1, Hi1, Hi0);
        in3             : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi1, Hi1, Hi1, Hi1);
        out3            : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi0, Hi0, Hi0);
        mfhi3           : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi0, Hi0, Hi1);
        mflo3           : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi0, Hi1, Hi0);
        halt3           : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi0, Hi1, Hi1);
        nop3            : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi1, Hi0, Hi0);
        ALUadd          : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi0, Hi1, Hi1);
        ld              : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi0, Hi0, Hi0);
        ldi             : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi0, Hi0, Hi1);
        st              : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi0, Hi1, Hi0);
        add             : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi0, Hi1, Hi1);
        sub             : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi1, Hi0, Hi0);
        ANDop           : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi1, Hi0, Hi1);
        ORop            : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi1, Hi1, Hi0);
        shr             : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi1, Hi1, Hi1);
        shra            : vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi0, Hi0, Hi0);
        shl             : vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi0, Hi0, Hi1);
        \ror\           : vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi0, Hi1, Hi0);
        \rol\           : vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi0, Hi1, Hi1);
        mul             : vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi1, Hi1, Hi1);
        div             : vl_logic_vector(0 to 4) := (Hi1, Hi0, Hi0, Hi0, Hi0);
        neg             : vl_logic_vector(0 to 4) := (Hi1, Hi0, Hi0, Hi0, Hi1);
        NOTop           : vl_logic_vector(0 to 4) := (Hi1, Hi0, Hi0, Hi1, Hi0);
        addi            : vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi1, Hi0, Hi0);
        andi            : vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi1, Hi0, Hi1);
        ori             : vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi1, Hi1, Hi0);
        br              : vl_logic_vector(0 to 4) := (Hi1, Hi0, Hi0, Hi1, Hi1);
        jr              : vl_logic_vector(0 to 4) := (Hi1, Hi0, Hi1, Hi0, Hi0);
        jal             : vl_logic_vector(0 to 4) := (Hi1, Hi0, Hi1, Hi0, Hi1);
        \in\            : vl_logic_vector(0 to 4) := (Hi1, Hi0, Hi1, Hi1, Hi0);
        \out\           : vl_logic_vector(0 to 4) := (Hi1, Hi0, Hi1, Hi1, Hi1);
        mfhi            : vl_logic_vector(0 to 4) := (Hi1, Hi1, Hi0, Hi0, Hi0);
        mflo            : vl_logic_vector(0 to 4) := (Hi1, Hi1, Hi0, Hi0, Hi1);
        nop             : vl_logic_vector(0 to 4) := (Hi1, Hi1, Hi0, Hi1, Hi0);
        halt            : vl_logic_vector(0 to 4) := (Hi1, Hi1, Hi0, Hi1, Hi1)
    );
    port(
        PCout           : out    vl_logic;
        PCin            : out    vl_logic;
        IncPC           : out    vl_logic;
        IRin            : out    vl_logic;
        Zin             : out    vl_logic;
        ZLOout          : out    vl_logic;
        ZHIout          : out    vl_logic;
        CSignout        : out    vl_logic;
        aluControl      : out    vl_logic_vector(4 downto 0);
        RAMenable       : out    vl_logic;
        MDRout          : out    vl_logic;
        MARin           : out    vl_logic;
        MDRin           : out    vl_logic;
        Gra             : out    vl_logic;
        Grb             : out    vl_logic;
        Grc             : out    vl_logic;
        Rin             : out    vl_logic;
        Rout            : out    vl_logic;
        BAout           : out    vl_logic;
        read            : out    vl_logic;
        write           : out    vl_logic;
        clear           : out    vl_logic;
        conin           : out    vl_logic;
        ZMuxEnable      : out    vl_logic;
        ZSelect         : out    vl_logic;
        ZMuxOut         : out    vl_logic;
        OutPortenable   : out    vl_logic;
        PortInout       : out    vl_logic;
        R15inC          : out    vl_logic;
        Yin             : out    vl_logic;
        IR              : in     vl_logic_vector(31 downto 0);
        conOut          : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Reset_state : constant is 1;
    attribute mti_svvh_generic_type of T0 : constant is 1;
    attribute mti_svvh_generic_type of T1 : constant is 1;
    attribute mti_svvh_generic_type of T2 : constant is 1;
    attribute mti_svvh_generic_type of ld3 : constant is 1;
    attribute mti_svvh_generic_type of ld4 : constant is 1;
    attribute mti_svvh_generic_type of ld5 : constant is 1;
    attribute mti_svvh_generic_type of ld6 : constant is 1;
    attribute mti_svvh_generic_type of ld7 : constant is 1;
    attribute mti_svvh_generic_type of ldi3 : constant is 1;
    attribute mti_svvh_generic_type of ldi4 : constant is 1;
    attribute mti_svvh_generic_type of ldi5 : constant is 1;
    attribute mti_svvh_generic_type of st3 : constant is 1;
    attribute mti_svvh_generic_type of st4 : constant is 1;
    attribute mti_svvh_generic_type of st5 : constant is 1;
    attribute mti_svvh_generic_type of st6 : constant is 1;
    attribute mti_svvh_generic_type of st7 : constant is 1;
    attribute mti_svvh_generic_type of ALUi3 : constant is 1;
    attribute mti_svvh_generic_type of ALUi4 : constant is 1;
    attribute mti_svvh_generic_type of ALUi5 : constant is 1;
    attribute mti_svvh_generic_type of ALU3 : constant is 1;
    attribute mti_svvh_generic_type of ALU4 : constant is 1;
    attribute mti_svvh_generic_type of ALU5 : constant is 1;
    attribute mti_svvh_generic_type of MULDIV6 : constant is 1;
    attribute mti_svvh_generic_type of br3 : constant is 1;
    attribute mti_svvh_generic_type of br4 : constant is 1;
    attribute mti_svvh_generic_type of br5 : constant is 1;
    attribute mti_svvh_generic_type of br6 : constant is 1;
    attribute mti_svvh_generic_type of jr3 : constant is 1;
    attribute mti_svvh_generic_type of jal3 : constant is 1;
    attribute mti_svvh_generic_type of jal4 : constant is 1;
    attribute mti_svvh_generic_type of in3 : constant is 1;
    attribute mti_svvh_generic_type of out3 : constant is 1;
    attribute mti_svvh_generic_type of mfhi3 : constant is 1;
    attribute mti_svvh_generic_type of mflo3 : constant is 1;
    attribute mti_svvh_generic_type of halt3 : constant is 1;
    attribute mti_svvh_generic_type of nop3 : constant is 1;
    attribute mti_svvh_generic_type of ALUadd : constant is 1;
    attribute mti_svvh_generic_type of ld : constant is 1;
    attribute mti_svvh_generic_type of ldi : constant is 1;
    attribute mti_svvh_generic_type of st : constant is 1;
    attribute mti_svvh_generic_type of add : constant is 1;
    attribute mti_svvh_generic_type of sub : constant is 1;
    attribute mti_svvh_generic_type of ANDop : constant is 1;
    attribute mti_svvh_generic_type of ORop : constant is 1;
    attribute mti_svvh_generic_type of shr : constant is 1;
    attribute mti_svvh_generic_type of shra : constant is 1;
    attribute mti_svvh_generic_type of shl : constant is 1;
    attribute mti_svvh_generic_type of \ror\ : constant is 1;
    attribute mti_svvh_generic_type of \rol\ : constant is 1;
    attribute mti_svvh_generic_type of mul : constant is 1;
    attribute mti_svvh_generic_type of div : constant is 1;
    attribute mti_svvh_generic_type of neg : constant is 1;
    attribute mti_svvh_generic_type of NOTop : constant is 1;
    attribute mti_svvh_generic_type of addi : constant is 1;
    attribute mti_svvh_generic_type of andi : constant is 1;
    attribute mti_svvh_generic_type of ori : constant is 1;
    attribute mti_svvh_generic_type of br : constant is 1;
    attribute mti_svvh_generic_type of jr : constant is 1;
    attribute mti_svvh_generic_type of jal : constant is 1;
    attribute mti_svvh_generic_type of \in\ : constant is 1;
    attribute mti_svvh_generic_type of \out\ : constant is 1;
    attribute mti_svvh_generic_type of mfhi : constant is 1;
    attribute mti_svvh_generic_type of mflo : constant is 1;
    attribute mti_svvh_generic_type of nop : constant is 1;
    attribute mti_svvh_generic_type of halt : constant is 1;
end ControlUnit;