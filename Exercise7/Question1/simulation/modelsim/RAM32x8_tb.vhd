LIBRARY altera_mf  ; 
LIBRARY ieee  ; 
LIBRARY std  ; 
USE altera_mf.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 

ENTITY RAM32x8_tb  IS 
END ; 
 
ARCHITECTURE RAM32x8_tb_arch OF RAM32x8_tb IS
  SIGNAL wren   :  STD_LOGIC  ; 
  SIGNAL clock   :  STD_LOGIC := '1'  ; 
  SIGNAL q   :  STD_LOGIC_VECTOR (7 downto 0)  ; 
  SIGNAL data   :  STD_LOGIC_VECTOR (7 downto 0)  ; 
  SIGNAL address   :  STD_LOGIC_VECTOR (4 downto 0)  ; 
  COMPONENT RAM32x8  
    PORT ( 
      wren  : in STD_LOGIC ; 
      clock  : in STD_LOGIC ; 
      q  : out STD_LOGIC_VECTOR (7 downto 0) ; 
      data  : in STD_LOGIC_VECTOR (7 downto 0) ; 
      address  : in STD_LOGIC_VECTOR (4 downto 0) ); 
  END COMPONENT ; 
BEGIN
  DUT  : RAM32x8  
    PORT MAP ( 
      wren   => wren  ,
      clock   => clock  ,
      q   => q  ,
      data   => data  ,
      address   => address   ) ; 



-- "Counter Pattern"(Range-Up) : step = 1 Range(00011-00101)
-- Start Time = 0 ns, End Time = 1 us, Period = 100 ns
  Process
	variable VARaddress  : std_logic_vector(4 downto 0);
	Begin
	for Z in 1 to 2
	loop
	VARaddress  := "00011" ;
	for repeatLength in 1 to 3
	loop
	    address  <= VARaddress  ;
	   wait for 200 ns ;
	   VARaddress  := VARaddress  + 1 ;
	end loop;
-- 900 ns, repeat pattern in loop.
	end  loop;
-- 1 us, periods remaining till edit start time.
	wait;
 End Process;


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 1 us, Period = 50 ns
  Process
	Begin
	 clock  <= '0'  ;
	wait for 25 ns ;
-- 25 ns, single loop till start period.
	for Z in 1 to 23
	loop
	    clock  <= '1'  ;
	   wait for 25 ns ;
	    clock  <= '0'  ;
	   wait for 25 ns ;
-- 975 ns, repeat pattern in loop.
	end  loop;
	 clock  <= '1'  ;
	wait for 25 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 1 us, Period = 200 ns
  Process
	Begin
	for Z in 1 to 3
	loop
	    wren  <= '1'  ;
	   wait for 100 ns ;
	    wren  <= '0'  ;
	   wait for 100 ns ;
-- 1 us, repeat pattern in loop.
	end  loop;
	wait;
 End Process;


-- "Random Pattern"(Uniform) : seed = 5
-- Start Time = 0 ns, End Time = 1 us, Period = 100 ns
  Process
  Begin
	  data <= "10100111";
	wait for 100 ns;
	  data <= "00001111";
	wait for 100 ns;
	-- NEXT
	  data <= "11111111";
	wait for 100 ns;
	  data <= "00001111";
	wait for 100 ns;
	-- NEXT
	  data <= "00000000";
	wait for 100 ns;
	  data <= "00001111";
	wait for 100 ns;
	-- NEXT
	  data <= "10000011";
	wait for 100 ns;
	  data <= "00001111";
	wait for 100 ns;
	-- NEXT
	  data <= "10100000";
	wait for 100 ns;
	  data <= "00001111";
	wait;
 End Process;
END;
