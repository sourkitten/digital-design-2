library verilog;
use verilog.vl_types.all;
entity Question5_vlg_check_tst is
    port(
        oSEG0           : in     vl_logic;
        oSEG1           : in     vl_logic;
        oSEG2           : in     vl_logic;
        oSEG3           : in     vl_logic;
        oSEG4           : in     vl_logic;
        oSEG5           : in     vl_logic;
        oSEG6           : in     vl_logic;
        oSEG20          : in     vl_logic;
        oSEG21          : in     vl_logic;
        oSEG22          : in     vl_logic;
        oSEG23          : in     vl_logic;
        oSEG24          : in     vl_logic;
        oSEG25          : in     vl_logic;
        oSEG26          : in     vl_logic;
        Q               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end Question5_vlg_check_tst;
