library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

entity main_src is 

    port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           z : in STD_LOGIC;
           f : out STD_LOGIC);      
end main_src;

architecture Behavioral of main_src is

    begin

        f <= x and y and z;

end Behavioral;

    
