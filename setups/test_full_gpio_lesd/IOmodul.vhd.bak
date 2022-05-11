library IEEE;
use IEEE.std_logic_1164.all; -- definicija std_logic_vector
use IEEE.numeric_std.all;    -- def. unsigned in sestevanja 	

entity IOmodul is
  generic (FREQ2 :  integer := 5);
  port ( clock50	: in  std_logic;
			ioclk		: out std_logic;
			iobus		: inout std_logic_vector(9 downto 0); 
			-- clk 2 Hz
			clk2		: out std_logic;
			----ledmatrix----
			number	: in std_logic_vector(3 downto 0);
			on_off	: in std_logic;						
			----buttons----
			buttons	: out std_logic_vector(3 downto 0)				
        );
end IOmodul;

architecture Opis of IOmodul is
 	component vio is
		port (source : out std_logic_vector(3 downto 0));
	end component vio;
	
	signal line_cnt : unsigned(2 downto 0):="000";
	signal number_reg : unsigned(3 downto 0):="0000";
  
	signal rom_data : unsigned(4 downto 0);
  
	signal addr_counter : unsigned(1 downto 0):="00";
	signal data_led : std_logic_vector(7 downto 0):="00000000";
	
	signal addr : unsigned(1 downto 0);      

	signal div: integer range 0 to 12500000;
	signal divclk: std_logic := '0';
	
	-- slow clock 0.25 Hz for the lock exercise (1a and 1b)
			
type rom_type is array(0 to 111) of unsigned(4 downto 0);  --16 znakov * 7 vrstic
    constant FONT: rom_type :=
    (
        -- 0  (0h)
        "01110", --   #  
        "10001", --  # #
        "10001", -- #   #
        "10001", -- #   #
        "10001", -- #   #
        "10001", --  # #
        "01110", --   #
        -- 1  (1h)
        "00100", --   #
        "01100", --  ##
        "10100", -- # #
        "00100", --   #
        "00100", --   #
        "00100", --   #
        "11111", -- #####
		  -- 2  (2h)
        "01110", --  ###
        "10001", -- #   #
        "00010", --    #
        "00100", --   #
        "01000", --  #
        "10000", -- #
        "11111", -- #####
        -- 3  (3h)
        "11111", -- #####
        "00010", --    #
        "00100", --   #
        "01110", --  ###
        "00001", --     #
        "10001", -- #   #
        "01110", --  ###
        -- 4  (4h)
        "00010", --    #
        "00110", --   ##
        "01010", --  # #
        "10010", -- #  #
        "11111", -- #####
        "00010", --    #
        "00010", --    #
        -- 5  (5h)
        "11111", -- #####
        "10000", -- #
        "11110", -- ####
        "00001", --     #
        "00001", --     #
        "10001", -- #   #
        "01110", --  ###
        -- 6  (6h)
        "00111", --   ###
        "01000", --  #
        "10000", -- #
        "11110", -- ####
        "10001", -- #   #
        "10001", -- #   # 
        "01110", --  ###
        -- 7  (7h)
        "11111", -- #####
        "10001", -- #   #
        "00010", --    #
        "00100", --   #
        "00100", --   #
        "00100", --   # 
        "00100", --   #
        -- 8  (8h)
        "01110", --  ###
        "10001", -- #   #
        "10001", -- #   #
        "01110", --  ###
        "10001", -- #   #
        "10001", -- #   #
        "01110", --  ###
        -- 9  (9h)
        "01110", --  ###
        "10001", -- #   #
        "10001", -- #   #
        "01111", --  ####
        "00001", --     #
        "10001", -- #   #
        "01110", --  ###
        -- A  (Ah)
        "00100", --  #
        "01110", -- ###
        "10001", --#   #
        "10001", --#   #
        "11111", --#####
        "10001", --#   #
        "10001", --#   #
        -- B  (Bh)
        "11110", --####
        "10001", --#   #
        "10001", --#   #
        "11110", --####
        "10001", --#   #
        "10001", --#   #
        "11110", --####
        -- C  (Ch)
        "00110", --  ## 
        "01001", -- #  #
        "10000", --#
        "10000", --#
        "10000", --#
        "01001", -- #  #
        "00110", --  ##
		  -- D  (Dh)
        "11100", --###
        "10010", --#  #
        "10001", --#   #  
        "10001", --#   #
        "10001", --#   #
        "10010", --#  #
        "11100", --###
        -- E  (Eh)
        "11111", --#####
        "10000", --#
        "10000", --#
        "11111", --#####
        "10000", --#
        "10000", --#
        "11111", --#####
        -- F  (Fh)
        "11111", --#####
        "10000", --#
        "10000", --#
        "11100", --###
        "10000", --#
        "10000", --#
        "10000"  --#
    );	

	 signal vkey: std_logic_vector(3 downto 0);
begin

u0: component vio
		port map (
			source => vkey  -- sources.source
	 );
		
main:process (clock50)
 variable refresh_cnt: unsigned(16 downto 0) := to_unsigned(0,17);
begin
	if rising_edge(clock50) then
		refresh_cnt := refresh_cnt+1;
	 
		if refresh_cnt=1 then  --ko je stevec '1' vpišemo pridobljene podatke v (data_led)
			if on_off='1' then
				data_led(4)<=rom_data(0);
				data_led(3)<=rom_data(1);
				data_led(2)<=rom_data(2);
				data_led(1)<=rom_data(3);
				data_led(0)<=rom_data(4);
				if rom_data="00000" then  --če je vrstica prazna vpišemo v "000" kar naredi vrstico led matrike neaktivno
					data_led(7 downto 5)<="000";
				else
					data_led(7 downto 5)<= std_logic_vector(line_cnt + 1);  --vpišemo katera vrstica led matrike bo aktivna glede na stevec (line_cnt)
				end if;
			else
				data_led<="00000000";
			end if;
			
			line_cnt <= line_cnt+1;
			if line_cnt=6 then -- nalozimo number v number_reg, ko smo prikazali celoten znak
				line_cnt <= "000";
				number_reg <= unsigned(number); 
			end if;
		end if; 
	end if;                                 	  
end process;                                                                         

rom_data <= FONT(to_integer(line_cnt + 7*number_reg)); -- naslov določa na izbran znak + vrstica
	
mux:process (clock50)
begin
	if rising_edge(clock50) then
		--***********naslovni_stevec***********
		addr <= addr+1;
		if addr="01" then	
			iobus(3 downto 0) <= "ZZZZ";
		end if;				
		----address "01"----	LED MATRIKA 5X7
		if addr="01" then
			iobus(7 downto 0) <= data_led;
			buttons <= iobus(3 downto 0) or vkey;
		end if;	
	
		if div<(25000000/FREQ2) then
			div <= div + 1;
		else
			div <= 0;
			divclk <= not divclk;
		end if;
	end if;
end process; 

ioclk <= clock50;
iobus(9 downto 8) <= std_logic_vector(addr);

clk2 <= divclk;

end Opis;