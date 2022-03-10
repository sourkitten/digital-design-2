library verilog;
use verilog.vl_types.all;
entity Question5_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        CLRN            : in     vl_logic;
        J               : in     vl_logic;
        K               : in     vl_logic;
        SET             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Question5_vlg_sample_tst;
