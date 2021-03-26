----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Dilpreet Singh
-- 
-- Create Date: 25.03.2021 18:04:21
-- Design Name: 
-- Module Name: shift_register - shift_register
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shift_register is
      Port (
      reset : IN STD_LOGIC;
      clk   : IN STD_LOGIC;
      din   : IN STD_LOGIC;
      dout  : OUT STD_LOGIC
       );
end shift_register;
-------------------------------------------

architecture Behaviour of shift_register is
 ------------------------- Signal Declaration -------------------------

    ----------- Memory TO -----------
    signal  mem_to   :   STD_LOGIC_VECTOR(0 TO 3)  := (Others => '0');
    ---------------------------------

    --------- Memory DOWNTO ---------
    signal  mem_dt   :   STD_LOGIC_VECTOR(3 DOWNTO 0)  := (Others => '0');
    ---------------------------------
    ----------------------------------------------------------------------
begin

--    -------------- TO ---------------
--    dout    <=  mem_to(3);
--    ---------------------------------


    ------------ DOWNTO -------------(verso dx)
    dout    <=  mem_dt(3);
    ---------------------------------

    shift_reg : process(reset, clk)
    begin
        
        if (reset = '1') then 
            mem_dt <= (Others => '0');
            --mem_to <= (Others => '0');
            
        elsif rising_edge(clk) then
              ------------ DOWNTO -------------
              mem_dt  <=  mem_dt(2 DOWNTO 0)&din;
              ---------------------------------

--            -------------- TO ---------------
--            mem_to     <=  din&mem_to(0 TO 2);
--            ---------------------------------
        end if;

        end process;

end Behaviour;
