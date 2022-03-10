library verilog;
use verilog.vl_types.all;
entity Question6_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        CLRN            : in     vl_logic;
        SET             : in     vl_logic;
        T               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Question6_vlg_sample_tst;
