LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- OR Gate for 2 Inputs--

ENTITY OrGate2 IS
PORT
(
	input0: IN std_logic;
	input1: IN std_logic;
	output: OUT std_logic
);
END OrGate2;

ARCHITECTURE Struct OF OrGate2 IS
BEGIN
	output <= input0 OR input1;
END Struct;


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- OR Gate for 3 Inputs--

ENTITY OrGate3 IS
PORT
(
	input0: IN std_logic;
	input1: IN std_logic;
	input2: IN std_logic;
	output: OUT std_logic
);
END OrGate3;

ARCHITECTURE Struct OF OrGate3 IS
BEGIN
	output <= input0 OR input1 OR input2;
END Struct;


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- OR Gate for 4 Inputs--

ENTITY OrGate4 IS
PORT
(
	input0: IN std_logic;
	input1: IN std_logic;
	input2: IN std_logic;
	input3: IN std_logic;
	output: OUT std_logic
);
END OrGate4;

ARCHITECTURE Struct OF OrGate4 IS
BEGIN
	output <= input0 OR input1 OR input2 OR input3;
END Struct;