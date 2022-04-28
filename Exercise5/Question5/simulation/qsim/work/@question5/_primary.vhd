library verilog;
use verilog.vl_types.all;
entity Question5 is
    port(
        HEX1            : out    vl_logic_vector(6 downto 0);
        Q               : out    vl_logic_vector(7 downto 0);
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        SET             : in     vl_logic;
        EN              : in     vl_logic;
        HEX2            : out    vl_logic_vector(6 downto 0)
    );
end Question5;
