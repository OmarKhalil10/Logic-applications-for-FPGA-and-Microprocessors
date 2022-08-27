----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:39:37 03/22/2022 
-- Design Name: 
-- Module Name:    Add_Sub - Behavioral 
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

entity Add_Sub is
    Port ( inp1 : in  STD_LOGIC_VECTOR(7 downto 0);
           inp2 : in  STD_LOGIC_VECTOR(7 downto 0);
           cin : in  STD_LOGIC;
           en : in  STD_LOGIC;
           add_sel : in  STD_LOGIC;
           sub_sel : in  STD_LOGIC;
           pout : out  STD_LOGIC_VECTOR(7 downto 0);
           cout : out  STD_LOGIC);
end Add_Sub;

architecture Behavioral of Add_Sub is

begin

process(inp1, inp2, cin, en, add_sel, sub_sel)

variable var1: integer;
variable var2: STD_LOGIC_VECTOR(8 downto 0);

begin 

if (en = '1') then
    if (add_sel = '1' and sub_sel = '0') then
	 
	 var1 := conv_integer(inp1) + conv_integer(inp2) + conv_integer(cin);
	 var2 := conv_std_logic_vector(var1, var2' length);  -- you can use length or assign it manually --
	 pout <= var2(7 downto 0);
	 cout <= var2(8);
	 
	 elsif (sub_sel = '1' and add_sel = '0') then
	 
	 var1 := conv_integer(inp1) - conv_integer(inp2) - conv_integer(cin);
	 var2 := conv_std_logic_vector(var1, var2' length);  -- you can use length or assign it manually --
	 pout <= var2(7 downto 0);
	 cout <= var2(8);
	 
	 else null;
	 end if;
else null;
end if;
end process;
end Behavioral;

