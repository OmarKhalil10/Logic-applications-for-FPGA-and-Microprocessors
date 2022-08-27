----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:25:16 04/05/2022 
-- Design Name: 
-- Module Name:    PISO - Behavioral 
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

entity PISO is
    Port ( Data_in : in  STD_LOGIC_VECTOR(7 downto 0);
           MODE : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
			  EN : in STD_LOGIC; 
           Serial_Out : out  STD_LOGIC);
end PISO;

architecture Behavioral of PISO is
begin
piso:process(Data_in, MODE, CLK, RST, EN)
	variable VAR_1: STD_LOGIC_VECTOR(7 downto 0) := X"00";
begin
	if (EN = '1') then
		if (RST = '1') then
			Serial_Out <= '0';
			VAR_1 := X"00";
		elsif rising_edge(CLK) then
			case MODE is 
				when '1' => VAR_1 := Data_in; -- Load Parallel Input Data --
				when '0' => Serial_Out <= VAR_1(7);
								Var_1 := Var_1(6 downto 0) & '0';
				when others => null; --U OR H etc;
			end case;
		end if;
	end if;
end process piso;
end Behavioral;

