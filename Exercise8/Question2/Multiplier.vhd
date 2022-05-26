library IEEE;
use IEEE.std_logic_1164.all;

entity Multiplier is
	generic (n: integer :=8);
	port (
		AIN, BIN : in std_logic_vector (3 downto 0);
		Low, High: out std_logic_vector (3 downto 0));
end Multiplier;

architecture RTL of Multiplier is
signal Inter3, Adder1, Adder2  : std_logic_vector (2 downto 0);
signal B0A, B1A, B2A, B3A, Inter1, Inter2 : std_logic_vector (3 downto 0);
begin
	
	-- AND GATES
	Low(0) <= AIN(0) AND BIN(0);
	B0A(1) <= AIN(1) AND BIN(0);
	B0A(2) <= AIN(2) AND BIN(0);
	B0A(3) <= AIN(3) AND BIN(0);
	
	B1A(0) <= AIN(0) AND BIN(1);
	B1A(1) <= AIN(1) AND BIN(1);
	B1A(2) <= AIN(2) AND BIN(1);
	B1A(3) <= AIN(3) AND BIN(1);
	
	B2A(0) <= AIN(0) AND BIN(2);
	B2A(1) <= AIN(1) AND BIN(2);
	B2A(2) <= AIN(2) AND BIN(2);
	B2A(3) <= AIN(3) AND BIN(2);
	
	B3A(0) <= AIN(0) AND BIN(3);
	B3A(1) <= AIN(1) AND BIN(3);
	B3A(2) <= AIN(2) AND BIN(3);
	B3A(3) <= AIN(3) AND BIN(3);

	-- First Adder Row
	-- HA: B1A0 + B0A1
	Low(1) <= B0A(1) XOR B1A(0);
	Inter1(0) <= B0A(1) AND B1A(0); 
	
	-- FA: B1A1 + B0A2 + Inter1(0)
	Adder1(0) <= B1A(1) XOR B0A(2) XOR Inter1(0);
	Inter1(1) <= (B1A(1) AND B0A(2)) OR (B1A(1) AND Inter1(0)) OR (B0A(2) AND Inter1(0));
	
	-- FA: B1A2 + B0A3 + Inter1(1)
	Adder1(1) <= B1A(2) XOR B0A(3) XOR Inter1(1);
	Inter1(2) <= (B1A(2) AND B0A(3)) OR (B1A(2) AND Inter1(1)) OR (B0A(3) AND Inter1(1));
	
	-- HA: B1A3 + Inter1(2)
	Adder1(2) <= B1A(3) XOR Inter1(2);
	Inter1(3) <= B1A(3) AND Inter1(2);
	
	-- Second Adder Row
	-- HA: Adder1(0) + B2A(0)
	Low(2) <= Adder1(0) XOR B2A(0);
	Inter2(0) <= Adder1(0) AND B2A(0); 
	
	-- FA: B2A(1) + Adder1(1) + Inter2(0)
	Adder2(0) <= B2A(1) XOR Adder1(1) XOR Inter2(0);
	Inter2(1) <= (B2A(1) AND Adder1(1)) OR (B2A(1) AND Inter2(0)) OR (Adder1(1) AND Inter2(0));
	
	-- FA: B2A(2) + Adder1(2) + Inter2(1)
	Adder2(1) <= B2A(2) XOR Adder1(2) XOR Inter2(1);
	Inter2(2) <= (B2A(2) AND Adder1(2)) OR (B2A(2) AND Inter2(1)) OR (Adder1(2) AND Inter2(1));
	
	-- FA: B2A(3) + Inter1(3) + Inter2(2)
	Adder2(2) <= B2A(3) XOR Inter1(3) XOR Inter2(2);
	Inter2(3) <= (B2A(3) AND Inter1(3)) OR (B2A(3) AND Inter2(2)) OR (Inter1(3) AND Inter2(2));
	
	-- Third Adder Row
	-- HA: Adder2(0) + B3A(0)
	Low(3) <= Adder2(0) XOR B3A(0);
	Inter3(0) <= Adder2(0) AND B3A(0); 
	
	-- FA: B3A(1) + Adder2(1) + Inter3(0)
	High(0) <= B3A(1) XOR Adder2(1) XOR Inter3(0);
	Inter3(1) <= (B3A(1) AND Adder2(1)) OR (B3A(1) AND Inter3(0)) OR (Adder2(1) AND Inter3(0));
	
	-- FA: B3A(2) + Adder2(2) + Inter3(1)
	High(1) <= B3A(2) XOR Adder2(2) XOR Inter3(1);
	Inter3(2) <= (B3A(2) AND Adder2(2)) OR (B3A(2) AND Inter3(1)) OR (Adder2(2) AND Inter3(1));
	
	-- FA: B3A(3) + Adder2(3) + Inter3(2)
	High(2) <= B3A(3) XOR Inter2(3) XOR Inter3(2);
	High(3) <= (B3A(3) AND Inter2(3)) OR (B3A(3) AND Inter3(2)) OR (Inter2(3) AND Inter3(2));
	
end RTL;
