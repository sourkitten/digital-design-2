library verilog;
use verilog.vl_types.all;
entity Question5 is
    port(
        Q               : out    vl_logic;
        SET             : in     vl_logic;
        CLRN            : in     vl_logic;
        K               : in     vl_logic;
        J               : in     vl_logic;
        CLK             : in     vl_logic
    );
end Question5;
