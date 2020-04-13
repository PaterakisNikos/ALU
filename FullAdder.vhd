LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY FullAdder IS
PORT
(
	a: 	IN std_logic;
	b: 	IN std_logic;
	cIN:	IN std_logic;
	cOUT:	OUT std_logic;
	sum:	OUT std_logic
);
END FullAdder;

ARCHITECTURE Struct OF FullAdder IS

COMPONENT XorGate3
PORT
(
	input0: IN std_logic;
	input1: IN std_logic;
	input2: IN std_logic;
	output: OUT std_logic
);
END COMPONENT;


COMPONENT OrGate3
PORT
(
	input0: IN std_logic;
	input1: IN std_logic;
	input2: IN std_logic;
	output: OUT std_logic
);
END COMPONENT;

COMPONENT AndGate2
PORT
(
	input0: IN std_logic;
	input1: IN std_logic;
	output: OUT std_logic
);
END COMPONENT;


SIGNAL C0, C1, C2: std_logic;
 
BEGIN
----- Calculate the Sum -----
	V0: XorGate3 PORT MAP(a, b, cIN, sum);
----- Calculate Cout ------
	v1: AndGate2 PORT MAP(a, b, C0);
	v2: AndGate2 PORT MAP(a, cIN, c1);
	v3: AndGate2 PORT MAP(b, cIN, c2);
	v4: OrGate3 PORT MAP(c0, c1, c2, cOUT);	
END Struct;