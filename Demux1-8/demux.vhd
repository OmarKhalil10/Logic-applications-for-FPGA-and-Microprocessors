----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:18:54 03/15/2022 
-- Design Name: 
-- Module Name:    demux - Behavioral 
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

entity demux is
    Port ( inp : in  STD_LOGIC_VECTOR (2 downto 0);
           out1 : out  STD_LOGIC_VECTOR (2 downto 0);
           out2 : out  STD_LOGIC_VECTOR (2 downto 0);
           out3 : out  STD_LOGIC_VECTOR (2 downto 0);
           out4 : out  STD_LOGIC_VECTOR (2 downto 0);
           out5 : out  STD_LOGIC_VECTOR (2 downto 0);
           out6 : out  STD_LOGIC_VECTOR (2 downto 0);
           out7 : out  STD_LOGIC_VECTOR (2 downto 0);
           out8 : out  STD_LOGIC_VECTOR (2 downto 0);
           sel : in  STD_LOGIC_VECTOR (2 downto 0);
           en1 : in  STD_LOGIC;
           en2 : in  STD_LOGIC);
end demux;

architecture Behavioral of demux is

begin
process(inp, en1, en2, sel) begin

if (en1='0' and en2='0') then	
	if (sel="000") then
            out1 <= inp;
        elsif (sel="001") then
            out2 <= inp;
        elsif (sel="010") then
            out3 <= inp;
		  elsif (sel="011") then
            out4 <= inp;
		  elsif (sel="100") then
            out5 <= inp;
		  elsif (sel="101") then
            out6 <= inp;
		  elsif (sel="110") then
            out7 <= inp;
		  elsif (sel="111") then
            out8 <= inp;
end if;
        else
            out1 <= "UUU";
				out2 <= "UUU";
				out3 <= "UUU";
            out4 <= "UUU";
            out5 <= "UUU";
            out6 <= "UUU";
            out7 <= "UUU";
            out8 <= "UUU"; 
end if;
end process;

end Behavioral;

