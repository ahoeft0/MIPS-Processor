----- This is a 4_to_16 decoder using 2_to_4 decoder ---------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.components.all;

ENTITY dec4to16 IS
	PORT (w : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			En : IN STD_LOGIC;
			y : OUT STD_LOGIC_VECTOR(15 downto 0));
END dec4to16;

ARCHITECTURE struc_behaviour OF dec4to16 IS
	SIGNAL x : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
	s1 : dec2to4 PORT MAP (w(3 downto 2), En, x(3 downto 0));
	s2 : dec2to4 PORT MAP (w(1 downto 0), x(0), y(3 downto 0));
	s3 : dec2to4 PORT MAP (w(1 downto 0), x(1), y(7 downto 4));
	s4 : dec2to4 PORT MAP (w(1 downto 0), x(2), y(11 downto 8));
	s5 : dec2to4 PORT MAP (w(1 downto 0), x(3), y(15 downto 12));
END struc_behaviour;