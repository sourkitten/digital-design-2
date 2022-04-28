library verilog;
use verilog.vl_types.all;
entity Question5_vlg_check_tst is
    port(
        HEX1            : in     vl_logic_vector(6 downto 0);
        HEX2            : in     vl_logic_vector(6 downto 0);
        Q               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end Question5_vlg_check_tst;
