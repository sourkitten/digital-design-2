library verilog;
use verilog.vl_types.all;
entity Question4 is
    port(
        Q               : out    vl_logic;
        CLRN            : in     vl_logic;
        CLK             : in     vl_logic;
        D               : in     vl_logic;
        SET             : in     vl_logic
    );
end Question4;
