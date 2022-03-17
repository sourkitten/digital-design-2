library verilog;
use verilog.vl_types.all;
entity accumulator_vlg_check_tst is
    port(
        Hex6            : in     vl_logic_vector(6 downto 0);
        Hex7            : in     vl_logic_vector(6 downto 0);
        R               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end accumulator_vlg_check_tst;
