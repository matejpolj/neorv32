-- #################################################################################################
-- # << NEORV32 - Test Setup using the UART-Bootloader to upload and run executables >>            #
-- # ********************************************************************************************* #
-- # BSD 3-Clause License                                                                          #
-- #                                                                                               #
-- # Copyright (c) 2021, Stephan Nolting. All rights reserved.                                     #
-- #                                                                                               #
-- # Redistribution and use in source and binary forms, with or without modification, are          #
-- # permitted provided that the following conditions are met:                                     #
-- #                                                                                               #
-- # 1. Redistributions of source code must retain the above copyright notice, this list of        #
-- #    conditions and the following disclaimer.                                                   #
-- #                                                                                               #
-- # 2. Redistributions in binary form must reproduce the above copyright notice, this list of     #
-- #    conditions and the following disclaimer in the documentation and/or other materials        #
-- #    provided with the distribution.                                                            #
-- #                                                                                               #
-- # 3. Neither the name of the copyright holder nor the names of its contributors may be used to  #
-- #    endorse or promote products derived from this software without specific prior written      #
-- #    permission.                                                                                #
-- #                                                                                               #
-- # THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS   #
-- # OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF               #
-- # MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE    #
-- # COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,     #
-- # EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE #
-- # GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED    #
-- # AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING     #
-- # NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED  #
-- # OF THE POSSIBILITY OF SUCH DAMAGE.                                                            #
-- # ********************************************************************************************* #
-- # The NEORV32 RISC-V Processor - https://github.com/stnolting/neorv32                           #
-- #################################################################################################

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

library neorv32;
use neorv32.neorv32_package.all;

entity neorv32_test_setup_bootloader is
  generic (
    -- adapt these for your setup --
    CLOCK_FREQUENCY   : natural := 50000000; -- clock frequency of clk_i in Hz
    MEM_INT_IMEM_SIZE : natural := 32*1024;   -- size of processor-internal instruction memory in bytes
    MEM_INT_DMEM_SIZE : natural := 16*1024     -- size of processor-internal data memory in bytes
  );
  port (
    -- Global control --
    clk_i       : in  std_ulogic; -- global clock, rising edge
    rstn_i      : in  std_ulogic; -- global reset, low-active, async
    -- GPIO --
    gpio_o      : out std_ulogic_vector(21 downto 0); -- parallel output
    gpio_i      : in  std_ulogic_vector(7 downto 0); -- parallel input
    -- UART0 --
    uart0_txd_o : out std_ulogic; -- UART0 send data
    uart0_rxd_i : in  std_ulogic;  -- UART0 receive data
    -- PWM --
    pwm_o       : out std_ulogic_vector(1 downto 0); -- PWM control output
    -- JTAG TAP --
    nTRST_i     : in  std_logic;
    TCK_i       : in  std_logic;
    TDI_i       : in  std_logic; 
    TDO_o       : out std_logic;
    TMS_i       : in  std_logic;
    -- SDRAM interface,
    -- here a A3V64S40ETP-G6 (166MHz@CL-3) is used.
    -- Reference is made to Zentel datasheet:
    -- A3V64S40ETP, Revision 1.2, Mar., 2010
    --        
    SDRAM_CLK   : out   std_logic;                        -- Master Clock
    SDRAM_CKE   : out   std_logic;                        -- Clock Enable    
    SDRAM_CS_N  : out   std_logic;                        -- Chip Select
    SDRAM_RAS_N : out   std_logic;                        -- Row Address Strobe
    SDRAM_CAS_N : out   std_logic;                        -- Column Address Strobe
    SDRAM_WE_N  : out   std_logic;                        -- Write Enable
    SDRAM_DQ    : inout std_logic_vector(15 downto 0);    -- Data I/O (16 bits)
    SDRAM_DQML  : out   std_logic;                        -- Output Disable / Write Mask (low)
    SDRAM_DQMU  : out   std_logic;                        -- Output Disable / Write Mask (high)
    SDRAM_ADDR  : out   std_logic_vector(12 downto 0);    -- Address Input (12 bits)
    SDRAM_BA_0  : out   std_logic;                        -- Bank Address 0
    SDRAM_BA_1  : out   std_logic;                        -- Bank Address 1
    CLOCK_50    : in  std_logic
  );
end entity;



