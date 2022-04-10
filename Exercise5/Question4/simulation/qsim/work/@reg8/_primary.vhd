library verilog;
use verilog.vl_types.all;
entity Reg8 is
    port(
        DATA            : in     vl_logic_vector(7 downto 0);
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        SET             : in     vl_logic;
        Q               : out    vl_logic_vector(7 downto 0)
    );
end Reg8;
