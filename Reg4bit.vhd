library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity Reg4bit is
	port( clk, reset : in std_logic;
			D : in std_logic_vector (3 downto 0);
			Q: out std_logic_vector(3 downto 0));
end Reg4bit;

architecture behavior of Reg4bit is
BEGIN
process (clk, reset) is
begin
if reset = '1' then
	q <= "0000";
elsif clk'event and clk = '1' then
	q <= D;
end if;
end process;
end behavior;