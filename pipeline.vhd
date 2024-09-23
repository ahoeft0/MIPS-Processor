library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity pipeline is
	port( clock, reset : in std_logic;
	current_pc, result : out std_logic_vector(3 downto 0));
end pipeline;
 
architecture behaviour of pipeline is
	constant initial_pc : std_logic_vector(3 downto 0) := (others => '0');
	signal update_pc, read_port1, read_port2, write_port, w_value, src1, src2, dsrc1, dsrc2, sum, rout, mout, muxOutput1, muxOutput2, muxOutput3, muxOutputB, muxOutputJ, imm : std_logic_vector(3 downto 0);
	signal instr_from_im : std_logic_vector(31 downto 0);
	signal MemRead, MemWrite, RegWrite, add_sub, RegDst, AluSrc, MemToReg, zero2, zeroSum, Cout, branch, jump: std_logic;
	signal ALU_op : std_logic_vector (1 downto 0);
	
	signal ID_EX_jump, ID_EX_branch, ID_EX_MemToReg, ID_EX_MemWrite, ID_EX_AluSrc, ID_EX_add_sub, ID_EX_RegDst, ID_EX_RegWrite, ID_EX_MemRead : std_logic;
	signal ID_EX_ALU_op, FWDA, FWDB : std_logic_vector (1 downto 0);
	signal IF_ID_update_pc, ID_EX_update_pc, ID_EX_src1, ID_EX_src2, ID_EX_read_port2, ID_EX_write_port, ID_EX_imm : std_logic_vector (3 downto 0);
	signal IF_ID_instr_from_im : std_logic_vector (31 downto 0);
	signal EX_MEM_MemToReg, EX_MEM_MemWrite, EX_MEM_RegWrite, EX_MEM_MemRead, MEM_WB_MemToReg, MEM_WB_RegWrite : std_logic;
	signal EX_MEM_sum, EX_MEM_src2, EX_MEM_muxOutput1, MEM_WB_dsrc1, MEM_WB_sum, MEM_WB_muxOutput1, FWD_src1, FWD_src2 : std_logic_vector (3 downto 0);
	