architecture neorv32_test_setup_bootloader_rtl of neorv32_test_setup_bootloader is

     --------------------------------------------------------
   -- Define all components which are included here
   --------------------------------------------------------

   --
   -- PLL
   --   
   component pll_sys
      port ( 
         inclk0 : in  std_logic := '0';
         c0     : out std_logic;
         c1     : out std_logic;
         locked : out std_logic 
      );
   end component pll_sys;

   
   --
   -- Wishbone Intercon
   --   
   component wb_intercon is
      port (  
         -- Syscon
         clk_i      : in  std_logic := '0';
         rst_i      : in  std_logic := '0';
      
         -- Wishbone Master
         wbm_stb_i  : in  std_logic := '0';
         wbm_cyc_i  : in  std_logic := '0';
         wbm_we_i   : in  std_logic := '0';
         wbm_ack_o  : out std_logic;
         wbm_adr_i  : in  std_logic_vector(31 downto 0) := (others => '0');
         wbm_dat_i  : in  std_logic_vector(31 downto 0) := (others => '0');
         wbm_dat_o  : out std_logic_vector(31 downto 0);
         wbm_sel_i  : in  std_logic_vector(03 downto 0) := (others => '0');
      
         -- Wishbone Slave x
         wbs_we_o   : out std_logic; 
         wbs_dat_o  : out std_logic_vector(31 downto 0);  
         wbs_sel_o  : out std_logic_vector(03 downto 0);  
      
         -- Wishbone Slave 1
         wbs1_stb_o : out std_logic;
         wbs1_ack_i : in  std_logic := '0';
         wbs1_adr_o : out std_logic_vector(27 downto 0);  
         wbs1_dat_i : in  std_logic_vector(31 downto 0) := (others => '0')
      
      );
   end component wb_intercon;


   --
   -- Wishbone SDRAM Controller
   --
   component wb_sdram is
      port (  
         -- System
         clk_i       : in  std_logic                      := '0';
         rst_i       : in  std_logic                      := '0';

         -- Wishbone
         wbs_stb_i   : in  std_logic                      := '0';
         wbs_we_i    : in  std_logic                      := '0';
         wbs_sel_i   : in  std_logic_vector(03 downto 0)  := (others => '0');
         wbs_adr_i   : in  std_logic_vector(27 downto 0)  := (others => '0');
         wbs_dat_i   : in  std_logic_vector(31 downto 0)  := (others => '0');
         wbs_dat_o   : out std_logic_vector(31 downto 0);  
         wbs_ack_o   : out std_logic;
      
         -- SDRAM
         sdram_addr  : out   std_logic_vector(12 downto 0);                    -- addr
         sdram_ba    : out   std_logic_vector(1 downto 0);                     -- ba
         sdram_cas_n : out   std_logic;                                        -- cas_n
         sdram_cke   : out   std_logic;                                        -- cke
         sdram_cs_n  : out   std_logic;                                        -- cs_n
         sdram_dq    : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
         sdram_dqm   : out   std_logic_vector(1 downto 0);                     -- dqm
         sdram_ras_n : out   std_logic;                                        -- ras_n
         sdram_we_n  : out   std_logic                                         -- we_n
      );
   end component wb_sdram;

  signal con_gpio_o : std_ulogic_vector(63 downto 0);
  signal con_gpio_i : std_ulogic_vector(63 downto 0);
  signal con_pwm_o  : std_ulogic_vector(1 downto 0);

     --------------------------------------------------------
   -- Define all local signals here
   --------------------------------------------------------

   signal sys_clk          : std_logic := '0';
   signal pll_locked       : std_logic := '0';
   signal reset            : std_logic := '0';
   signal reset_s1         : std_logic := '1';
   signal reset_s2         : std_logic := '1';
   signal reset_s3         : std_logic := '1';
   signal sys_rst          : std_logic;
   signal fpga_reset       : std_logic;

   --signal clk_i            : std_logic; -- ? if needed
   --signal rstn_i           : std_logic;
   
   -- SDRAM
   signal sdram_ba         : std_logic_vector(1 downto 0);
   signal sdram_dqm        : std_logic_vector(1 downto 0);

   -- Wishbone bus interface (available if MEM_EXT_EN = true) --
   signal wb_adr           : std_ulogic_vector(31 downto 0);  -- address
   signal wb_dat_read_u    : std_ulogic_vector(31 downto 0);  -- read data
   signal wb_dat_write     : std_ulogic_vector(31 downto 0);  -- write data
   signal wb_we            : std_ulogic;                      -- read/write
   signal wb_sel           : std_ulogic_vector(03 downto 0);  -- byte enable
   signal wb_stb           : std_ulogic;                      -- strobe
   signal wb_cyc           : std_ulogic;                      
   signal wb_ack           : std_ulogic;                      -- transfer acknowledge

	signal wb_sel_int       : std_logic_vector(03 downto 0);   -- byte enable
   signal wb_adr_int       : std_logic_vector(31 downto 0);   -- address
	signal wb_dat_read      : std_logic_vector(31 downto 0);
   signal wb_dat_write_int : std_logic_vector(31 downto 0);   -- write data

   -- Wishbone slave
   signal wbs_we_i         : std_logic;
   signal wbs_dat_i        : std_logic_vector(31 downto 0);
   signal wbs_sel_i        : std_logic_vector(03 downto 0);
   signal wbs1_stb_i       : std_logic;
   signal wbs1_ack_o       : std_logic;
   signal wbs1_adr_i       : std_logic_vector(27 downto 0);
   signal wbs1_dat_o       : std_logic_vector(31 downto 0);



