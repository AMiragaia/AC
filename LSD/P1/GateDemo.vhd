library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity GateDemo is
	port(sw		: in std_logic_vector(1 downto 0);
		  LEDR	: out std_logic_vector(0 downto 0));
end GateDemo;

architecture Shell of GateDemo is
begin
	system_core : entity work.NAND2Gate(Structural)
							port map(inPort0 => SW(1),
										inPort1 => SW(0),
										outPort => LEDR(0));							
end Shell;
