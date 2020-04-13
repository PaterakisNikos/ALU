LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OneBitALU IS
PORT
(
	a:					IN std_logic;
	b:					IN std_logic;
	ADDcIN:			IN std_logic;
	SUBcIN:			IN std_logic;
	op0:				IN std_logic;
	op1:				IN std_logic;
	op2:				IN std_logic;
	ADDcOUT:			OUT std_logic;
	SUBcOUT:			OUT std_logic;
	output:			OUT std_logic
);
END OneBitALU;

ARCHITECTURE Struct OF OneBitALU IS

COMPONENT Multiplexer 
PORT
(
	d0:		IN std_logic;
	d1:		IN std_logic;
	d2:		IN std_logic;
	d3:		IN std_logic;
	d4:		IN std_logic;
	d5:		IN std_logic;
	d6:		IN std_logic;
	d7:		IN std_logic;
	op0:		IN std_logic;
	op1:		IN std_logic;
	op2:		IN std_logic;
	output:	OUT std_logic
);
END COMPONENT;

COMPONENT AndGate2
PORT
(
	input0:	IN std_logic;
	input1:	IN std_logic;
	output:	OUT std_logic
);
END COMPONENT;

COMPONENT OrGate2
PORT
(
	input0:	IN std_logic;
	input1:	IN std_logic;
	output:	OUT std_logic
);
END COMPONENT;

COMPONENT FullAdder
PORT
(
	a:		IN std_logic;
	b:		IN std_logic;
	cIN:	IN std_logic;
	cOUT:	OUT std_logic;
	sum:	OUT std_logic
);
END COMPONENT;

COMPONENT FullSubtractor
PORT
(
	a:		IN std_logic;
	b:		IN	std_logic;
	bIN:	IN std_logic;
	bOUT:	OUT std_logic;
	sub:	OUT std_logic
);
END COMPONENT;

SIGNAL ADDR, SUBR, ANDR, ORR: std_logic;

BEGIN
	
	V0: FullAdder PORT MAP(a, b, ADDcIN, ADDcOUT, ADDR);
	V1: FullSubtractor PORT MAP(a, b, SUBcIN, SUBcOUT, SUBR);
	V2: AndGate2 PORT MAP(a, b, ANDR);
	V3: OrGate2 PORT MAP(a, b, ORR);
	V4: Multiplexer PORT MAP(ADDR, SUBR, ANDR, ORR, '0', '0', '0', '0', op0, op1, op2, output);
	
END Struct;