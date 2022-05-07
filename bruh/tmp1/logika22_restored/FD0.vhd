library ieee ;
use ieee.std_logic_1164.all ;

entity FD0 IS
	port (D, C: in STD_LOGIC ;
	Q : out STD_LOGIC) ;
end FD0 ;

architecture Behavioral of FD0 is
   signal qn: std_logic := '0';
begin
	process (C)
	begin
		if rising_edge(C) then
			qn <= D ;
		end if;
	end process;
	
	Q <= qn;
end Behavioral;