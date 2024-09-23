-------- This is a 2_to_4 decoder circuit -------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY dec2to4 IS
	PORT ( w : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			En : IN STD_LOGIC;
			y : OUT STD_LOGIC_VECTOR(3 downto 0));
END dec2to4;

ARCHITECTURE LogicFunc OF dec2to4 IS
BEGIN
	y(0) <= (En and (not w(1)) and (not w(0)));
	y(1) <= (En and (not w(1)) and w(0));
	y(2) <= (En and w(1) and (not w(0)));
	y(3) <= (En and w(1) and w(0));

END LogicFunc;