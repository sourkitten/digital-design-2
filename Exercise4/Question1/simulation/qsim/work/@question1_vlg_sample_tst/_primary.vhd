library verilog;
use verilog.vl_types.all;
entity Question1_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        CLK50           : in     vl_logic;
        DBUS            : in     vl_logic_vector(7 downto 0);
        reset           : in     vl_logic;
        Start           : in     vl_logic;
        XIN             : in     vl_logic_vector(7 downto 0);
        YIN             : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end Question1_vlg_sample_tst;
