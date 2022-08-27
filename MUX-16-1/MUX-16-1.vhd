----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:09:49 03/21/2022 
-- Design Name: 
-- Module Name:    MUX-16-1 - Behavioral 
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

entity MUX_16_1 is
    Port ( inp1 : in STD_LOGIC_VECTOR (15 downto 0);
           inp2 : in STD_LOGIC_VECTOR (15 downto 0);
           inp3 : in STD_LOGIC_VECTOR (15 downto 0);
           inp4 : in STD_LOGIC_VECTOR (15 downto 0);
           inp5 : in STD_LOGIC_VECTOR (15 downto 0);
           inp6 : in STD_LOGIC_VECTOR (15 downto 0);
           inp7 : in STD_LOGIC_VECTOR (15 downto 0);
           inp8 : in STD_LOGIC_VECTOR (15 downto 0);
           inp9 : in STD_LOGIC_VECTOR (15 downto 0);
           inp10 : in STD_LOGIC_VECTOR (15 downto 0);
           inp11 : in STD_LOGIC_VECTOR (15 downto 0);
           inp12 : in STD_LOGIC_VECTOR (15 downto 0);
           inp13 : in STD_LOGIC_VECTOR (15 downto 0);
           inp14 : in STD_LOGIC_VECTOR (15 downto 0);
           inp15 : in STD_LOGIC_VECTOR (15 downto 0);
           inp16 : in STD_LOGIC_VECTOR (15 downto 0);
           out1 : out STD_LOGIC_VECTOR (15 downto 0);
           selector : in STD_LOGIC_VECTOR (3 downto 0);
           enable1 : in  STD_LOGIC;
           enable2 : in  STD_LOGIC);
end MUX_16_1;

architecture Behavioral of MUX_16_1 is

begin

Process(inp1,inp2,inp3,inp4,inp5,inp6,inp7,inp8,inp9,inp10,inp11,inp12,inp13,inp14,inp15,enable1,enable2,selector)
    begin
    if (enable1 ='1' and enable2='0') then
        case selector is
        when "0000" => out1 <= inp1;
        when "0001" => out1 <= inp2;
        when "0010" => out1 <= inp3;
        when "0011" => out1 <= inp4;
        when "0100" => out1 <= inp5;
        when "0101" => out1 <= inp6;
        when "0110" => out1 <= inp7;
        when "0111" => out1 <= inp8;
        when "1000" => out1 <= inp9;
        when "1001" => out1 <= inp10;
        when "1010" => out1 <= inp11;
        when "1011" => out1 <= inp12;
        when "1100" => out1 <= inp13;
        when "1101" => out1 <= inp14;
        when "1110" => out1 <= inp15;
        when "1111" => out1 <= inp16;
        when others => null;
        end case;
    else 
    out1 <= "UUUUUUUUUUUUUUUU";
    end if;
    end Process;
end Behavioral;

-- using if else to do the same project --
--if (enable1 ='1' and enable2='0') then
--    if (selector="0000") then
--            out1 <= inp1;
--        elsif (selector="0001") then
--            out1 <= inp2;
--        elsif (selector="0010") then
--            out1 <= inp3;
-- 		  elsif (selector="0011") then
--             out1 <= inp4;
-- 		  elsif (selector="0100") then
--             out1 <= inp5;
-- 		  elsif (selector="0101") then
--             out1 <= inp6;
-- 		  elsif (selector="0110") then
--             out1 <= inp7;
-- 		  elsif (selector="0111") then
--             out1 <= inp8;
-- 		  elsif (selector="1000") then
--             out1 <= inp9;
--         elsif (selector="1001") then
--             out1 <= inp10;
-- 		  elsif (selector="1010") then
--             out1 <= inp11;
-- 		  elsif (selector="1011") then
--             out1 <= inp12;
-- 		  elsif (selector="1100") then
--             out1 <= inp13;
-- 		  elsif (selector="1101") then
--             out1 <= inp14;
-- 		  elsif (selector="1110") then
--             out1 <= inp15;
-- 		  elsif (selector="1111") then
--             out1 <= inp16;
--    end if;
-- else 
--     out1 <= "UUUUUUUUUUUUUUUU";
-- end if;