begin

   --
   -- PLL
   --
   inst_pll_sys : pll_sys
      port map ( 
         inclk0 => CLOCK_50,
         c0     => sys_clk,
         c1     => SDRAM_CLK,
         locked => pll_locked
      );

   --
   -- In general it is a bad idea to use an asynchhronous Reset signal.
   -- But it is only a bad idea in case of asynchhronous deasserting. 
   -- Therefore the deasserting of the Reset signal must be synchronized.
   --               
  
     -- Asynchronous assert  
     --fpga_reset <= '1' when ((KEY(1) = '0') OR (KEY(0) = '0')) else '0';
     --reset      <= '1' when ((fpga_reset = '1') OR (pll_locked = '0')) else '0';
  
     -- Synchronize deassert
     --process (sys_clk, reset)
     --begin
       -- if (reset = '1') then
         --  reset_s1 <= '1';
           --reset_s2 <= '1';
           --reset_s3 <= '1';
        --elsif rising_edge(sys_clk) then
          -- reset_s1 <= '0';
           --reset_s2 <= reset_s1;
           --reset_s3 <= reset_s2; 
        --end if;
     --end process;   
  
     -- The deassert edge is now synchronized   
     --sys_rst <= reset_s3;
  
     --clk_i  <= sys_clk;
     --rstn_i <= not sys_rst;

  -- The Core Of The Problem ----------------------------------------------------------------
  -- -------------------------------------------------------------------------------------------
  neorv32_top_inst: neorv32_top
  generic map (
    -- General --
    CLOCK_FREQUENCY              => CLOCK_FREQUENCY,   -- clock frequency of clk_i in Hz
    INT_BOOTLOADER_EN            => true,              -- boot configuration: true = boot explicit bootloader; false = boot from int/ext (I)MEM
    -- RISC-V CPU Extensions --
	  CPU_EXTENSION_RISCV_A        => true,					 -- implement atomic extension?
    CPU_EXTENSION_RISCV_B        => true,  			   -- implement bit-manipulation extension?  ---- mogoče
    CPU_EXTENSION_RISCV_C        => true,  				 -- implement compressed extension?
    --CPU_EXTENSION_RISCV_E        => true,  				 -- implement embedded RF extension?
    CPU_EXTENSION_RISCV_M        => true, 				 -- implement mul/div extension?
    CPU_EXTENSION_RISCV_U        => true,  				 -- implement user mode extension? mogoče problem!!
    CPU_EXTENSION_RISCV_Zfinx    => true,  				 -- implement 32-bit floating-point extension (using INT regs!)
    CPU_EXTENSION_RISCV_Zicsr    => true,   			 -- implement CSR system?
    CPU_EXTENSION_RISCV_Zicntr   => true,   			 -- implement base counters?
    CPU_EXTENSION_RISCV_Zihpm    => true,  				 -- implement hardware performance monitors? ---- mogoče??
    CPU_EXTENSION_RISCV_Zifencei => true,  				 -- implement instruction stream sync.? 
    -- Internal Instruction memory --
    MEM_INT_IMEM_EN              => true,              -- implement processor-internal instruction memory
    MEM_INT_IMEM_SIZE            => MEM_INT_IMEM_SIZE, -- size of processor-internal instruction memory in bytes
    -- Internal Data memory --
    MEM_INT_DMEM_EN              => true,              -- implement processor-internal data memory
    MEM_INT_DMEM_SIZE            => MEM_INT_DMEM_SIZE, -- size of processor-internal data memory in bytes
    -- External memory interface --
    MEM_EXT_EN                   => true,              -- implement external memory bus interface?
    MEM_EXT_TIMEOUT              => 255,               -- cycles after a pending bus access auto-terminates (0 = disabled)
    MEM_EXT_PIPE_MODE            => false,             -- protocol: false=classic/standard wishbone mode, true=pipelined wishbone mode
    MEM_EXT_BIG_ENDIAN           => false,             -- byte order: true=big-endian, false=little-endian
    MEM_EXT_ASYNC_RX             => false,             -- use register buffer for RX data when false
    -- Processor peripherals --
    IO_GPIO_EN                   => true,              -- implement general purpose input/output port unit (GPIO)?
    IO_MTIME_EN                  => true,              -- implement machine system timer (MTIME)?
    IO_UART0_EN                  => true,              -- implement primary universal asynchronous receiver/transmitter (UART0)?
    IO_PWM_NUM_CH                => 2                  -- number of PWM channels to implement (0..60); 0 = disabled
  )
  port map (
    -- Global control --
    clk_i       => clk_i,       -- global clock, rising edge
    rstn_i      => rstn_i,      -- global reset, low-active, async
    -- GPIO (available if IO_GPIO_EN = true) --
    gpio_o      => con_gpio_o,  -- parallel output
    gpio_i      => con_gpio_i,  -- parallel input
    -- primary UART0 (available if IO_UART0_EN = true) --
    uart0_txd_o => uart0_txd_o, -- UART0 send data
    uart0_rxd_i => uart0_rxd_i,  -- UART0 receive data
    -- PWM output control --
    pwm_o       => con_pwm_o, -- PWM output
    -- JTAG on-chip debugger interface (available if ON_CHIP_DEBUGGER_EN = true) --
    jtag_trst_i   => nTRST_i,                          -- low-active TAP reset (optional)
    jtag_tck_i    => TCK_i,                            -- serial clock
    jtag_tdi_i    => TDI_i,                            -- serial data input
    jtag_tdo_o    => TDO_o,                            -- serial data output
    jtag_tms_i    => TMS_i,                            -- mode select
    -- Wishbone bus interface (available if MEM_EXT_EN = true) --
    wb_tag_o      => open,                             -- tag
    wb_adr_o      => wb_adr,                           -- address
    wb_dat_i      => wb_dat_read_u,                    -- read data
    wb_dat_o      => wb_dat_write,                     -- write data
    wb_we_o       => wb_we,                            -- read/write
    wb_sel_o      => wb_sel,                           -- byte enable
    wb_stb_o      => wb_stb,                           -- strobe
    wb_cyc_o      => wb_cyc,                           -- valid cycle
    wb_lock_o     => open,                             -- exclusive access request
    wb_ack_i      => wb_ack,                           -- transfer acknowledge
    wb_err_i      => '0'                               -- transfer error
  );

  -- GPIO output --
  gpio_o <= con_gpio_o(21 downto 0);
  pwm_o  <= con_pwm_o(1 downto 0);

  wb_sel_int       <= To_StdLogicVector( wb_sel );
  wb_adr_int       <= To_StdLogicVector( wb_adr );
	wb_dat_read_u    <= std_ulogic_vector( wb_dat_read );
  wb_dat_write_int <= To_StdLogicVector( wb_dat_write );

  --
   -- Wishbone Intercon
   --   
   inst_wb_intercon : wb_intercon
      port map (  
         -- Syscon
         clk_i      => sys_clk,
         rst_i      => sys_rst,
      
         -- Wishbone Master
         wbm_stb_i  => wb_stb,
         wbm_cyc_i  => wb_cyc,
         wbm_we_i   => wb_we,
         wbm_ack_o  => wb_ack,
         wbm_adr_i  => wb_adr_int,
         wbm_dat_i  => wb_dat_write_int,
         wbm_dat_o  => wb_dat_read,
         wbm_sel_i  => wb_sel_int,
      
         -- Wishbone Slave x
         wbs_we_o   => wbs_we_i,
         wbs_dat_o  => wbs_dat_i,
         wbs_sel_o  => wbs_sel_i,
      
         -- Wishbone Slave 1
         wbs1_stb_o => wbs1_stb_i,
         wbs1_ack_i => wbs1_ack_o,
         wbs1_adr_o => wbs1_adr_i,
         wbs1_dat_i => wbs1_dat_o 
      );


   --
   -- Wishbone SDRAM Controller
   --
   inst_wb_sdram: wb_sdram
      port map (  
         -- System
         clk_i       => sys_clk,
         rst_i       => sys_rst,

         -- Wishbone
         wbs_stb_i   => wbs1_stb_i,
         wbs_we_i    => wbs_we_i,
         wbs_sel_i   => wbs_sel_i,
         wbs_adr_i   => wbs1_adr_i,
         wbs_dat_i   => wbs_dat_i,
         wbs_dat_o   => wbs1_dat_o,
         wbs_ack_o   => wbs1_ack_o,

         -- SDRAM
         sdram_addr  => SDRAM_ADDR,
         sdram_ba    => sdram_ba,
         sdram_cas_n => SDRAM_CAS_N,
         sdram_cke   => SDRAM_CKE,
         sdram_cs_n  => SDRAM_CS_N,
         sdram_dq    => SDRAM_DQ,
         sdram_dqm   => sdram_dqm,
         sdram_ras_n => SDRAM_RAS_N,
         sdram_we_n  => SDRAM_WE_N
      );

   SDRAM_BA_1 <= sdram_ba(1);
   SDRAM_BA_0 <= sdram_ba(0);
   
   SDRAM_DQMU <= sdram_dqm(1);
   SDRAM_DQML <= sdram_dqm(0);  

end architecture;
