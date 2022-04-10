library IEEE;
use IEEE.std_logic_1164.all;

entity Adder8 is
	port ( A, B : in  std_logic_vector (7 downto 0);
			 Cin	: in  std_logic;
			 Y    : out std_logic_vector (7 downto 0);
			 Cout : out	std_logic);
end Adder8;

architecture RTL of Adder8 is

component FA
	port ( A, B, Cin : in  std_logic;
			 S, Cout   : out std_logic);
end component;

signal F: std_logic_vector (6 downto 0);

begin
	u0: FA port map (A => A(0), B => B(0), Cin => Cin,  S => Y(0), Cout => F(0));
	u1: FA port map (A => A(1), B => B(1), Cin => F(0), S => Y(1), Cout => F(1));
	u2: FA port map (A => A(2), B => B(2), Cin => F(1), S => Y(2), Cout => F(2));
	u3: FA port map (A => A(3), B => B(3), Cin => F(2), S => Y(3), Cout => F(3));
	u4: FA port map (A => A(4), B => B(4), Cin => F(3), S => Y(4), Cout => F(4));
	u5: FA port map (A => A(5), B => B(5), Cin => F(4), S => Y(5), Cout => F(5));
	u6: FA port map (A => A(6), B => B(6), Cin => F(5), S => Y(6), Cout => F(6));
	u7: FA port map (A => A(7), B => B(7), Cin => F(6), S => Y(7), Cout => Cout);

end RTL;