begin
	pc_mux : mux2to1 generic map (n=>4) port map (reset, update_pc, initial_pc, mout);					--- multiplexer
	pc	: regN generic map (n=>4) port map (clock, mout, rout);												--- register
	---------- IF ------------------------------------------
	addpc : ripple_carry port map ('0', rout, "0001", update_pc);

	im : instruction_memory port map (clock, reset, rout, instr_from_im);
	
	----------- IF_ID ----------------------------------------------
	IF_ID1 : Reg4bit port map (clock, reset, update_pc, IF_ID_update_pc);
	
	IF_ID2 : Reg32bit port map (clock, reset, instr_from_im, IF_ID_instr_from_im);
	
	------------- ID ------------------------------------------------
	id : instruction_decode port map (IF_ID_instr_from_im, MemRead, MemWrite, RegWrite, add_sub, RegDst, AluSrc, MemToReg, jump, branch, read_port1, read_port2, write_port, imm, ALU_op);
	
	rf : register_file port map (clock, reset, MEM_WB_RegWrite, read_port1, read_port2, MEM_WB_muxOutput1, muxOutput3, src1, src2);
	
	------------- ID_EX -------------------------------------------------------
	ID_EX1 : Reg4bit port map (clock, reset, IF_ID_update_pc, ID_EX_update_pc);
	
	ID_EX2 : Reg1bit port map (clock, reset, jump, ID_EX_jump);
	
	ID_EX3 : Reg1bit port map (clock, reset, branch, ID_EX_branch);
	
	ID_EX4 : Reg1bit port map (clock, reset, MemToReg, ID_EX_MemToReg);
	
	ID_EX5 : Reg1bit port map (clock, reset, MemWrite, ID_EX_MemWrite);
	
	ID_EX6 : Reg4bit port map (clock, reset, src1, ID_EX_src1);
	
	ID_EX7 : Reg4bit port map (clock, reset, src2, ID_EX_src2);
	
	ID_EX8 : Reg1bit port map (clock, reset, AluSrc, ID_EX_AluSrc);
	
	ID_EX9 : Reg1bit port map (clock, reset, add_sub, ID_EX_add_sub);
	
	ID_EX10 : Reg2bit port map (clock, reset, ALU_op, ID_EX_ALU_op);
	
	ID_EX11 : Reg4bit port map (clock, reset, read_port2, ID_EX_read_port2);
	
	ID_EX12 : Reg4bit port map (clock, reset, write_port, ID_EX_write_port);
	
	ID_EX13 : Reg1bit port map (clock, reset, RegDst, ID_EX_RegDst);
	
	ID_EX14 : Reg1bit port map (clock, reset, RegWrite, ID_EX_RegWrite);
	
	ID_EX15 : Reg4bit port map (clock, reset, imm, ID_EX_imm);
	
	ID_EX16 : Reg1bit port map (clock, reset, MemRead, ID_EX_MemRead);
	
	------------------ EX -----------------------------------------------------
	fwd : Forwarding_Unit port map (FWDA, FWDB, EX_MEM_Regwrite, MEM_WB_Regwrite, MEM_WB_muxOutput1, EX_MEM_muxOutput1, ID_EX_src2, ID_EX_src1);
	
	m1 : mux2to1 port map (ID_EX_RegDst, ID_EX_read_port2, ID_EX_write_port, muxOutput1);
	
	mf1 : mux4to1 port map (ID_EX_src1, EX_MEM_sum, muxOutput3, "0000", FWDA, FWD_src1);
	
	mf2 : mux4to1 port map (ID_EX_src2, EX_MEM_sum, muxOutput3, "0000", FWDB, FWD_src2);
	
	m2 : mux2to1 port map (ID_EX_AluSrc, FWD_src2, ID_EX_imm, muxOutput2);
	
	alu_ins : ALU port map (FWD_src1, muxOutput2, ID_EX_add_sub, ID_EX_ALU_op, sum, zero2);
	
	zeroSum <= ID_EX_branch AND zero2;
	
	mB : mux2to1 port map (zeroSum, ID_EX_update_pc, ID_EX_imm, muxOutputB);
	
	mJ : mux2to1 port map (ID_EX_jump, muxOutputB, ID_EX_imm, muxOutputJ);
	
	------------- EX_MEM -------------------------------------------------------
	EX_MEM1 : Reg1bit port map (clock, reset, ID_EX_MemToReg, EX_MEM_MemToReg);
	
	EX_MEM2 : Reg1bit port map (clock, reset, ID_EX_MemWrite, EX_MEM_MemWrite);
	
	EX_MEM3 : Reg4bit port map (clock, reset, sum, EX_MEM_sum);
	
	EX_MEM4 : Reg4bit port map (clock, reset, ID_EX_src2, EX_MEM_src2);
	
	EX_MEM5 : Reg4bit port map (clock, reset, muxOutput1, EX_MEM_muxOutput1);
	
	EX_MEM6 : Reg1bit port map (clock, reset, ID_EX_RegWrite, EX_MEM_RegWrite);
	
	EX_MEM7 : Reg1bit port map (clock, reset, ID_EX_MemRead, EX_MEM_MemRead);
	
	------------------ MEM ----------------------------------------------------------------	
	dm : DataMemory port map (clock, reset, EX_MEM_MemWrite, EX_MEM_sum, EX_MEM_sum, EX_MEM_sum, EX_MEM_src2, dsrc1, dsrc2);
	
	------------- MEM_WB -------------------------------------------------------
	MEM_WB1 : Reg1bit port map (clock, reset, EX_MEM_MemToReg, MEM_WB_MemToReg);
	
	MEM_WB2 : Reg4bit port map (clock, reset, dsrc1, MEM_WB_dsrc1);
	
	MEM_WB3 : Reg4bit port map (clock, reset, EX_MEM_sum, MEM_WB_sum);
	
	MEM_WB4 : Reg4bit port map (clock, reset, EX_MEM_muxOutput1, MEM_WB_muxOutput1);
	
	MEM_WB5 : Reg1bit port map (clock, reset, EX_MEM_RegWrite, MEM_WB_RegWrite);
	
	------------------ WB --------------------------------------------------
	m3 : mux2to1 port map (MEM_WB_MemToReg, MEM_WB_sum, MEM_WB_dsrc1, muxOutput3);
	
	
	current_pc <= rout;
	result <= muxOutput3;

end behaviour;