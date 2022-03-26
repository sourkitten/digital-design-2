library verilog;
use verilog.vl_types.all;
entity Question2 is
    port(
        A               : out    vl_logic_vector(7 downto 0);
        reset           : in     vl_logic;
        CLK             : in     vl_logic;
        Sin             : in     vl_logic;
        S               : in     vl_logic;
        B               : out    vl_logic_vector(7 downto 0)
    );
end Question2;
