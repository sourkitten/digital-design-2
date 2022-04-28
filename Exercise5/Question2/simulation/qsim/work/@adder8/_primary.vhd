library verilog;
use verilog.vl_types.all;
entity Adder8 is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        Cin             : in     vl_logic;
        Y               : out    vl_logic_vector(7 downto 0);
        Cout            : out    vl_logic
    );
end Adder8;
