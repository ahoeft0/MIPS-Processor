library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity Reg2bit is
	port( clk, reset : in std_logic;
			D : in std_logic_vector (1 downto 0);
			Q: out std_logic_vector(1 downto 0));
end Reg2bit;

architecture behavior of Reg2bit is
BEGIN
process (clk, reset) is
    begin
if reset = '1' then
	q <= "00";
elsif clk'event and clk = '1' then
	q <= D;
end if;
end process;
end behavior;