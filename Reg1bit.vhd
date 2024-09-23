library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity Reg1bit is
	port( clk, reset, D : in std_logic;
			Q: out std_logic);
end Reg1bit;

architecture behavior of Reg1bit is
BEGIN
process (clk, reset) is
    begin
if reset = '1' then
	q <= '0';
elsif clk'event and clk = '1' then
	q <= D;
end if;
end process;
end behavior;