
LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY TESTEdisplay IS 
	PORT
	(
		CLOCK_50 :  IN  STD_LOGIC;
		KEY :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		SW :  IN  STD_LOGIC_VECTOR(0 TO 0);
		HEX0 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX1 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX2 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX3 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX4 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX5 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX6 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX7 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END TESTEdisplay;

ARCHITECTURE bdf_type OF TESTEdisplay IS 

COMPONENT addresscounter
	PORT(reset : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 cntOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT registerdecoder
	PORT(clk : IN STD_LOGIC;
		 en : IN STD_LOGIC;
		 WE : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT timer
GENERIC (N : INTEGER
			);
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 start : IN STD_LOGIC;
		 timerOut : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT aritmeticunit
	PORT(filter_on : IN STD_LOGIC;
		 operand1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 operand2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 operand3 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 operand4 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 Result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT bcddisplay
	PORT(rom_out : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 led_out1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		 led_out2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		 led_out3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		 led_out4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

COMPONENT registerbank
	PORT(Reset : IN STD_LOGIC;
		 WE : IN STD_LOGIC;
		 WriteData : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 DataOut1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 DataOut2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 DataOut3 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 DataOut4 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT noisytriangsignal_rom_256x8
	PORT(address : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 dataOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT geradordepulso2hz
GENERIC (MAX : INTEGER
			);
	PORT(clk : IN STD_LOGIC;
		 pulse : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT ram_256x8
	PORT(clk : IN STD_LOGIC;
		 rst_ram : IN STD_LOGIC;
		 writeEnable : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 address : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 writeData : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 DataOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 



b2v_inst : addresscounter
PORT MAP(reset => SYNTHESIZED_WIRE_20,
		 clk => CLOCK_50,
		 enable => SYNTHESIZED_WIRE_21,
		 cntOut => SYNTHESIZED_WIRE_23);


b2v_inst10 : registerdecoder
PORT MAP(clk => CLOCK_50,
		 en => SYNTHESIZED_WIRE_21,
		 WE => SYNTHESIZED_WIRE_11);


b2v_inst100 : timer
GENERIC MAP(N => 2
			)
PORT MAP(clk => CLOCK_50,
		 reset => SYNTHESIZED_WIRE_20,
		 start => SYNTHESIZED_WIRE_21,
		 timerOut => SYNTHESIZED_WIRE_16);


b2v_inst11 : aritmeticunit
PORT MAP(filter_on => SW(0),
		 operand1 => SYNTHESIZED_WIRE_5,
		 operand2 => SYNTHESIZED_WIRE_6,
		 operand3 => SYNTHESIZED_WIRE_7,
		 operand4 => SYNTHESIZED_WIRE_8,
		 Result => SYNTHESIZED_WIRE_19);


b2v_inst12 : bcddisplay
PORT MAP(rom_out => SYNTHESIZED_WIRE_9,
		 led_out1 => HEX7,
		 led_out2 => HEX6,
		 led_out3 => HEX5,
		 led_out4 => HEX4);


b2v_inst19 : registerbank
PORT MAP(Reset => SYNTHESIZED_WIRE_20,
		 WE => SYNTHESIZED_WIRE_11,
		 WriteData => SYNTHESIZED_WIRE_22,
		 DataOut1 => SYNTHESIZED_WIRE_5,
		 DataOut2 => SYNTHESIZED_WIRE_6,
		 DataOut3 => SYNTHESIZED_WIRE_7,
		 DataOut4 => SYNTHESIZED_WIRE_8);


b2v_inst3 : bcddisplay
PORT MAP(rom_out => SYNTHESIZED_WIRE_22,
		 led_out1 => HEX3,
		 led_out2 => HEX2,
		 led_out3 => HEX1,
		 led_out4 => HEX0);


SYNTHESIZED_WIRE_20 <= NOT(KEY(0));



b2v_inst7 : noisytriangsignal_rom_256x8
PORT MAP(address => SYNTHESIZED_WIRE_23,
		 dataOut => SYNTHESIZED_WIRE_22);


b2v_inst80 : geradordepulso2hz
GENERIC MAP(MAX => 25000000
			)
PORT MAP(clk => CLOCK_50,
		 pulse => SYNTHESIZED_WIRE_21);


b2v_inst90 : ram_256x8
PORT MAP(clk => CLOCK_50,
		 rst_ram => SYNTHESIZED_WIRE_15,
		 writeEnable => SYNTHESIZED_WIRE_16,
		 reset => SYNTHESIZED_WIRE_20,
		 address => SYNTHESIZED_WIRE_23,
		 writeData => SYNTHESIZED_WIRE_19,
		 DataOut => SYNTHESIZED_WIRE_9);


SYNTHESIZED_WIRE_15 <= NOT(KEY(1));



END bdf_type;