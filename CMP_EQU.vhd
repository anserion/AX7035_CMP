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
library UNISIM;
use UNISIM.VComponents.all;

entity CMP_EQU is
   port (a0,a1,b0,b1: in std_logic;
	      res: out std_logic);
end CMP_EQU;

architecture RTL of CMP_EQU is
component INV port(I:in std_logic; O:out std_logic); end component;
component XOR2 port(I0,I1:in std_logic; O:out std_logic); end component;
component OR2 port(I0,I1:in std_logic; O:out std_logic); end component;
signal p0,p1,p2:std_logic;
begin
  DD1: XOR2 PORT MAP(a0,b0,p0);
  DD2: XOR2 PORT MAP(a1,b1,p1);
  DD3: OR2 PORT MAP(p0,p1,p2);
  DD4: INV PORT MAP(p2,res);
end RTL;
