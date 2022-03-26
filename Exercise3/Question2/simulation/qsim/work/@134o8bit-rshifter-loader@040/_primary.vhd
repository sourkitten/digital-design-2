library verilog;
use verilog.vl_types.all;
entity \o8bit-rshifter-loader\ is
    port(
        Sout            : out    vl_logic;
        Y               : out    vl_logic_vector(7 downto 0);
        reset           : in     vl_logic;
        CLK             : in     vl_logic;
        I               : in     vl_logic_vector(7 downto 0);
        S               : in     vl_logic;
        Sin             : in     vl_logic
    );
end \o8bit-rshifter-loader\;
