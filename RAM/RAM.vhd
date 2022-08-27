----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:07:36 04/05/2022 
-- Design Name: 
-- Module Name:    RAM - Behavioral 
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

entity RAM is

GENERIC(Address_Width : integer := 13;
Data_W : integer :=8
);
    Port ( Data_in : in  STD_LOGIC_VECTOR(Data_W-1 downto 0);
           Data_out : out  STD_LOGIC_VECTOR(Data_W-1 downto 0);
			  Address : in STD_LOGIC_VECTOR(Address_Width-1 downto 0);
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           RE : in  STD_LOGIC;
           WR : in  STD_LOGIC
			 );
end RAM;

architecture Behavioral of RAM is
type RAM_TYPE is array(0 to 2**(Address_Width)-1) of STD_LOGIC_VECTOR(Data_W-1 downto 0); --size of location inside RAM--
signal sig:RAM_TYPE;
begin

process(Data_in, Address, CLK, RST, RE, WR)
begin 
	if (RST = '1') then
		Data_out <= (others => '0');   --others: all resedual element [?? ??????]--
		for x in 0 to 2**(Address_Width)-1 loop
			sig(x) <= (others => '0');  --intialize WR = 1 then add address then read -- FINAL Q : 8k*4 ???? ???? ?????? ????? ???? ????--
			end loop;
			elsif rising_edge(CLK) then
				if WR = '1' then
				sig(conv_integer(Address)) <= Data_in;
				end if;
			if RE = '1' then
				Data_out <= sig(conv_integer(Address));
				end if;
			end if;
		end process;
end Behavioral;

