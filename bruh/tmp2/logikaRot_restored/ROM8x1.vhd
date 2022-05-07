library ieee ;
use ieee.std_logic_1164.all ;

entity ROM8x1 is	
	generic (ROM_DATA :  std_logic_vector(7 downto 0) := "00000000");
	port (a0, a1, a2 : in STD_LOGIC ;
	o : out STD_LOGIC) ;
end ROM8x1 ;

architecture Behavioral of ROM8x1 is
signal dtemp: STD_LOGIC;
begin
	dtemp <= ROM_DATA(0) when (a0='0') and (a1='0') and (a2='0') else
				ROM_DATA(1) when (a0='1') and (a1='0') and (a2='0') else
				ROM_DATA(2) when (a0='0') and (a1='1') and (a2='0') else
				ROM_DATA(3) when (a0='1') and (a1='1') and (a2='0') else
				ROM_DATA(4) when (a0='0') and (a1='0') and (a2='1') else
				ROM_DATA(5) when (a0='1') and (a1='0') and (a2='1') else
				ROM_DATA(6) when (a0='0') and (a1='1') and (a2='1') else
				ROM_DATA(7) when (a0='1') and (a1='1') and (a2='1');
	o <= dtemp;
end Behavioral;