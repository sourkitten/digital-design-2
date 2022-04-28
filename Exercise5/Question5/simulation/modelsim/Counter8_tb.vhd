LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY Counter8_tb  IS 
END ; 
 
ARCHITECTURE Counter8_tb_arch OF Counter8_tb IS
  SIGNAL SET   :  STD_LOGIC  ; 
  SIGNAL Q   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL CLR   :  STD_LOGIC  ; 
  SIGNAL CLK   :  STD_LOGIC  ; 
  SIGNAL EN   :  STD_LOGIC  ; 
  COMPONENT Counter8  
    PORT ( 
      SET  : in STD_LOGIC ; 
      Q  : out std_logic_vector (7 downto 0) ; 
      CLR  : in STD_LOGIC ; 
      CLK  : in STD_LOGIC ; 
      EN  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : Counter8  
    PORT MAP ( 
      SET   => SET  ,
      Q   => Q  ,
      CLR   => CLR  ,
      CLK   => CLK  ,
      EN   => EN   ) ; 



-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 500 ns, Period = 20 ns
  Process
	Begin
	for Z in 1 to 25
	loop
	    CLK  <= '1'  ;
	   wait for 10 ns ;
	    CLK  <= '0'  ;
	   wait for 10 ns ;
-- 500 ns, repeat pattern in loop.
	end  loop;
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 500 ns, Period = 0 ns
  Process
	Begin
	 CLR  <= '0'  ;
	wait for 5 ns ;
	 CLR  <= '1'  ;
	wait for 495 ns ;
-- dumped values till 500 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 360 ns, End Time = 500 ns, Period = 0 ns
  Process
	Begin
	 SET  <= '1'  ;
	wait for 360 ns ;
	 SET  <= '0'  ;
	wait for 20 ns ;
	 SET  <= '1'  ;
	wait for 120 ns ;
-- dumped values till 500 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 140 ns, End Time = 500 ns, Period = 0 ns
  Process
	Begin
	 EN  <= '1'  ;
	wait for 140 ns ;
	 EN  <= '0'  ;
	wait for 100 ns ;
	 EN  <= '1'  ;
	wait for 260 ns ;
-- dumped values till 500 ns
	wait;
 End Process;
END;
