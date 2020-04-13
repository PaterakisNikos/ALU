LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY FullSubtractor IS
PORT
(
	a:		IN std_logic;
	b:		IN std_logic;
	bIN:	IN std_logic;
	bOUT:	OUT std_logic;
	sub:	OUT std_logic
	
);
END FullSubtractor;


ARCHITECTURE Struct OF FullSubtractor IS

COMPONENT XorGate2
PORT
(
	input0: IN std_logic;
	input1: IN std_logic;
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

COMPONENT NotGate
PORT
(
	input: IN std_logic;
	output: OUT std_logic
);
END COMPONENT;

SIGNAL NOTA, XS, AB0, AB1, AB2: std_logic;

BEGIN

	V0: XorGate2 PORT MAP(a, b, XS);
	V1: XorGate2 PORT MAP(XS, bIN, sub);
	
	V2: NotGate PORT MAP(a, NOTA);
	V3: AndGate2 PORT MAP(NOTA, bIN, AB0);
	V4: AndGate2 PORT MAP(NOTA, b, AB1);
	V5: AndGate2 PORT MAP(b, bIN, AB2);
	V6: OrGate3 PORT MAP(AB0, AB1, AB2, bOUT);

END Struct;