library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity ALU is
	port( X, Y : in std_logic_vector (3 downto 0);
			add_sub : in std_logic;
			ALU_op : std_logic_vector (1 downto 0);
			S : out std_logic_vector(3 downto 0);
			zero2 : out std_logic);
end ALU;

architecture behaviour of ALU is
	signal  asResult, andResult, orResult, muxOutput: std_logic_vector(3 downto 0);
	signal  Cout : std_logic;
	
begin
	rc : ripple_carry port map (add_sub, X, Y, asResult, Cout);
	
	andResult <= X and Y;
	
	orResult <= X or Y;
	
	zero : mux2to1 port map (asResult(3), "0000", "0001", muxOutput);
	
	output_mux : mux4to1 generic map (N => 4) port map (muxOutput, asResult, andResult, orResult, ALU_op, S); 
	
	zero2 <= '1' when(asResult = "0000") else '0';
end behaviour;