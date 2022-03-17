library verilog;
use verilog.vl_types.all;
entity accumulator is
    port(
        Hex6            : out    vl_logic_vector(6 downto 0);
        R               : out    vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        E               : in     vl_logic;
        I               : in     vl_logic_vector(3 downto 0);
        Hex7            : out    vl_logic_vector(6 downto 0)
    );
end accumulator;
