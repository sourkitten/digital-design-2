library verilog;
use verilog.vl_types.all;
entity Datapath is
    port(
        Z               : out    vl_logic;
        CLK             : in     vl_logic;
        SF              : in     vl_logic;
        reset           : in     vl_logic;
        Sub             : in     vl_logic;
        SelB            : in     vl_logic;
        LSB             : in     vl_logic;
        ENB             : in     vl_logic;
        YIN             : in     vl_logic_vector(7 downto 0);
        SelA            : in     vl_logic;
        LSA             : in     vl_logic;
        ENA             : in     vl_logic;
        XIN             : in     vl_logic_vector(7 downto 0);
        Sum             : out    vl_logic_vector(7 downto 0);
        X               : out    vl_logic_vector(7 downto 0);
        Y               : out    vl_logic_vector(7 downto 0)
    );
end Datapath;
