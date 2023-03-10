library verilog;
use verilog.vl_types.all;
entity branch_tb is
    generic(
        init            : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi0);
        T0              : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi1);
        T1              : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi0);
        T2              : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi1);
        T3              : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi0);
        T4              : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi1);
        T5              : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi0);
        T6              : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi1)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of init : constant is 1;
    attribute mti_svvh_generic_type of T0 : constant is 1;
    attribute mti_svvh_generic_type of T1 : constant is 1;
    attribute mti_svvh_generic_type of T2 : constant is 1;
    attribute mti_svvh_generic_type of T3 : constant is 1;
    attribute mti_svvh_generic_type of T4 : constant is 1;
    attribute mti_svvh_generic_type of T5 : constant is 1;
    attribute mti_svvh_generic_type of T6 : constant is 1;
end branch_tb;
