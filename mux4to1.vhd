----- This is a n-bit 4_to_1 MUX using 2_to_1 MUX ---------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use work.components.all;

ENTITY mux4to1 IS
	generic  (n : integer:= 4);
	PORT ( w0, w1, w2, w3 : IN STD_LOGIC_VECTOR((n-1) downto 0);
		s : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		f : OUT STD_LOGIC_VECTOR((n-1) downto 0));
END mux4to1;

ARCHITECTURE struc_behaviour OF mux4to1 IS
	signal mux1_vec : std_logic_vector((n-1) downto 0);
	signal mux2_vec : std_logic_vector((n-1) downto 0);
	
BEGIN
	stage1 : mux2to1 generic map (n=>4) port map (s(0), w0, w1, mux1_vec);
	stage2 : mux2to1 generic map (n=>4) port map (s(0), w2, w3, mux2_vec);
	stage3 : mux2to1 generic map (n=>4) port map (s(1), mux1_vec, mux2_vec, f);
END struc_behaviour; 