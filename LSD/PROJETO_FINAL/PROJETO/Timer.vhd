library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Timer is
	generic(N: positive := 2);
	port(clk      : in  std_logic;
		  reset    : in  std_logic;
		  start    : in  std_logic;
		  DelayP : out std_logic);
end Timer;

architecture Behavioral of Timer is
signal s_count : integer := 0;
begin
		process(clk)
		begin
			if (rising_edge(clk)) then
				if (reset = '1') then
					DelayP <= '0';
					s_count <= 0;
				else
					if (s_count = 0) then
						if (start = '1') then
							DelayP <= '1';
							s_count <= s_count + 1;
						else
							DelayP <= '0';
						end if;
					else 
						if (s_count = (N - 1)) then
							DelayP <= '0';
							s_count <= 0;
						else
							DelayP <= '1';
							s_count <= s_count + 1;
						end if;
					end if;
				end if;
			end if;
		end process;

end architecture;