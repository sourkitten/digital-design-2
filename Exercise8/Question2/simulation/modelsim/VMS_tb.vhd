LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_arith.all;
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY VMS_tb  IS
END ;
 
ARCHITECTURE VMS_tb_arch OF VMS_tb IS
  SIGNAL clk, rst, FF, COUT, LAUNCH : STD_LOGIC  ;
  SIGNAL dout : STD_LOGIC_VECTOR (15 downto 0)  ; 
  COMPONENT Vector_multiplier_sum_code
    PORT ( 
      clk, rst, lunch : in STD_LOGIC;
		FF, COUT: out STD_LOGIC;
      dout : out STD_LOGIC_VECTOR (15 downto 0)  ); 
  END COMPONENT ; 
BEGIN
  DUT  : Vector_multiplier_sum_code
    PORT MAP ( 
      clk		=> clk		,
      rst		=> rst		,
		lunch		=> LAUNCH	,
      FF			=> FF			,
      COUT	 	=> COUT 		,
      dout		=> dout		);

-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 1 us, Period = 0 ps
  Process
	Begin
	 rst  <= '1' ;
	 LAUNCH <= '1';
	wait for 4 ns ;
	 rst  <= '0' ;
	wait;
 End Process;


-- "Clock Pattern"
  Process
	Begin
	 clk  <= '0'   ;
	wait for 3.015 ns ;
	loop
	    clk  <= '1'   ;
	   wait for 3.015 ns ;
	    clk  <= '0'   ;
	   wait for 3.015 ns ;
		exit when (FF'last_value = '0' and FF = '1');
	end  loop;
	 clk  <= '1'   ;
	wait for 3.015 ns ;
	wait;
 End Process;
 
END;
