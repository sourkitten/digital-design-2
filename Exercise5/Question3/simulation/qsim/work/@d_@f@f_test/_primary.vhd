library verilog;
use verilog.vl_types.all;
entity D_FF_test is
    port(
        Q               : out    vl_logic;
        CLK             : in     vl_logic;
        D               : in     vl_logic;
        CLR             : in     vl_logic;
        SET             : in     vl_logic;
        Qn              : out    vl_logic;
        LQ              : out    vl_logic;
        LQn             : out    vl_logic
    );
end D_FF_test;
