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
ENTITY CtrlLogic_tb  IS 
  GENERIC (
    n  : INTEGER   := 8 ); 
END ; 
 
ARCHITECTURE CtrlLogic_tb_arch OF CtrlLogic_tb IS
  SIGNAL Rst    :  STD_LOGIC  ; 
  SIGNAL EN_A   :  STD_LOGIC  ; 
  SIGNAL SL_A   :  STD_LOGIC  ;
  SIGNAL EN_B   :  STD_LOGIC  ; 
  SIGNAL SL_B   :  STD_LOGIC  ; 
  SIGNAL EN_C   :  STD_LOGIC  ; 
  SIGNAL SL_C   :  STD_LOGIC  ; 
  SIGNAL EN_H   :  STD_LOGIC  ; 
  SIGNAL SL_H   :  STD_LOGIC  ; 
  SIGNAL EN_L   :  STD_LOGIC  ; 
  SIGNAL SL_L   :  STD_LOGIC  ; 
  SIGNAL CLK    :  STD_LOGIC  ; 
  SIGNAL monitor_count  :  std_logic_vector(n downto 0);
  SIGNAL monitor_state  :  state_type;
  COMPONENT CtrlLogic  
    GENERIC ( 
      n  : INTEGER  );  
    PORT ( 
      SL_B  : out STD_LOGIC ; 
      Rst  : in STD_LOGIC ; 
      SL_C  : out STD_LOGIC ; 
      EN_A  : out STD_LOGIC ; 
      EN_B  : out STD_LOGIC ; 
      EN_C  : out STD_LOGIC ; 
      SL_H  : out STD_LOGIC ; 
      CLK  : in STD_LOGIC ; 
      SL_L  : out STD_LOGIC ; 
      EN_H  : out STD_LOGIC ; 
      EN_L  : out STD_LOGIC ; 
      SL_A  : out STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
monitor_count  <= << signal DUT.count  :  std_logic_vector(n downto 0)>>;
monitor_state	<=	<<	signal DUT.state	:	state_type>>;
  DUT  : CtrlLogic  
    GENERIC MAP ( 
      n  => n   )
    PORT MAP ( 
      SL_B   => SL_B  ,
      Rst   => Rst  ,
      SL_C   => SL_C  ,
      EN_A   => EN_A  ,
      EN_B   => EN_B  ,
      EN_C   => EN_C  ,
      SL_H   => SL_H  ,
      CLK   => CLK  ,
      SL_L   => SL_L  ,
      EN_H   => EN_H  ,
      EN_L   => EN_L  ,
      SL_A   => SL_A   ) ; 



-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 rst  <= '1'  ;
	wait for 20 ns ;
	 rst  <= '0'  ;
	wait for 1630 ns ;
-- dumped values till 2 us
	wait;
 End Process;


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 1 us, Period = 50 ns
  Process
	Begin
	 clk  <= '0'  ;
	wait for 25 ns ;
-- 25 ns, single loop till start period.
	for Z in 1 to 32
	loop
	    clk  <= '1'  ;
	   wait for 25 ns ;
	    clk  <= '0'  ;
	   wait for 25 ns ;
-- 975 ns, repeat pattern in loop.
	end  loop;
	 clk  <= '1'  ;
	wait for 25 ns ;
-- dumped values till 2 us
	wait;
 End Process;
 
END;
