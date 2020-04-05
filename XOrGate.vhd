LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- OR Gate for 2 Inputs--

ENTITY XOrGate2 IS
PORT
(
	input0: IN std_logic;
	input1: IN std_logic;
	output: OUT std_logic
);
END XOrGate2;

ARCHITECTURE Struct OF XOrGate2 IS
BEGIN
	output <= input0 XOR input1;
END Struct;


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- OR Gate for 3 Inputs--

ENTITY XOrGate3 IS
PORT
(
	input0: IN std_logic;
	input1: IN std_logic;
	input2: IN std_logic;
	output: OUT std_logic
);
END XOrGate3;

ARCHITECTURE Struct OF XOrGate3 IS
BEGIN
	output <= input0 XOR input1 XOR input2;
END Struct;


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- OR Gate for 4 Inputs--

ENTITY XOrGate4 IS
PORT
(
	input0: IN std_logic;
	input1: IN std_logic;
	input2: IN std_logic;
	input3: IN std_logic;
	output: OUT std_logic
);
END XOrGate4;

ARCHITECTURE Struct OF XOrGate4 IS
BEGIN
	output <= input0 XOR input1 XOR input2 XOR input3;
END Struct;
