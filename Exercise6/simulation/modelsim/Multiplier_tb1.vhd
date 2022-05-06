LIBRARY ieee  ; 
LIBRARY std  ; 
LIBRARY work;
USE ieee.std_logic_1164.all  ; 
use ieee.std_logic_arith.all;
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
USE work.Declarations.all;
ENTITY Multiplier_tb  IS 
  GENERIC (
    n  : INTEGER   := 4 ); 
END ; 
 
ARCHITECTURE Multiplier_tb_arch OF Multiplier_tb IS
  SIGNAL Rst  : STD_LOGIC  ; 
  SIGNAL CLK  : STD_LOGIC  ; 
  SIGNAL SI   : STD_LOGIC ; 
  SIGNAL Low  : STD_LOGIC_VECTOR(n-1 downto 0) ; 
  SIGNAL High : STD_LOGIC_VECTOR(n-1 downto 0) ; 
  SIGNAL OUTA : STD_LOGIC_VECTOR(n-1 downto 0) ;
  SIGNAL OUTB : STD_LOGIC_VECTOR(n-1 downto 0) ;
  SIGNAL OUTC : STD_LOGIC_VECTOR(0 downto 0)   ;
  COMPONENT Multiplier  
    GENERIC ( 
      n  : INTEGER  );  
    PORT ( 
      Rst  : in STD_LOGIC ; 
      CLK  : in STD_LOGIC ; 
      SI   : out STD_LOGIC ; 
	Low  : out STD_LOGIC_VECTOR(n-1 downto 0) ; 
  	High : out STD_LOGIC_VECTOR(n-1 downto 0) ; 
  	OUTA : out STD_LOGIC_VECTOR(n-1 downto 0) ;
  	OUTB : out STD_LOGIC_VECTOR(n-1 downto 0) ;
  	OUTC : out STD_LOGIC_VECTOR(0 downto 0)  );
  END COMPONENT ; 
BEGIN
  DUT  : Multiplier  
    GENERIC MAP ( 
      n  => n   )
    PORT MAP ( 
      Rst   => Rst   ,
      CLK   => CLK   ,
      SI    => SI    ,
      Low   => Low   ,
      High  => High  ,
	OUTA  => OUTA  ,
      OUTB  => OUTB  ,
      OUTC  => OUTC) ;



-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 rst  <= '1'  ;
	wait for 20 ns ;
	 rst  <= '0'  ;
	wait for 980 ns ;
-- dumped values till 1 us
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
	wait for 80 ns ;
	 SI	<= '0'   ;
	wait for 100 ns ;
	 SI	<= '1'   ;
	wait for 120 ns ;
	 SI	<= '0'   ;
	wait for 140 ns ;
	 SI	<= '1'   ;
	wait for 160 ns ;
	 SI	<= '0'   ;
	wait;
 End Process;
 
END;