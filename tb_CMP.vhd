LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_CMP IS
END tb_CMP;
 
ARCHITECTURE behavior OF tb_CMP IS 
    COMPONENT CMP 
    PORT (KEY1,KEY2,KEY3,KEY4: IN STD_LOGIC;
          LED1,LED2: OUT STD_LOGIC
         );
    END COMPONENT;
   --Inputs
   signal KEY1 : std_logic := '1';
   signal KEY2 : std_logic := '1';
   signal KEY3 : std_logic := '1';
   signal KEY4 : std_logic := '0';
 	--Outputs
   signal LED1,LED2: std_logic;
BEGIN
   uut: CMP PORT MAP (KEY1,KEY2,KEY3,KEY4,LED1,LED2);
END;