LIBRARY ieee;

USE ieee.std_logic_1164.ALL;


ENTITY ALU IS
PORT
(
	input1: 			IN std_logic_vector(15 DOWNTO 0);
	input2: 			IN std_logic_vector(15 DOWNTO 0);
	op: 	  			IN std_logic_vector(2 DOWNTO 0);
	carryADD: 		OUT std_logic;
	carrySUB: 		OUT std_logic;
	output: 			OUT std_logic_vector(15 DOWNTO 0)
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

SIGNAL addc0, subc0, addc1, subc1, addc2, subc2, addc3, subc3, addc4, subc4, 
addc5, subc5, addc6, subc6, addc7, subc7, addc8, subc8,  addc9, subc9,  addc10, subc10, 
addc11, subc11, addc12, subc12, addc13, subc13, addc14, subc14: std_logic;

BEGIN
	V0:  OneBitALU PORT MAP(input1(0), input2(0), '0', '0', op(0), op(1), op(2), addc0, subc0, output(0));
	V1:  OneBitALU PORT MAP(input1(1), input2(1), addc0, subc0, op(0), op(1), op(2), addc1, subc1, output(1));
	V2:  OneBitALU PORT MAP(input1(2), input2(2), addc1, subc1, op(0), op(1), op(2), addc2, subc2, output(2));
	V3:  OneBitALU PORT MAP(input1(3), input2(3), addc2, subc2, op(0), op(1), op(2), addc3, subc3, output(3));
	V4:  OneBitALU PORT MAP(input1(4), input2(4), addc3, subc3, op(0), op(1), op(2), addc4, subc4, output(4));
	V5:  OneBitALU PORT MAP(input1(5), input2(5), addc4, subc4, op(0), op(1), op(2), addc5, subc5, output(5));
	V6:  OneBitALU PORT MAP(input1(6), input2(6), addc5, subc5, op(0), op(1), op(2), addc6, subc6, output(6));
	V7:  OneBitALU PORT MAP(input1(7), input2(7), addc6, subc6, op(0), op(1), op(2), addc7, subc7, output(7));
	V8:  OneBitALU PORT MAP(input1(8), input2(8), addc7, subc7, op(0), op(1), op(2), addc8, subc8, output(8));
	V9:  OneBitALU PORT MAP(input1(9), input2(9), addc8, subc8, op(0), op(1), op(2), addc9, subc9, output(9));
	V10: OneBitALU PORT MAP(input1(10), input2(10), addc9, subc9, op(0), op(1), op(2), addc10, subc10, output(10));
	V11: OneBitALU PORT MAP(input1(11), input2(11), addc10, subc10, op(0), op(1), op(2), addc11, subc11, output(11));
	V12: OneBitALU PORT MAP(input1(12), input2(12), addc11, subc11, op(0), op(1), op(2), addc12, subc12, output(12));
	V13: OneBitALU PORT MAP(input1(13), input2(13), addc12, subc12, op(0), op(1), op(2), addc13, subc13, output(13));
	V14: OneBitALU PORT MAP(input1(14), input2(14), addc13, subc13, op(0), op(1), op(2), addc14, subc14, output(14));
	V15: OneBitALU PORT MAP(input1(15), input2(15), addc14, subc14, op(0), op(1), op(2), carryADD, carrySUB, output(15));
END Struct;