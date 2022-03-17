library verilog;
use verilog.vl_types.all;
entity Question1 is
    port(
        R               : out    vl_logic_vector(7 downto 0);
        F               : in     vl_logic_vector(7 downto 0);
        I               : in     vl_logic_vector(3 downto 0)
    );
end Question1;
