library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;                             

entity demux4 is
	port (d0, d1, d2, d3 : out STD_LOGIC;
			a0, a1 : in STD_LOGIC;
			e : in STD_LOGIC);
end demux4;

architecture Behavioral of demux4 is
signal d0temp, d1temp, d2temp, d3temp: STD_LOGIC;
begin
	d0temp <= e when (a0='0') and (a1='0') else
				'0' when (a0='1') and (a1='0') else
				'0' when (a0='0') and (a1='1') else
				'0';
	d1temp <='0' when (a0='0') and (a1='0') else
				 e when (a0='1') and (a1='0') else
				'0' when (a0='0') and (a1='1') else
				'0';
	d2temp <='0' when (a0='0') and (a1='0') else
				'0' when (a0='1') and (a1='0') else
				 e when (a0='0') and (a1='1') else
				'0';
	d3temp <='0' when (a0='0') and (a1='0') else
				'0' when (a0='1') and (a1='0') else
				'0' when (a0='0') and (a1='1') else
				 e;
	d0 <= d0temp;
	d1 <= d1temp;
	d2 <= d2temp;
	d3 <= d3temp;
end Behavioral;