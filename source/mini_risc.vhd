-- Universidade Federal de Minas Gerais
-- Escola de Engenharia
-- Departamento de Engenharia Eletrônica
-- Autoria: Guilherme Gomes, Felipe Freitas, Melissa Monni
library IEEE;
use IEEE.std_logic_1164.all;

entity mini_risc is
	port (
		clk : in std_logic;
		rst : in std_logic
	);
end mini_risc;

architecture arch of mini_risc is

	-- control signals (will be ports of the control unit)
	signal RegWrite, ALUSrc, MemWrite, MemRead, MemToReg : std_logic;
	signal AluOp : std_logic_vector(3 downto 0);
	signal PCSrc : std_logic_vector(1 downto 0);
	
	-- interruption signals (will be ports of the int. controller)
	signal IntCtrl : std_logic;
	signal IntAddr : std_logic_vector(11 downto 0);
	
	-- miscellaneous relevant signals	
	signal PC, PC4, NextPC, ProbablePC, EPC, BranchAddr, BranchIncr : std_logic_vector (11 downto 0);

	signal Control : std_logic_vector(9 downto 0); 	
	signal Inst : std_logic_vector(31 downto 0);

	signal BranchImm : std_logic_vector(11 downto 0);
	
	signal R1_data, R2_data, MemOut, WriteBack, Imm : std_logic_vector(31 downto 0);
	signal ALU_A, ALU_B, AluResult : std_logic_vector(31 downto 0);
	
	component mux21 is
		 generic (
			  largura_dado : natural
		 );
		 port (
			  dado_ent_0, dado_ent_1 : in std_logic_vector((largura_dado - 1) downto 0);
			  sele_ent               : in std_logic;
			  dado_sai               : out std_logic_vector((largura_dado - 1) downto 0)
		 );
	end component;
	component mux41 is
		 generic (
			  largura_dado : natural := 12
		 );
		 port (
			  dado_ent_0, dado_ent_1, dado_ent_2, dado_ent_3 : in std_logic_vector((largura_dado - 1) downto 0);
			  sele_ent                                       : in std_logic_vector(1 downto 0);
			  dado_sai                                       : out std_logic_vector((largura_dado - 1) downto 0)
		 );
	end component;
	component registrador is
		generic (
			largura_dado : natural := 12
		);
		port (
			entrada_dados  : in std_logic_vector((largura_dado - 1) downto 0);
			WE, clk, reset : in std_logic;
			saida_dados    : out std_logic_vector((largura_dado - 1) downto 0)
		);
		end component;

	component somador is
		generic (
			largura_dado : natural := 12
		);

		port (
			entrada_a : in std_logic_vector((largura_dado - 1) downto 0);
			entrada_b : in std_logic_vector((largura_dado - 1) downto 0);
			saida     : out std_logic_vector((largura_dado - 1) downto 0)
		);
	end component;
	component memi is
		generic (
			INSTR_WIDTH   : natural := 32; -- tamanho da instrucaoo em numero de bits
			MI_ADDR_WIDTH : natural := 12  -- tamanho do endereco da memoria de instrucoes em numero de bits
		);
		port (
			clk       : in std_logic;
			reset     : in std_logic;
			Endereco  : in std_logic_vector(MI_ADDR_WIDTH - 1 downto 0);
			Instrucao : out std_logic_vector(INSTR_WIDTH - 1 downto 0)
		);
	end component;
	component banco_registradores is
		 generic (
			  largura_dado : natural := 32;
			  largura_ende : natural := 6
		 );

		 port (
			  ent_R1_ende : in std_logic_vector((largura_ende - 1) downto 0);
			  ent_R2_ende : in std_logic_vector((largura_ende - 1) downto 0);
			  ent_Rd_ende : in std_logic_vector((largura_ende - 1) downto 0);
			  ent_Rd_dado : in std_logic_vector((largura_dado - 1) downto 0);
			  sai_R1_dado : out std_logic_vector((largura_dado - 1) downto 0);
			  sai_R2_dado : out std_logic_vector((largura_dado - 1) downto 0);
			  clk, WE     : in std_logic
		 );
	end component;
	component deslocador is
		generic (
			largura_dado : natural := 12;
			largura_qtde : natural := 2
		);

		port (
			ent_rs_dado           : in std_logic_vector((largura_dado - 1) downto 0);
			ent_rt_ende           : in std_logic_vector((largura_qtde - 1) downto 0); -- o campo de endereços de rt, representa a quantidade a ser deslocada nesse contexto.
			ent_tipo_deslocamento : in std_logic_vector(1 downto 0);
			sai_rd_dado           : out std_logic_vector((largura_dado - 1) downto 0)
		);
	end component;
	component extensor is
		generic (
			largura_dado  : natural := 12;
			largura_saida : natural := 32
		);

		port (
			entrada_Rs : in std_logic_vector((largura_dado - 1) downto 0);
			saida      : out std_logic_vector((largura_saida - 1) downto 0)
		);
	end component;
	component ula is
		 generic (
			  largura_dado : natural := 32
		 );

		 port (
			  entrada_a : in std_logic_vector((largura_dado - 1) downto 0);
			  entrada_b : in std_logic_vector((largura_dado - 1) downto 0);
			  seletor   : in std_logic_vector(3 downto 0);
			  saida     : out std_logic_vector((largura_dado - 1) downto 0)
		 );
	end component;
	component memd is
		 generic (
			  number_of_words : natural := 736; -- número de words que a sua memória é capaz de armazenar
			  MD_DATA_WIDTH   : natural := 32; -- tamanho da palavra em bits
			  MD_ADDR_WIDTH   : natural := 12 -- tamanho do endereco da memoria de dados em bits
		 );
		 port (
			  clk                 : in std_logic;
			  mem_write, mem_read : in std_logic; --sinais do controlador
			  write_data_mem      : in std_logic_vector(MD_DATA_WIDTH - 1 downto 0);
			  adress_mem          : in std_logic_vector(MD_ADDR_WIDTH - 1 downto 0);
			  read_data_mem       : out std_logic_vector(MD_DATA_WIDTH - 1 downto 0)
		 );
	end component;

	-- unidade de controle
	component unidade_de_controle_ciclo_unico is
		generic (
			INSTR_WIDTH       : natural := 32;
			OPCODE_WIDTH      : natural := 4;
			DP_CTRL_BUS_WIDTH : natural := 10;
			ULA_CTRL_WIDTH    : natural := 4
		);
		port (
			instrucao : in std_logic_vector(INSTR_WIDTH - 1 downto 0);       -- instrução
			controle  : out std_logic_vector(DP_CTRL_BUS_WIDTH - 1 downto 0) -- controle da via
		);
	end component;

	
	begin

	u_controler : unidade_de_controle_ciclo_unico port map(Inst, Control);

	PCSrc 		<= Control (9 downto 8);
	RegWrite    <= Control (7);
	ALUSrc      <= Control (6);
	MemWrite    <= Control (5);
	MemToReg    <= Control (4); 
	AluOp       <= Control (3 downto 0);
    BranchImm   <= Inst(31 downto 26) & Inst(13 downto 8);
    IntCtrl     <= '0';
	
	u_mux_pc_1 : mux41 port map(PC4, BranchAddr, AluResult(11 downto 0), EPC, PCSrc, ProbablePC);
	u_mux_pc_2 : mux21 generic map (largura_dado => 12) port map(ProbablePC, IntAddr, IntCtrl, NextPC);
	u_pc : registrador port map(NextPC, '1', clk, rst, PC);
	u_epc : registrador port map(ProbablePC, '1', clk, rst, EPC);
	u_pc4 : somador port map(PC, X"004", PC4);
    u_memi : memi port map(clk, rst, PC, Inst);
    u_reg_bank : banco_registradores port map(Inst(25 downto 20), Inst(19 downto 14), Inst(31 downto 26), WriteBack, R1_data, R2_data, clk, RegWrite);
    u_shift : deslocador port map(BranchImm, "00", "01", BranchIncr);
    u_branch_add : somador port map(PC, BranchIncr, BranchAddr);
    u_imm_gen : extensor port map(Inst(19 downto 8), Imm);
    u_mux_alu : mux21 generic map (largura_dado => 32) port map(R2_data, Imm, AluSrc, ALU_B);
    
    ALU_A <= R1_data;
    u_alu : ula port map(ALU_A, ALU_B, AluOp, AluResult);
    u_mem : memd port map(clk, MemWrite, '1', R2_data, AluResult(11 downto 0), MemOut);
    u_mux_wb : mux21 generic map (largura_dado => 32) port map(MemOut, AluResult, MemToReg, WriteBack);	
	
end arch;
