LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_arith.all;
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
USE work.Declarations.all;
ENTITY Multiplier_tb  IS 
  GENERIC (
    n  : INTEGER   := 8 ); 
END ; 
 
ARCHITECTURE Multiplier_tb_arch OF Multiplier_tb IS
  SIGNAL Rst				:  STD_LOGIC								  ; 
  SIGNAL AIN, BIN			:  STD_LOGIC_VECTOR (n - 1 downto 0)  ; 
  SIGNAL OUTA				:  STD_LOGIC_VECTOR (n - 1 downto 0)  ; 
  SIGNAL OUTB				:  STD_LOGIC_VECTOR (n - 1 downto 0)  ; 
  SIGNAL OUTC				:  STD_LOGIC_VECTOR (0 downto 0)      ; 
  SIGNAL High				:  STD_LOGIC_VECTOR (n - 1 downto 0)  ; 
  SIGNAL Low				:  STD_LOGIC_VECTOR (n - 1 downto 0)  ;
  SIGNAL Result			:	STD_LOGIC_VECTOR (2*n-1 downto 0)  ;
  SIGNAL CLK				:  STD_LOGIC								  ; 
  SIGNAL monitor_state	:  state_type								  ;
  SIGNAL monitor_ena		:  std_logic								  ;
  SIGNAL monitor_enb		:  std_logic								  ;
  COMPONENT Multiplier  
    GENERIC ( 
      n  : INTEGER  );  
    PORT ( 
      Rst		: in	STD_LOGIC 								 ; 
      AIN, BIN : in	STD_LOGIC_VECTOR (n - 1 downto 0) ; 
      OUTA		: out	STD_LOGIC_VECTOR (n - 1 downto 0) ; 
      OUTB		: out	STD_LOGIC_VECTOR (n - 1 downto 0) ; 
      OUTC		: out	STD_LOGIC_VECTOR (0 downto 0) 	 ;
      High  	: out	STD_LOGIC_VECTOR (n - 1 downto 0) ; 
      Low  		: out	STD_LOGIC_VECTOR (n - 1 downto 0) ; 
      CLK  		: in	STD_LOGIC								);  
  END COMPONENT ; 
BEGIN
monitor_state	<=	<<	signal DUT.U_Ctl.state : state_type>>;
monitor_ena		<=	<<	signal DUT.U_Ctl.ena   : std_logic>>;
monitor_enb		<=	<<	signal DUT.U_Ctl.enb   : std_logic>>;
  DUT  : Multiplier  
    GENERIC MAP ( 
      n  => n   )
    PORT MAP ( 
      Rst   => Rst  ,
      AIN   => AIN  ,
      BIN   => BIN  ,
      OUTA  => OUTA ,
      OUTB  => OUTB ,
      OUTC  => OUTC ,
      High  => High ,
      Low   => Low  ,
      CLK   => CLK ); 



-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 1 us, Period = 0 ps
  Process
  -- One cycle is 660ns
	Begin
	 Rst  <= '1'  ;
	wait for 5 ns ;
	 Rst  <= '0'  ;
	wait for 365 ns ;
	 Rst  <= '1'  ;
	wait for 5 ns ;
	 Rst  <= '0'  ;
	wait for 375 ns ;
	 Rst  <= '1'  ;
	wait for 5 ns ;
	 Rst  <= '0'  ;
	wait;
 End Process;


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 1 us, Period = 20 ns
  Process
	Begin
	 clk  <= '0'  ;
	wait for 10 ns ;
-- 10 ns, single loop till start period.
	for Z in 1 to 56
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
	-- First cycle
	AIN <= "00110010";
	BIN <= "00000010";
	wait for 370 ns;
	-- Second cycle
	AIN <= "10101000";
	BIN <= "01010100";
	wait for 380 ns;
	-- Third cycle
	AIN <= "01000110";
	BIN <= "00100010";
	wait;
 End Process;

  Process
   Begin
	Result <= "XXXXXXXXXXXXXXXX";
	-- First Result
	wait for 331 ns;
	Result(2*n-1 downto n) <= High;
	Result(n-1 downto 0) <= Low;
	wait for 40 ns;
	Result <= "XXXXXXXXXXXXXXXX";
	-- Second Result
	wait for 340 ns;
	Result(2*n-1 downto n) <= High;
	Result(n-1 downto 0) <= Low;
	wait for 40 ns;
	Result <= "XXXXXXXXXXXXXXXX";
	-- Third Result
	wait for 340 ns;
	Result(2*n-1 downto n) <= High;
	Result(n-1 downto 0) <= Low;
	wait;
 End Process;
 
  Process
   Begin
		wait on monitor_state;
		if (monitor_state = FINISH) then
			wait on clk;
			assert (FALSE)	report "Checking..."	severity note;
			assert ((Low="01100100" and High="00000000") or (Low="00100000" and High="00110111") or (Low="01001100" and High="00001001"))	report "Check Failed" severity error;
		end if;
 End Process;
 
END;
