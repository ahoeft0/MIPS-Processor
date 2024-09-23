
---- this is a 4-bit ripple_carry adder circuit -----------

LIBRARY ieee;
USE ieee.std_logic_1164.all ;
USE work.components.all;

ENTITY ripple_carry IS
	PORT ( Cin: IN STD_LOGIC;
			x,y : IN STD_LOGIC_VECTOR(3 downto 0);
			s : OUT STD_LOGIC_VECTOR(3 downto 0);
			Cout : OUT STD_LOGIC );
END ripple_carry ;

ARCHITECTURE struc_behaviour OF ripple_carry IS
	signal carry : std_logic_vector(3 downto 1);
	signal Ys : std_logic_vector(3 downto 0);

BEGIN

	Ys(0) <= y(0) xor Cin;
	Ys(1) <= y(1) xor Cin;
	Ys(2) <= y(2) xor Cin;
	Ys(3) <= y(3) xor Cin;
	
	stage1 : fulladd PORT MAP (Cin, x(0), Ys(0), s(0), carry(1));
	stage2 : fulladd PORT MAP (carry(1), x(1), Ys(1), s(1), carry(2));
	stage3 : fulladd PORT MAP (carry(2), x(2), Ys(2), s(2), carry(3));
	stage4 : fulladd PORT MAP (carry(3), x(3), Ys(3), s(3), Cout);

END struc_behaviour;