----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:36:38 03/29/2022 
-- Design Name: 
-- Module Name:    register_12_bit - Behavioral 
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

entity register_12_bit is
    Port ( inp1 : in  STD_LOGIC_VECTOR(11 DOWNTO 0);
           en : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           oup1 : out  STD_LOGIC_VECTOR(11 DOWNTO 0);
			  oup2 : out  STD_LOGIC_VECTOR(11 DOWNTO 0);
			  oup3 : out  STD_LOGIC_VECTOR(11 DOWNTO 0));
end register_12_bit;

architecture Behavioral of register_12_bit is
signal sig:STD_LOGIC_VECTOR(11 DOWNTO 0);
begin
process(inp1,en,rst,clk)
begin
if rst='1' then
   sig <= "000000000000";
	oup2<= sig;
elsif en='1' and rising_edge(clk) then
   sig<= inp1; 
   oup3<= sig;
else
   null;
end if;
end process;
oup1<= sig; 
end Behavioral;

