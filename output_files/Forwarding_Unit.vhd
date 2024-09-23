library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity Forwarding_Unit is
	port( FWDA, FWDB : out std_logic_vector (1 downto 0);
			EX_MEM_Regwrite, MEM_WB_Regwrite: in std_logic;
			MEM_WB_Rd, EX_MEM_Rd, ID_EX_Rs, ID_EX_Rt: in std_logic_vector(3 downto 0));
end Forwarding_Unit;

architecture behavior of Forwarding_Unit is
BEGIN
	FWDA <= "01" when (EX_MEM_Regwrite = '1' and EX_MEM_Rd = ID_EX_Rs) else
				"10" when (MEM_WB_Regwrite = '1' and MEM_WB_Rd = ID_EX_Rs) else
				"00";
	FWDB <= "01" when (EX_MEM_Regwrite = '1' and EX_MEM_Rd = ID_EX_Rt) else
				"10" when (MEM_WB_Regwrite = '1' and MEM_WB_Rd = ID_EX_Rt) else
				"00";
end behavior;