-- Universidade Federal de Minas Gerais
-- Escola de Engenharia
-- Departamento de Engenharia Eletrônica
-- Autoria: Guilherme Gomes, Felipe Freitas, Melissa Monni
-- library ieee;
-- use ieee.std_logic_1164.all;

-- package interface_p is
--     type interface_t is array (0 to 6) of std_logic_vector(31 downto 0);
-- end package interface_p;

library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_misc.all;
use work.interface_p.all;

entity mini_risc is
	port (
		clk_manual : in std_logic;
		clk_system : in std_logic;
		rst        : in std_logic;
        clk_sel    : in std_logic;

        -- interface for FPGA testing
        -- leds : out std_logic_vector(9 downto 0);
        -- display_1 : out std_logic_vector(6 downto 0);
        -- display_2 : out std_logic_vector(6 downto 0);
        -- display_3 : out std_logic_vector(6 downto 0);
        -- display_4 : out std_logic_vector(6 downto 0);
        -- display_5 : out std_logic_vector(6 downto 0);
        -- display_6 : out std_logic_vector(6 downto 0);

		InterCtrl       : in std_logic;   --# Defines Interrupt Mux Origin
		Periferic_addr  : in std_logic_vector(3 downto 0); --# Address for periferic 
		IntMask 		: out std_logic_vector(3 downto 0); --# Maks for enable or disable interruptions

		-- GPIO ports
		GPIO_we_i     : out  std_logic;
		GPIO_data_i   : out  std_logic_vector(31 downto 0); -- registradores da cpu que serão escritos e lidos pela GPIO
		GPIO_addr_i   : out  std_logic_vector( 0 downto 0);
		GPIO_data_o   : in   std_logic_vector(31 downto 0)
		--


	);
end mini_risc;

