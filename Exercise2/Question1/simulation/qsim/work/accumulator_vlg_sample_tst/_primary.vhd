library verilog;
use verilog.vl_types.all;
entity accumulator_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        I               : in     vl_logic_vector(3 downto 0);
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end accumulator_vlg_sample_tst;
