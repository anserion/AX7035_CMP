--Copyright 2025 Andrey S. Ionisyan (anserion@gmail.com)
--Licensed under the Apache License, Version 2.0 (the "License");
--you may not use this file except in compliance with the License.
--You may obtain a copy of the License at
--    http://www.apache.org/licenses/LICENSE-2.0
--Unless required by applicable law or agreed to in writing, software
--distributed under the License is distributed on an "AS IS" BASIS,
--WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--See the License for the specific language governing permissions and
--limitations under the License.
------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CMP is
    Port (KEY1,KEY2,KEY3,KEY4: in STD_LOGIC;
          LED1,LED2: out STD_LOGIC
			 );
end CMP;

architecture RTL of CMP is
component CMP_EQU port (a0,a1,b0,b1: in std_logic; res: out std_logic); end component;
component CMP_LESS port (a0,a1,b0,b1: in std_logic; res: out std_logic); end component;
begin
DD1: CMP_EQU port map (KEY1,KEY2,KEY3,KEY4,LED1);
DD2: CMP_LESS port map (KEY1,KEY2,KEY3,KEY4,LED2);
end RTL;
