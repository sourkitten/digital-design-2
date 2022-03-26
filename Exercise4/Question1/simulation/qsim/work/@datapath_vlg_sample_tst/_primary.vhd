library verilog;
use verilog.vl_types.all;
entity Datapath_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        ENA             : in     vl_logic;
        ENB             : in     vl_logic;
        LSA             : in     vl_logic;
        LSB             : in     vl_logic;
        reset           : in     vl_logic;
        SelA            : in     vl_logic;
        SelB            : in     vl_logic;
        SF              : in     vl_logic;
        Sub             : in     vl_logic;
        XIN             : in     vl_logic_vector(7 downto 0);
        YIN             : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end Datapath_vlg_sample_tst;
