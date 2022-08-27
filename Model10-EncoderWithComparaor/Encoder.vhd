----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:22:29 05/24/2022 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Encoder is
    Port ( inp : in  STD_LOGIC_vector(7 downto 0);
           oup : out  STD_LOGIC_vector(2 downto 0);
           data_bus1 : in  STD_LOGIC_vector(7 downto 0);
           data_bus2 : in  STD_LOGIC_vector(7 downto 0);
           en: in  STD_LOGIC
			  );
end Encoder;

architecture Behavioral of Encoder is
begin
	process(inp, data_bus1, data_bus2, en)
	begin
		if en = '1' then
				if data_bus1 > data_bus2 then
					case (inp) is
						when x"01" => oup <= "000";
						when x"02" => oup <= "001";
						when x"04" => oup <= "010";
						when x"08" => oup <= "011";
						when x"10" => oup <= "100";
						when x"20" => oup <= "101";
						when x"40" => oup <= "110";
						when x"80" => oup <= "111";
						when others => oup <= "000";
					end case;
				end if;
		else
			null;
			
		end if;
	end process;
end Behavioral;

