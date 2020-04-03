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

COMPONENT OrGate3
PORT
(
	input0: IN std_logic;
	input1: IN std_logic;
	input2: IN std_logic;
	output: OUT std_logic
);
END COMPONENT;


COMPONENT OrGate4
PORT
(
	input0: IN std_logic;
	input1: IN std_logic;
	input2: IN std_logic;
	input3: IN std_logic;
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

COMPONENT AndGate3
PORT
(
	input0: IN std_logic;
	input1: IN std_logic;
	input2: IN std_logic;
	output: OUT std_logic
);
END COMPONENT;


COMPONENT NotGate
PORT
(
	a: IN std_logic;
	b: OUT std_logic
);
END COMPONENT;

SIGNAL NOTA, NOTB, NOTC, AS0, AS1, AS2, AS3, AC0, AC1, AC2: std_logic;
 
BEGIN
----- Calculate the Sum -----
	V0: NotGate PORT MAP(a, NOTA);
	V1: NotGate PORT MAP(b, NOTB);
	V2: NotGate PORT MAP(cIN, NOTC);
	V3: AndGate3 PORT MAP(NOTA, NOTB, cIN, AS0);
	V4: AndGate3 PORT MAP(NOTA, b, NOTC, AS1);
	V5: AndGate3 PORT MAP(a, NOTB, NOTC, AS2);
	V6: AndGate3 PORT MAP(A, b, cIN, AS3);
	V7: OrGate4 PORT MAP(AS0, AS1, AS2, AS3, sum);
----- Calculate Cout ------
	V8: AndGate2 PORT MAP(a, b, AC0);
	V9: AndGate2 PORT MAP(B, cIN, AC1);
	V10: AndGate2 PORT MAP(a, cIN, AC2);
	V11: OrGate3 PORT MAP(AC0, AC1, AC2, cOUT);
END Struct;