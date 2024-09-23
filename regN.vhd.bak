--------- This is n-bit register circuit -----------
library ieee;
use ieee.std_logic_1164.all;

entity regN is
generic(N: integer:= 32);
port (clock : in std_logic;
	  D : in std_logic_vector(N-1 downto 0);
	  Q : out std_logic_vector(N-1 downto 0));
end regN;

architecture behavior of regN is
begin
	process (clock)
	begin
		if clock'event and clock = '1' then
				Q <= D;
		end if;
	end process;
end behavior;