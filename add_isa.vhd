library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity add_isa is
	port( clock, reset : in std_logic;
	current_pc, result : out std_logic_vector(3 downto 0));
end add_isa;
 
architecture behaviour of add_isa is
	constant initial_pc : std_logic_vector(3 downto 0) := (others => '0');
	signal update_pc, read_port1, read_port2, write_port, w_value, src1, src2, dsrc1, dsrc2, sum, rout, mout, muxOutput1, muxOutput2, muxOutput3, muxOutputB, muxOutputJ : std_logic_vector(3 downto 0);
	signal instr_from_im : std_logic_vector(31 downto 0);
	signal MemRead, MemWrite, RegWrite, add_sub, RegDst, AluSrc, MemToReg, zero2, zeroSum, Cout, branch, jump: std_logic;
	signal ALU_op : std_logic_vector (1 downto 0);
	
begin
	pc_mux : mux2to1 generic map (n=>4) port map (reset, muxOutputJ, initial_pc, mout);					--- multiplexer
	pc	: regN generic map (n=>4) port map (clock, mout, rout);												--- register
	---------- pc = pc +1 ------------------------------------------
	addpc : ripple_carry port map ('0', rout, "0001", update_pc);

	----------- IM -------------------------------------------------
	im : instruction_memory port map (clock, reset, rout, instr_from_im);
	
	------------- ID ------------------------------------------------
	id : instruction_decode port map (instr_from_im, MemRead, MemWrite, RegWrite, add_sub, RegDst, AluSrc, MemToReg, jump, branch, read_port1, read_port2, write_port, ALU_op);
	
	m1 : mux2to1 port map (RegDst, read_port2, write_port, muxOutput1);
	
	------------- RF --------------------------------------------------
	rf : register_file port map (clock, reset, RegWrite, read_port1, read_port2, muxOutput1, muxOutput3, src1, src2);
	
	m2 : mux2to1 port map (AluSrc, src2, instr_from_im(3 downto 0), muxOutput2);
	
	alu_ins : ALU port map (src1, muxOutput2, add_sub, ALU_op, sum, zero2);
		
	dm : DataMemory port map (clock, reset, MemWrite, sum, sum, sum, src2, dsrc1, dsrc2);
	
	m3 : mux2to1 port map (MemToReg, sum, dsrc1, muxOutput3);
	
	zeroSum <= branch AND zero2;
	
	mB : mux2to1 port map (zeroSum, update_pc, instr_from_im(3 downto 0), muxOutputB);
	
	mJ : mux2to1 port map (jump, muxOutputB, instr_from_im(3 downto 0), muxOutputJ);
	
	current_pc <= rout;
	result <= muxOutput3;

end behaviour;