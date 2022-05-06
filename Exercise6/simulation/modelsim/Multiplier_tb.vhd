LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY Multiplier_tb  IS 
  GENERIC (
    n  : INTEGER   := 4 ); 
END ; 
 
ARCHITECTURE Multiplier_tb_arch OF Multiplier_tb IS
  SIGNAL High   :  STD_LOGIC_VECTOR (n - 1 downto 0)  ; 
  SIGNAL SI   :  STD_LOGIC  ; 
  SIGNAL OUTA   :  STD_LOGIC_VECTOR (n - 1 downto 0)  ; 
  SIGNAL Rst   :  STD_LOGIC  ; 
  SIGNAL OUTB   :  STD_LOGIC_VECTOR (n - 1 downto 0)  ; 
  SIGNAL Low   :  STD_LOGIC_VECTOR (n - 1 downto 0)  ; 
  SIGNAL CLK   :  STD_LOGIC  ; 
  SIGNAL OUTC   :  STD_LOGIC_VECTOR (0 downto 0)  ; 
  COMPONENT Multiplier  
    GENERIC ( 
      n  : INTEGER  );  
    PORT ( 
      High  : out STD_LOGIC_VECTOR (n - 1 downto 0) ; 
      SI  : in STD_LOGIC ; 
      OUTA  : out STD_LOGIC_VECTOR (n - 1 downto 0) ; 
      Rst  : in STD_LOGIC ; 
      OUTB  : out STD_LOGIC_VECTOR (n - 1 downto 0) ; 
      Low  : out STD_LOGIC_VECTOR (n - 1 downto 0) ; 
      CLK  : in STD_LOGIC ; 
      OUTC  : out STD_LOGIC_VECTOR (0 downto 0) ); 
  END COMPONENT ; 
BEGIN
  DUT  : Multiplier  
    GENERIC MAP ( 
      n  => n   )
    PORT MAP ( 
      High   => High  ,
      SI   => SI  ,
      OUTA   => OUTA  ,
      Rst   => Rst  ,
      OUTB   => OUTB  ,
      Low   => Low  ,
      CLK   => CLK  ,
      OUTC   => OUTC   ) ; 



-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 1 us, Period = 0 ps
  Process
	Begin
	 Rst  <= '1'  ;
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 1 us, Period = 20 ns
  Process
	Begin
	 clk  <= '0'  ;
	wait for 10 ns ;
-- 10 ns, single loop till start period.
	for Z in 1 to 19
	loop
	    clk  <= '1'  ;
	   wait for 10 ns ;
	    clk  <= '0'  ;
	   wait for 10 ns ;
-- 980 ns, repeat pattern in loop.
	end  loop;
	 clk  <= '1'  ;
	wait for 10 ns ;
-- dumped values till 1 us
	wait;
 End Process;
 
-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
 	Begin
	 SI	<= '1'   ;
	wait for 60 ns ;
	 SI	<= '0'   ;
	wait for 20 ns ;
	 SI	<= '1'   ;
	wait for 20 ns ;
	 SI	<= '0'   ;
	wait for 20 ns ;
	 SI	<= '1'   ;
	wait for 20 ns ;
	 SI	<= '0'   ;
	wait;
 End Process;

END;
