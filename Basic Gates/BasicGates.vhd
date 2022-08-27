----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:47:39 03/08/2022 
-- Design Name: 
-- Module Name:    BasicGates - Behavioral 
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

entity BasicGates is
    Port ( in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           out1 : out  STD_LOGIC;
           out2 : out  STD_LOGIC;
           out3 : out  STD_LOGIC;
           out4 : out  STD_LOGIC;
           out5 : out  STD_LOGIC;
           out6 : out  STD_LOGIC);
end BasicGates;

architecture Behavioral of BasicGates is

begin

out1 <= in1 and in2;
out2 <= in1 or in2;
out3 <= not in2;
out4 <= in1 nand in2;
out5 <= in1 xor in2;
out6 <= in1 xnor in2;

end Behavioral;

