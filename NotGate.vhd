LIBRARY ieee;

USE ieee.std_logic_1164.ALL;

ENTITY NotGate IS
PORT
(
	a: IN std_logic;
	b: OUT std_logic
);
END NotGate;

ARCHITECTURE Struct OF NotGate IS
BEGIN
	b <= NOT a;
END Struct;