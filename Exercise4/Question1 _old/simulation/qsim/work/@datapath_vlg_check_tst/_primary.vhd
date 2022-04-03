library verilog;
use verilog.vl_types.all;
entity Datapath_vlg_check_tst is
    port(
        Sum             : in     vl_logic_vector(7 downto 0);
        X               : in     vl_logic_vector(7 downto 0);
        Y               : in     vl_logic_vector(7 downto 0);
        Z               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Datapath_vlg_check_tst;
