library verilog;
use verilog.vl_types.all;
entity Question1_vlg_sample_tst is
    port(
        F               : in     vl_logic_vector(7 downto 0);
        I               : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end Question1_vlg_sample_tst;
