----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:34:59 03/25/2022 
-- Design Name: 
-- Module Name:    Comparator - Behavioral 
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

entity Comparator is
    Port ( Bus_1 : in  STD_LOGIC_VECTOR(7 downto 0);
           Bus_2 : in  STD_LOGIC_VECTOR(7 downto 0);
			  Enable : in STD_LOGIC;
           Less : out  STD_LOGIC;
           Equal : out  STD_LOGIC;
           Greater : out  STD_LOGIC);
end Comparator;

architecture Behavioral of Comparator is
begin
process(Bus_1, Bus_2, Enable)
begin
   if (Enable = '1') then
      if(Bus_1 > Bus_2) then
		   Less <= '0';
			Equal <= '0';
			Greater <= '1';
		elsif(Bus_1 < Bus_2) then
		   Less <= '1';
			Equal <= '0';
			Greater <= '0';
		else
		   Less <= '0';
			Equal <= '1';
			Greater <= '0';
		end if;
	else 
	   Less <= 'U';
		Equal <= 'U';
		Greater <= 'U';
end if;
end process;
end Behavioral;

