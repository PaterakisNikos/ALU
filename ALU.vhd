LIBRARY ieee;

USE ieee.std_logic_1164.ALL;


ENTITY ALU IS
PORT
(
	Input1: 			IN std_logic_vector(15 DOWNTO 0);
	Input2: 			IN std_logic_vector(15 DOWNTO 0);
	Clock:			IN std_logic;
	op: 	  			IN std_logic_vector(2 DOWNTO 0);
	carryADD: 		OUT std_logic;
	carrySUB: 		OUT std_logic;
	ALUout:			OUT std_logic_vector(15 DOWNTO 0);
	Output: 			OUT std_logic_vector(15 DOWNTO 0)
);
END ALU;

ARCHITECTURE Struct OF ALU IS 

COMPONENT OneBitALU
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
END COMPONENT;

COMPONENT reg
PORT
(
	clock: IN std_logic;
	input: IN std_logic_vector(15 DOWNTO 0);
	output: OUT std_logic_vector(15 DOWNTO 0)
);
END COMPONENT;

SIGNAL addc0, subc0, addc1, subc1, addc2, subc2, addc3, subc3, addc4, subc4, 
addc5, subc5, addc6, subc6, addc7, subc7, addc8, subc8,  addc9, subc9,  addc10, subc10, 
addc11, subc11, addc12, subc12, addc13, subc13, addc14, subc14: std_logic;

SIGNAL INFF1, INFF2, CALC: std_logic_vector(15 DOWNTO 0);

BEGIN
	
	V0: reg PORT MAP(Clock, Input1, INFF1);
	V1: reg PORT MAP(Clock, Input2, INFF2);

	V2:  OneBitALU PORT MAP(INFF1(0), INFF2(0), '0', '0', op(0), op(1), op(2), addc0, subc0, CALC(0));
	V3:  OneBitALU PORT MAP(INFF1(1), INFF2(1), addc0, subc0, op(0), op(1), op(2), addc1, subc1, CALC(1));
	V4:  OneBitALU PORT MAP(INFF1(2), INFF2(2), addc1, subc1, op(0), op(1), op(2), addc2, subc2, CALC(2));
	V5:  OneBitALU PORT MAP(INFF1(3), INFF2(3), addc2, subc2, op(0), op(1), op(2), addc3, subc3, CALC(3));
	V6:  OneBitALU PORT MAP(INFF1(4), INFF2(4), addc3, subc3, op(0), op(1), op(2), addc4, subc4, CALC(4));
	V7:  OneBitALU PORT MAP(INFF1(5), INFF2(5), addc4, subc4, op(0), op(1), op(2), addc5, subc5, CALC(5));
	V8:  OneBitALU PORT MAP(INFF1(6), INFF2(6), addc5, subc5, op(0), op(1), op(2), addc6, subc6, CALC(6));
	V9:  OneBitALU PORT MAP(INFF1(7), INFF2(7), addc6, subc6, op(0), op(1), op(2), addc7, subc7, CALC(7));
	V10:  OneBitALU PORT MAP(INFF1(8), INFF2(8), addc7, subc7, op(0), op(1), op(2), addc8, subc8, CALC(8));
	V11:  OneBitALU PORT MAP(INFF1(9), INFF2(9), addc8, subc8, op(0), op(1), op(2), addc9, subc9, CALC(9));
	V12: OneBitALU PORT MAP(INFF1(10), INFF2(10), addc9, subc9, op(0), op(1), op(2), addc10, subc10, CALC(10));
	V13: OneBitALU PORT MAP(INFF1(11), INFF2(11), addc10, subc10, op(0), op(1), op(2), addc11, subc11, CALC(11));
	V14: OneBitALU PORT MAP(INFF1(12), INFF2(12), addc11, subc11, op(0), op(1), op(2), addc12, subc12, CALC(12));
	V15: OneBitALU PORT MAP(INFF1(13), INFF2(13), addc12, subc12, op(0), op(1), op(2), addc13, subc13, CALC(13));
	V16: OneBitALU PORT MAP(INFF1(14), INFF2(14), addc13, subc13, op(0), op(1), op(2), addc14, subc14, CALC(14));
	V17: OneBitALU PORT MAP(INFF1(15), INFF2(15), addc14, subc14, op(0), op(1), op(2), carryADD, carrySUB, CALC(15));
	
	V18: reg PORT MAP(Clock, CALC, Output);
	
	ALUout <= CALC;
	
	
	
END Struct;