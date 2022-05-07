library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;                             

entity mux4 is
	port (d0, d1, d2, d3 : in STD_LOGIC;
			sel0, sel1 : in STD_LOGIC;
			dout : out STD_LOGIC);
end mux4;

architecture Behavioral of mux4 is
signal dtemp: STD_LOGIC;
begin
	dtemp <= d0 when (sel0='0') and (sel1='0') else
				d1 when (sel0='1') and (sel1='0') else
				d2 when (sel0='0') and (sel1='1') else
				d3 when (sel0='1') and (sel1='1');
	dout <= dtemp;
end Behavioral;