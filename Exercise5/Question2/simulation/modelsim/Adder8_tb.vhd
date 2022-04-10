LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY Adder8_tb  IS 
END ; 
 
ARCHITECTURE Adder8_tb_arch OF Adder8_tb IS
  SIGNAL Y   :  STD_LOGIC_VECTOR (7 downto 0)  ; 
  SIGNAL A   :  STD_LOGIC_VECTOR (7 downto 0)  ; 
  SIGNAL Cin   :  STD_LOGIC  ; 
  SIGNAL B   :  STD_LOGIC_VECTOR (7 downto 0)  ; 
  SIGNAL Cout   :  STD_LOGIC  ; 
  COMPONENT Adder8  
    PORT ( 
      Y  : out STD_LOGIC_VECTOR (7 downto 0) ; 
      A  : in STD_LOGIC_VECTOR (7 downto 0) ; 
      Cin  : in STD_LOGIC ; 
      B  : in STD_LOGIC_VECTOR (7 downto 0) ; 
      Cout  : out STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : Adder8  
    PORT MAP ( 
      Y   => Y  ,
      A   => A  ,
      Cin   => Cin  ,
      B   => B  ,
      Cout   => Cout   ) ; 



-- "Constant Pattern"
-- Start Time = 60 ns, End Time = 80 ns, Period = 0 ns
  Process
	Begin
	 a  <= "00000011"  ;
	wait for 20 ns ;
	 a  <= "00001111"  ;
	wait for 20 ns ;
	 a  <= "00100000"  ;
	wait for 20 ns ;
	 a  <= "10000000"  ;
	wait for 20 ns ;
-- dumped values till 80 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 60 ns, End Time = 80 ns, Period = 0 ns
  Process
	Begin
	 b  <= "00000101"  ;
	wait for 20 ns ;
	 b  <= "00010100"  ;
	wait for 20 ns ;
	 b  <= "00101011"  ;
	wait for 20 ns ;
	 b  <= "10100000"  ;
	wait for 20 ns ;
-- dumped values till 80 ns
	wait;
 End Process;


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 80 ns, Period = 40 ns
  Process
	Begin
	 cin  <= '0'  ;
	wait for 20 ns ;
-- 20 ns, single loop till start period.
	    cin  <= '1'  ;
	   wait for 20 ns ;
	    cin  <= '0'  ;
	   wait for 20 ns ;
-- 60 ns, repeat pattern in loop.
	 cin  <= '1'  ;
	wait for 20 ns ;
-- dumped values till 80 ns
	wait;
 End Process;
END;
