----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:28:55 04/11/2022 
-- Design Name: 
-- Module Name:    ROM - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM is
Generic( Address_width:integer:=9;
			Data_width:integer:=8
			);
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           RE : in  STD_LOGIC;
			  Address : in STD_LOGIC_VECTOR(Address_width-1 downto 0);
			  Data_out : out STD_LOGIC_VECTOR(Data_width-1 downto 0)
			 );
end ROM;

architecture Behavioral of ROM is
type ROM_ARRAY is array(0 to 2**(Address_width)-1) of STD_LOGIC_VECTOR(Data_width-1 downto 0);
constant Content: ROM_ARRAY :=(
	0 => X"01",
	1 => X"B0",
	2 => X"2F",
	3 => X"3D",
	4 => X"AD",
	5 => X"EF",
	6 => X"11",
	7 => X"00",
	8 => X"65",
	9 => X"87",
	10 => X"9A",
	11 => X"94",
	12 => X"65",
others => X"FF"
);

begin
process(CLK,RST,RE,Address)
begin
	if (RST = '1') then
		Data_out <= "ZZZZZZZZ"; --or (others => 'Z')--
	elsif rising_edge(CLK) then
	if (RE = '1') then
		Data_out <= Content(conv_integer(Address));
	else 
		Data_out <= "ZZZZZZZZ"; --or (others => 'Z')--
	end if;
end if;
end process;
end Behavioral;

