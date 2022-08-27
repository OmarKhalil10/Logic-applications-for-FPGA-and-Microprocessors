----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:20:01 03/12/2022 
-- Design Name: 
-- Module Name:    Encoder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Encoder is
    Port ( inp : in  STD_LOGIC_VECTOR(7 downto 0);
           oup : out  STD_LOGIC_VECTOR(2 downto 0);
           en : in  STD_LOGIC
			  );
end Encoder;

architecture Behavioral of Encoder is

begin

process(inp, en) begin

if (en='1') then

case (inp) is
   when "00000001" => oup <= "000";
	when "00000010" => oup <= "001";
   when "00000100" => oup <= "010";
   when "00001000" => oup <= "011";
   when "00010000" => oup <= "100";
   when "00100000" => oup <= "101";
   when "01000000" => oup <= "110";
	when others => oup <= "111";
	
end case;
else null;
end if;
end process;
end Behavioral;


