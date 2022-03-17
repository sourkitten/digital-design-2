library verilog;
use verilog.vl_types.all;
entity Question1_vlg_check_tst is
    port(
        R               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end Question1_vlg_check_tst;
