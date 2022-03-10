library verilog;
use verilog.vl_types.all;
entity Question7 is
    port(
        Q0              : out    vl_logic;
        CLRN            : in     vl_logic;
        CLK             : in     vl_logic;
        S1              : in     vl_logic;
        S0              : in     vl_logic;
        Q1              : out    vl_logic;
        Q2              : out    vl_logic;
        Q3              : out    vl_logic;
        SI              : in     vl_logic;
        I3              : in     vl_logic;
        SET             : in     vl_logic;
        I2              : in     vl_logic;
        I1              : in     vl_logic;
        I0              : in     vl_logic
    );
end Question7;
