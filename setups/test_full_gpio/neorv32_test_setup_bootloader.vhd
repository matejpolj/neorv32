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
    gpio_o      : out std_ulogic_vector(31 downto 0); -- parallel output
    gpio_i      : in  std_ulogic_vector(21 downto 0); -- parallel input
    -- UART0 --
    uart0_txd_o : out std_ulogic; -- UART0 send data
    uart0_rxd_i : in  std_ulogic;  -- UART0 receive data
    -- UART1 --
    uart1_txd_o : out std_ulogic; -- UART1 send data
    uart1_rxd_i : in  std_ulogic;  -- UART1 receive data
    -- PWM --
    pwm_o       : out std_ulogic_vector(9 downto 0); -- PWM output
    -- SPI --
    spi_sck_o   : out std_ulogic; -- serial clock output
    spi_sdo_o   : out std_ulogic; -- serial data output
    spi_sdi_i   : in  std_ulogic; -- serial data input
    spi_csn_o   : out std_ulogic_vector(7 downto 0); -- dedicated chip select
	 -- XIRQ --
	 xirq_i		 : in	 std_ulogic_vector(1 downto 0); -- interrupt channels
	 clk_o		 : out std_ulogic -- clk out
  );
end entity;

architecture neorv32_test_setup_bootloader_rtl of neorv32_test_setup_bootloader is

  signal con_gpio_o : std_ulogic_vector(63 downto 0);
  signal con_gpio_i : std_ulogic_vector(63 downto 0);
  signal con_pwm_o  : std_ulogic_vector(59 downto 0);
  signal con_xirq_i : std_ulogic_vector(31 downto 0);

begin

  -- The Core Of The Problem ----------------------------------------------------------------
  -- -------------------------------------------------------------------------------------------
  neorv32_top_inst: neorv32_top
  generic map (
    -- General --
    CLOCK_FREQUENCY              => CLOCK_FREQUENCY,   -- clock frequency of clk_i in Hz
    INT_BOOTLOADER_EN            => true,              -- boot configuration: true = boot explicit bootloader; false = boot from int/ext (I)MEM
    -- RISC-V CPU Extensions --
    CPU_EXTENSION_RISCV_A        => true,					 -- implement atomic extension
    CPU_EXTENSION_RISCV_B        => true,  			   -- implement bit-manipulation extension
    CPU_EXTENSION_RISCV_C        => true,  				 -- implement compressed extension
    CPU_EXTENSION_RISCV_M        => true, 				 -- implement mul/div extension
    CPU_EXTENSION_RISCV_U        => true,  				 -- implement user mode extension
    CPU_EXTENSION_RISCV_Zfinx    => true,  				 -- implement 32-bit floating-point extension (using INT regs!)
    CPU_EXTENSION_RISCV_Zicsr    => true,   			 -- implement CSR system
    CPU_EXTENSION_RISCV_Zicntr   => true,   			 -- implement base counters
    CPU_EXTENSION_RISCV_Zihpm    => true,  				 -- implement hardware performance monitors
    CPU_EXTENSION_RISCV_Zifencei => true,  				 -- implement instruction stream sync.
    -- Internal Instruction memory --
    MEM_INT_IMEM_EN              => true,              -- implement processor-internal instruction memory
    MEM_INT_IMEM_SIZE            => MEM_INT_IMEM_SIZE, -- size of processor-internal instruction memory in bytes
    -- Internal Data memory --
    MEM_INT_DMEM_EN              => true,              -- implement processor-internal data memory
    MEM_INT_DMEM_SIZE            => MEM_INT_DMEM_SIZE, -- size of processor-internal data memory in bytes
    -- External Interrupts Controller (XIRQ) --
    XIRQ_NUM_CH                  => 2,                -- number of external IRQ channels (0..32)
    XIRQ_TRIGGER_TYPE            => x"ffffffff",       -- trigger type: 0=level, 1=edge
    XIRQ_TRIGGER_POLARITY        => x"ffffffff",       -- trigger polarity: 0=low-level/falling-edge, 1=high-level/rising-edge

    -- Processor peripherals --
    IO_GPIO_EN                   => true,              -- implement general purpose input/output port unit (GPIO)
    IO_MTIME_EN                  => true,              -- implement machine system timer (MTIME)
    IO_UART0_EN                  => true,              -- implement primary universal asynchronous receiver/transmitter (UART0)
    IO_UART1_EN                  => true,              -- implement primary universal asynchronous receiver/transmitter (UART1)
    IO_PWM_NUM_CH                => 10,                -- number of PWM channels to implement (0..60); 0 = disabled
    IO_SPI_EN                    => true,              -- implement serial peripheral interface (SPI)
    IO_TRNG_EN                   => true,              -- implement true random number generator (TRNG)
    IO_GPTMR_EN                  => true               -- implement general purpose timer (GPTMR)
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
    uart0_rxd_i => uart0_rxd_i, -- UART0 receive data
    -- primary UART1 (available if IO_UART1_EN = true) --
    uart1_txd_o => uart1_txd_o, -- UART1 send data
    uart1_rxd_i => uart1_rxd_i, -- UART1 receive data
    -- SPI (available if IO_SPI_EN = true) --
    spi_sck_o   => spi_sck_o,   -- SPI serial clock
    spi_sdo_o   => spi_sdo_o,   -- controller data out, peripheral data in
    spi_sdi_i   => spi_sdi_i,   -- controller data in, peripheral data out
    spi_csn_o   => spi_csn_o,   -- chip-select
    xirq_i      => con_xirq_i,      -- IRQ channels
    -- PWM output control --
    pwm_o       => con_pwm_o    -- PWM output
  );

  -- GPIO --
  gpio_o <= con_gpio_o(31 downto 0);
  con_gpio_i(21 downto 0) <= gpio_i(21 downto 0);
  -- PWM --
  pwm_o  <= con_pwm_o(9 downto 0);
  -- XIRQ --
  con_xirq_i(1 downto 0) <= xirq_i;
  -- CLK --
  --clk_o <= clk_i;
  clk_o <= clk_i;
	
--	p_clk_divider: process(clk_i)
--		begin
--			--if(i_rst='0') then
--			--	clk_divider   <= (others=>'0');
--			if(rising_edge(clk_i)) then
--				clk_divider   <= clk_divider + 1;
--			end if;
--	end process p_clk_divider;
	
end architecture;
