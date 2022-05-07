library ieee ;
use ieee.std_logic_1164.all ;

entity FD1 IS
	port (D, C: in STD_LOGIC ;
	Q : out STD_LOGIC) ;
end FD1 ;

architecture Behavioral of FD1 is
   signal qn: std_logic := '1';
begin
	process (C)
	begin
		if rising_edge(C) then
			qn <= D ;
		end if;
	end process;
	
	Q <= qn;
end Behavioral;