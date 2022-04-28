library verilog;
use verilog.vl_types.all;
entity Counter8 is
    port(
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        SET             : in     vl_logic;
        EN              : in     vl_logic;
        Q               : out    vl_logic_vector(7 downto 0)
    );
end Counter8;
