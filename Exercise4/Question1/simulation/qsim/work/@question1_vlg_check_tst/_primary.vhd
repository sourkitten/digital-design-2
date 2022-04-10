library verilog;
use verilog.vl_types.all;
entity Question1_vlg_check_tst is
    port(
        DBUS            : in     vl_logic_vector(7 downto 0);
        HEX6            : in     vl_logic_vector(6 downto 0);
        HEX7            : in     vl_logic_vector(6 downto 0);
        LCD_BLONOFF     : in     vl_logic;
        LCD_E           : in     vl_logic;
        LCD_ONOFF       : in     vl_logic;
        LCD_RS          : in     vl_logic;
        LCD_RW          : in     vl_logic;
        Q0              : in     vl_logic;
        Q1              : in     vl_logic;
        Sum             : in     vl_logic_vector(7 downto 0);
        X               : in     vl_logic_vector(7 downto 0);
        Y               : in     vl_logic_vector(7 downto 0);
        Z               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Question1_vlg_check_tst;