architecture arch of mini_risc is

	-- control signals (will be ports of the control unit)
    signal AluSrc, AluSrc_DX : std_logic;
	signal RegWrite, MemWrite, MemToReg : std_logic;
	signal RegWrite_DX, MemWrite_DX, MemToReg_DX : std_logic;
    signal RegWrite_MW, MemWrite_MW, MemToReg_MW : std_logic;

	signal AluOp, AluOp_DX : std_logic_vector(3 downto 0);
	signal PCSrc, PCSrcCtrl, PCSrcCtrl_DX : std_logic_vector(1 downto 0);
    signal BrokenImm, BrokenImm_DX : std_logic;

	-- miscellaneous relevant signals
	signal PC, PC_DX, PC4, NextPC, ProbablePC, EPC, BranchAddr, BranchIncr : std_logic_vector (11 downto 0);

	signal Control : std_logic_vector(11 downto 0);
	signal Inst, Inst_DX, IntAddr: std_logic_vector(31 downto 0);

	signal PreImm : std_logic_vector(11 downto 0);
	signal Imm : std_logic_vector(31 downto 0);

    signal RD, RD_MW : std_logic_vector(5 downto 0);

	signal R1_data, R2_data, R2_data_MW, MemOut, WriteBack: std_logic_vector(31 downto 0);
    signal ALU_zero, epcEn : std_logic;
	signal ALU_A, ALU_B, AluResult, AluResult_MW : std_logic_vector(31 downto 0);

    signal clk, divided_clk : std_logic;



    -- output interface
    signal mem_interface : interface_t;
    -- type display_t is array (0 to 5) of std_logic_vector(6 downto 0);
    -- signal display : display_t;

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
    component registrador1b is
        port (
            entrada_dados, WE, clk, reset : in std_logic;
            saida_dados    : out std_logic
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

	component memp is
		generic (
			INSTR_WIDTH   : natural := 32; -- tamanho da InstrucaoAddro em numero de bits
			MI_ADDR_WIDTH : natural := 4  -- tamanho do PerifericAddr da memoria de instrucoes em numero de bits
		);
		port (
			clk       : in std_logic;
			reset     : in std_logic;
			PerifericAddr  : in std_logic_vector(3 downto 0);
			InstrucaoAddr : out std_logic_vector(INSTR_WIDTH - 1 downto 0)
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
			rst                 : in std_logic;
			mem_write, mem_read : in std_logic; --sinais do controlador
			write_data_mem      : in std_logic_vector(MD_DATA_WIDTH - 1 downto 0);
			adress_mem          : in std_logic_vector(MD_ADDR_WIDTH - 1 downto 0);
			read_data_mem       : out std_logic_vector(MD_DATA_WIDTH - 1 downto 0);
			interface           : out interface_t;
	
			p_adress_mem          : in std_logic_vector(MD_ADDR_WIDTH - 1 downto 0); -- periferic access to data memory
			p_read_data_mem       : out std_logic_vector(MD_DATA_WIDTH - 1 downto 0) -- periferic access to data memory
		 );
	end component;


	-- unidade de controle
	component unidade_de_controle_ciclo_unico is
		generic (
			INSTR_WIDTH       : natural := 32;
			OPCODE_WIDTH      : natural := 4;
			DP_CTRL_BUS_WIDTH : natural := 11;
			ULA_CTRL_WIDTH    : natural := 4
		);
		port (
			instrucao       : in std_logic_vector(INSTR_WIDTH - 1 downto 0);       -- instrução
			InterCtrl_flag  : in std_logic; -- flag interruption
			controle        : out std_logic_vector(DP_CTRL_BUS_WIDTH - 1 downto 0); -- controle da via
			int_mask        : out std_logic_vector(3 downto 0);
			epcEn           : out std_logic -- Enables recording previous pc on EPC.
		);
	end component;

    component seven_seg_decoder is
        port (
            input  : in std_logic_vector(3 downto 0);
            output : out std_logic_vector(6 downto 0)
        );
    end component;
    component divisor_clock is
    port ( clk50MHz : in std_logic;
           reset : in std_logic;
           clk1Hz : out std_logic
         );
    end component;

	begin

	-- Interruption ctl interface
    u_divider : divisor_clock port map(clk_system, rst, divided_clk);
    process (clk, clk_manual, clk_system, clk_sel)
    begin
        case clk_sel is
            when '1' => clk <= clk_manual;
            when others => clk <= divided_clk;
        end case;
    end process;

	u_controler : unidade_de_controle_ciclo_unico port map(Inst, InterCtrl, Control, IntMask, epcEn);

	-- GPIO_data_o <= MemGpioOut; -- When interruption flag for gpio is setted a load word must medone to load the new output for gpio
	
	-- GPIO_we_i    <= '1';
	-- GPIO_addr_i  <= "1";
	u_mem_perif : memp port map(clk, rst, Periferic_addr, IntAddr); --perific memory
	
		
	BrokenImm   <= Control (10);
	PCSrcCtrl   <= Control (9 downto 8);
	RegWrite    <= Control (7);
	ALUSrc      <= Control (6);
	MemWrite    <= Control (5);
	MemToReg    <= Control (4);
	AluOp       <= Control (3 downto 0);
    


    -- Instruction Fetch Stage (IF)
	u_mux_pc_1 : mux41 port map(PC4, BranchAddr, BranchIncr, EPC, PCSrc, ProbablePC);
	u_mux_pc_2 : mux21 generic map (largura_dado => 12) port map(ProbablePC, IntAddr, InterCtrl, NextPC);
	u_pc : registrador port map(NextPC, '1', clk, rst, PC);
	u_epc : registrador port map(ProbablePC, epcEn, clk, rst, EPC);
	u_pc4 : somador port map(PC, X"004", PC4);
    u_memi : memi port map(clk, rst, PC, Inst);

    -- IF-DX pipeline registers
    -- -- datapath signals
    u_ifdx_pc : registrador generic map (largura_dado => 12) port map(PC, '1', clk, rst, PC_DX);
    u_ifdx_inst : registrador generic map (largura_dado => 32) port map(Inst, '1', clk, rst, Inst_DX);
    -- -- control signals
    u_ifdx_pcsrcctrl : registrador   generic map (largura_dado => 2) port map(PCSrcCtrl, '1', clk, rst, PCSrcCtrl_DX);
    u_ifdx_alusrc    : registrador1b port map(AluSrc, '1', clk, rst, AluSrc_DX);
    u_ifdx_aluop     : registrador   generic map (largura_dado => 4) port map(AluOp, '1', clk, rst, AluOp_DX);
    u_ifdx_brokenimm : registrador1b port map(BrokenImm, '1', clk, rst, BrokenImm_DX);
    u_ifdx_regwrite  : registrador1b port map(RegWrite, '1', clk, rst, RegWrite_DX);
    u_ifdx_memwrite  : registrador1b port map(MemWrite, '1', clk, rst, MemWrite_DX);
    u_ifdx_memtoreg  : registrador1b port map(MemToReg, '1', clk, rst, MemToReg_DX);

    -- Instruction Decode and Execution Stage (DX)
    process (BrokenImm_DX, PreImm, Inst_DX)
    begin
        case BrokenImm_DX is
            when '1' => PreImm <= Inst_DX(31 downto 26) & Inst_DX(13 downto 8);
            when others => PreImm <= Inst_DX(19 downto 8);
        end case;
    end process;
    PCSrc(0) <= (PCSrcCtrl_DX(0) and ALU_zero) or (PCSrcCtrl_DX(0) and PCSrcCtrl_DX(1));
    PCSrc(1) <= PCSrcCtrl_DX(1);
    RD <= Inst_DX(31 downto 26);
    u_reg_bank : banco_registradores port map(Inst_DX(25 downto 20), Inst_DX(19 downto 14), RD_MW, WriteBack, R1_data, R2_data, clk, RegWrite_MW);
    u_shift : deslocador port map(PreImm, "00", "01", BranchIncr);
    u_branch_add : somador port map(PC_DX, BranchIncr, BranchAddr);
    u_imm_gen : extensor port map(PreImm, Imm);
    u_mux_alu : mux21 generic map (largura_dado => 32) port map(R2_data, Imm, AluSrc_DX, ALU_B);

    ALU_A <= R1_data;
    u_alu : ula port map(ALU_A, ALU_B, AluOp_DX, AluResult);
    ALU_zero <= AluResult(0);

    -- DX-MW pipeline registers
    -- -- datapath signals
    u_dxmw_aluresult : registrador generic map (largura_dado => 32) port map(AluResult, '1', clk, rst, AluResult_MW);
    u_dxmw_r2data : registrador generic map (largura_dado => 32) port map(R2_data, '1', clk, rst, R2_data_MW);
    u_dxmw_rd : registrador generic map (largura_dado => 6) port map(RD, '1', clk, rst, RD_MW);
    -- -- control signals
    u_dxmw_regwrite : registrador1b port map(RegWrite_DX, '1', clk, rst, RegWrite_MW);
    u_dxmw_memwrite : registrador1b port map(MemWrite_DX, '1', clk, rst, MemWrite_MW);
    u_dxmw_memtoreg : registrador1b port map(MemToReg_DX, '1', clk, rst, MemToReg_MW);

    -- Memory Read/Write and Writeback Stage (MW)
    u_mem : memd port map(clk, rst, MemWrite_MW, '1', R2_data_MW, AluResult_MW(11 downto 0), MemOut, mem_interface, "0", GPIO_data_i);
    u_mux_wb : mux21 generic map (largura_dado => 32) port map(MemOut, AluResult_MW, MemToReg_MW, WriteBack);

    -- -- Output interface
    -- display_1 <= display(5);
    -- display_2 <= display(4);
    -- display_3 <= display(3);
    -- display_4 <= display(2);
    -- display_5 <= display(1);
    -- display_6 <= display(0);
    -- leds(9 downto 0) <= Control(9 downto 0);
    -- gen_display: 
    -- for i in 0 to 3 generate
    --     u_seven_seg : seven_seg_decoder port map(mem_interface(i)(3 downto 0), display(i));
    -- end generate gen_display;
    -- u_seven_seg_pc1 : seven_seg_decoder port map(PC(7 downto 4), display(4));
    -- u_seven_seg_pc2 : seven_seg_decoder port map(PC(3 downto 0), display(5));


end arch;
