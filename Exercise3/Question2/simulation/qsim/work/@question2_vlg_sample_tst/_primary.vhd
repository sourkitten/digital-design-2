library verilog;
use verilog.vl_types.all;
entity Question2_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        reset           : in     vl_logic;
        S               : in     vl_logic;
        Sin             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Question2_vlg_sample_tst;
