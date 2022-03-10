library verilog;
use verilog.vl_types.all;
entity Question6 is
    port(
        Q               : out    vl_logic;
        SET             : in     vl_logic;
        CLRN            : in     vl_logic;
        T               : in     vl_logic;
        CLK             : in     vl_logic
    );
end Question6;
