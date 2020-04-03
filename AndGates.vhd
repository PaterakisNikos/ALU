LIBRARY ieee;
USE ieee.std_logic_1164.ALL;


--And Gate for 2 Inputs--
ENTITY AndGate2 IS
PORT
(
	input0: IN std_logic;
	input1: IN std_logic;
	output: OUT std_logic
);
END AndGate2;


ARCHITECTURE Struct OF AndGate2 IS
BEGIN
	output <= input0 AND input1;
END Struct;


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
--And Gate for 3 Inputs--
ENTITY AndGate3 IS
PORT
(
	input0: IN std_logic;
	input1: IN std_logic;
	input2: IN std_logic;
	output: OUT std_logic
);
END AndGate3;

ARCHITECTURE Struct OF AndGate3 IS
BEGIN
	output <= input0 AND input1 AND input2;
END Struct;


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
--And Gate for 4 Inputs--
ENTITY AndGate4 IS
PORT
(
	input0: IN std_logic;
	input1: IN std_logic;
	input2: IN std_logic;
	input3: IN std_logic;
	output: OUT std_logic
);
END AndGate4;

ARCHITECTURE Struct OF AndGate4 IS
BEGIN
	output <= input0 AND input1 AND input2 AND input3;
END Struct;