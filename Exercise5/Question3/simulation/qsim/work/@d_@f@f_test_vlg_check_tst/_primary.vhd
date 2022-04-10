library verilog;
use verilog.vl_types.all;
entity D_FF_test_vlg_check_tst is
    port(
        LQ              : in     vl_logic;
        LQn             : in     vl_logic;
        Q               : in     vl_logic;
        Qn              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end D_FF_test_vlg_check_tst;
