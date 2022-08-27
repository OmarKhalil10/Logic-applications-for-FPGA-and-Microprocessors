----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:32:03 03/12/2022 
-- Design Name: 
-- Module Name:    Decoder - Behavioral 
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

entity Decoder is
    Port ( inp : in  STD_LOGIC_VECTOR(2 downto 0);
           oup : out  STD_LOGIC_VECTOR(7 downto 0);
           en : in  STD_LOGIC
			  );
end Decoder;

architecture Behavioral of Decoder is

begin

process(inp, en) begin

if (en='1') then

case (inp) is
   when "000" => oup <= "00000001";
	when "001" => oup <= "00000010";
   when "010" => oup <= "00000100";
   when "011" => oup <= "00001000";
   when "100" => oup <= "00010000";
   when "101" => oup <= "00100000";
   when "110" => oup <= "01000000";
	when others => oup <= "10000000";
	
end case;
else null;
end if;
end process;
end Behavioral;

