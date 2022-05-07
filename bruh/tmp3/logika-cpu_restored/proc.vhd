library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity proc is
  Port ( clk, rst : in STD_LOGIC;
         port_in: in std_logic; --_vector (11 downto 0);         
		   port_out: out std_logic_vector (11 downto 0)
		 );
end proc;

architecture Opis of proc is 
component program is
 Port ( clk : in  STD_LOGIC;
        adr : in  unsigned (7 downto 0);
        din : in  unsigned (11 downto 0);
        dout : out  unsigned (11 downto 0);
        we : in  STD_LOGIC
       );
 end component;

 component CPU is
 port ( clk, rst:    in std_logic; 
       data, data_in: in unsigned(11 downto 0);       
       a: out	unsigned(7 downto 0);
		 we: out std_logic;
		 data_out: out unsigned(11 downto 0);       
       we_out: out std_logic 
	  );
 end component;
  
 signal d, data_cpu, data_in: unsigned(11 downto 0);
 signal a: unsigned (7 downto 0);
 signal we: std_logic;
 
 signal we_out: std_logic;

begin
		 
 c0: program port map (
   clk => clk,
	adr => a,
	din => data_cpu,
	dout => d,
	we => we );
	
 c1: CPU port map (
   clk => clk,
	rst => rst,
	data => d,
	data_in => data_in,
   a => a,
   we => we,
	data_out => data_cpu,
	we_out => we_out );
   
 data_in <= "00000000000" & port_in; --  unsigned(port_in);
 
 p: process(clk)
 begin
   if rising_edge(clk) then
	  if we_out='1' and a=0 then
       port_out <= std_logic_vector(data_cpu);
	  end if;
	end if;
 end process;
 
end Opis;