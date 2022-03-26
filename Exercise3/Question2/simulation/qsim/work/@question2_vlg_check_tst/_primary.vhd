library verilog;
use verilog.vl_types.all;
entity Question2_vlg_check_tst is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end Question2_vlg_check_tst;
