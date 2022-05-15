library verilog;
use verilog.vl_types.all;
entity Question1 is
    port(
        LCD_RS          : out    vl_logic;
        Rst             : in     vl_logic;
        CLK50           : in     vl_logic;
        DBUS            : inout  vl_logic_vector(7 downto 0);
        CLK             : in     vl_logic;
        AIN             : in     vl_logic_vector(7 downto 0);
        BIN             : in     vl_logic_vector(7 downto 0);
        LCD_E           : out    vl_logic;
        LCD_RW          : out    vl_logic;
        LCD_ONOFF       : out    vl_logic;
        LCD_BLONOFF     : out    vl_logic
    );
end Question1;
