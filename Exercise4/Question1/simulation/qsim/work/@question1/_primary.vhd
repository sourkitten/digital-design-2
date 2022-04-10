library verilog;
use verilog.vl_types.all;
entity Question1 is
    port(
        Q1              : out    vl_logic;
        Start           : in     vl_logic;
        CLK             : in     vl_logic;
        reset           : in     vl_logic;
        XIN             : in     vl_logic_vector(7 downto 0);
        YIN             : in     vl_logic_vector(7 downto 0);
        Q0              : out    vl_logic;
        Z               : out    vl_logic;
        LCD_RS          : out    vl_logic;
        CLK50           : in     vl_logic;
        DBUS            : inout  vl_logic_vector(7 downto 0);
        X               : out    vl_logic_vector(7 downto 0);
        Y               : out    vl_logic_vector(7 downto 0);
        LCD_E           : out    vl_logic;
        LCD_RW          : out    vl_logic;
        LCD_ONOFF       : out    vl_logic;
        LCD_BLONOFF     : out    vl_logic;
        HEX6            : out    vl_logic_vector(6 downto 0);
        Sum             : out    vl_logic_vector(7 downto 0);
        HEX7            : out    vl_logic_vector(6 downto 0)
    );
end Question1;
