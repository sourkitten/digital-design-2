library verilog;
use verilog.vl_types.all;
entity Reg8_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        DATA            : in     vl_logic_vector(7 downto 0);
        SET             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Reg8_vlg_sample_tst;
