LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_arith.all;
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY Sorter_tb  IS
END ;
 
ARCHITECTURE Sorter_tb_arch OF Sorter_tb IS
  SIGNAL CLK, Reset, Launch, Complete : STD_LOGIC  ;
  SIGNAL Data, A, B : STD_LOGIC_VECTOR (7 downto 0)  ; 
  COMPONENT Sorter
    PORT ( 
      CLK, Reset, Launch : in STD_LOGIC;
		Complet	: out STD_LOGIC;
		START		: in	std_logic_vector (7 downto	0);
		FINISH	: in	std_logic_vector (7 downto	0);
      Data		: out STD_LOGIC_VECTOR (7 downto 0)  ); 
  END COMPONENT ; 
BEGIN
  DUT  : Sorter
    PORT MAP ( 
      CLK		=> CLK		,
      Reset		=> Reset		,
      Launch	=> Launch	,
      Complet	=> Complete ,
		START		=> A			,
		FINISH	=> B			,
      Data		=> Data); 



-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 1 us, Period = 0 ps
  Process
	Begin
	 A <= "00100111";
	 B <= "00101010";
	 Reset  <= '1' ;
	 Launch <= '0' ;
	wait for 12 ns ;
	 Reset  <= '0' ;
	 Launch <= '1' ;
	wait for 50 ns ;
	 Launch <= '0' ;
	wait;
 End Process;


-- "Clock Pattern"
  Process
	Begin
	 clk  <= '0'   ;
	wait for 10 ns ;
	loop
	    clk  <= '1'   ;
	   wait for 10 ns ;
	    clk  <= '0'   ;
	   wait for 10 ns ;
		exit when (Complete'last_value = '0' and Complete = '1');
	end  loop;
	 clk  <= '1'   ;
	wait for 10 ns ;
	wait;
 End Process;
 
-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
 	Begin
	
	wait;
 End Process;
 
END;
