LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Multiplexer IS
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
End Multiplexer;

ARCHITECTURE Struct OF Multiplexer IS

COMPONENT AndGate4
PORT
(
	input0: IN std_logic;
	input1: IN std_logic;
	input2: IN std_logic;
	input3: IN std_logic;
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

COMPONENT OrGate2
PORT
(
	input0: IN std_logic;
	input1: IN std_logic;
	output: OUT std_logic
);
END COMPONENT;

COMPONENT NotGate
PORT
(
	input: IN std_logic;
	output: OUT std_logic
);
END COMPONENT;

SIGNAL NOTOP0, NOTOP1, NOTOP2, ANDR0, ANDR1, ANDR2, ANDR3, ANDR4, ANDR5, ANDR6, ANDR7, OUT1, OUT2: std_logic;

BEGIN

	V0: NotGate PORT MAP(op0, NOTOP0);
	V1: NotGate PORT MAP(op1, NOTOP1);
	V2: NotGate PORT MAP(op2, NOTOP2);

	V3: AndGate4 PORT MAP(d0, NOTOP0, NOTOP1, NOTOP2, ANDR0);
	V4: AndGate4 PORT MAP(d1, op0, NOTOP1, NOTOP2, ANDR1);
	V5: AndGate4 PORT MAP(d2, NOTOP0, op1, NOTOP2, ANDR2);
	V6: AndGate4 PORT MAP(d3, op0, op1, NOTOP2, ANDR3);
	V7: AndGate4 PORT MAP(d4, NOTOP0, NOTOP1, op2, ANDR4);
	V8: AndGate4 PORT MAP(d5, op0, NOTOP1, op2, ANDR5);
	V9: AndGate4 PORT MAP(d6, NOTOP0, op1, op2, ANDR6);
	V10: AndGate4 PORT MAP(d7, op0, op1, op2, ANDR7);

	V11: OrGate4 PORT MAP(ANDR0, ANDR1, ANDR2, ANDR3, OUT1);
	V12: OrGate4 PORT MAP(ANDR4, ANDR5, ANDR6, ANDR7, OUT2);
	
	v13: OrGate2 PORT MAP(OUT1, OUT2, output);
	
END Struct;