library verilog;
use verilog.vl_types.all;
entity Question5 is
    port(
        oSEG6           : out    vl_logic;
        Q               : out    vl_logic_vector(7 downto 0);
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        SET             : in     vl_logic;
        EN              : in     vl_logic;
        oSEG5           : out    vl_logic;
        oSEG4           : out    vl_logic;
        oSEG3           : out    vl_logic;
        oSEG2           : out    vl_logic;
        oSEG1           : out    vl_logic;
        oSEG0           : out    vl_logic;
        oSEG26          : out    vl_logic;
        oSEG25          : out    vl_logic;
        oSEG24          : out    vl_logic;
        oSEG23          : out    vl_logic;
        oSEG22          : out    vl_logic;
        oSEG21          : out    vl_logic;
        oSEG20          : out    vl_logic
    );
end Question5;
