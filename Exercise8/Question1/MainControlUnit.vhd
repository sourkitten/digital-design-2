library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity MainControlUnit is
	generic (
		n		: integer := 4;
		addr	: integer := 8;
		rom	: integer := 256
	);


	port (
		-- Input ports
		rst, clk	: in std_logic;
		q			: in std_logic_vector(n-1 downto 0);
		Lnch		: in std_logic;

		-- Output ports
		Mult_Reset, EN_Reg : out std_logic;
		Fin_flag : out std_logic := '0';
		Address	: out std_logic_vector(addr-1 downto 0);
		D_A, D_B	: out std_logic_vector(n-1 downto 0)
	);
end MainControlUnit;


architecture RTL of MainControlUnit is

	type states is (LAUNCH, WAITING, LD_A, LD_B, MULTIPLY, ADD, FINISH);
	signal state	 	: states := LD_A;
	signal S_A, S_B 	: std_logic_vector(n-1 downto 0);
	signal count_addr : std_logic_vector(addr-1 downto 0);
	-- counter that waits for the multiplier to finish
	signal count		: std_logic_vector(4 downto 0);

begin

-- Main Loop. Runs in 13 cycles per loop for a total of rom/2 loops.
Main: process(rst, clk)
	begin
		-- reset the circuit / loop
		if rst = '1' then
			state <= LD_A;
			count_addr <= "00000000";
			count <= "00000";
			Fin_flag <= '0';
		elsif (CLK'event and CLK='1') then
			case state is
				when LAUNCH =>
					if (Lnch = '1') then
						state <= LD_A;
					end if;
				-- load the A register
				when LD_A => -- 1st cycle
					EN_Reg <= '0';
					Mult_Reset <= '1';
					S_A <= q;
					-- reverse the MSB to switch to the part of the RAM that is the B vector!
					count_addr <= count_addr xor "10000000";
					state <= WAITING;
				-- wait for memory change
				when WAITING => state <= LD_B; -- 2nd cycle
				when LD_B => -- 3rd cycle
					S_B <= q;
					-- reverse the MSB to switch to the part of the RAM that is the A vector!
					count_addr <= count_addr xor "10000000";
					-- move to next address in vectors for next loop
					count_addr <= count_addr + '1'; 
					-- start multiplier in next cycle
					state <= MULTIPLY;
					Mult_reset <= '0';
				when MULTIPLY => -- 4th-12th cycle
					-- 8 clocks for multiplication plus 1 for the multiplier parallel load
					if conv_integer(count) = 9 then
						state <= ADD;
						count <= "00000"; -- reset the counter for next multiplication run
					else count <= count + '1';
					end if;
				when ADD => -- 13th cycle
					EN_Reg <= '1';
					if count_addr(addr-2 downto 0) = "0000000" then
						Fin_flag <= '1';
						EN_Reg <= '1';
						state <= FINISH;
					else state <= LD_A;
					end if;
				when FINISH => null; -- 13*rom/2 + 1 cycle. !! For rom = 256 that is 833 cycles total !!
			end case;
		end if;
end process;

Address <= count_addr;
D_A <= S_A;
D_B <= S_B;

end RTL;
