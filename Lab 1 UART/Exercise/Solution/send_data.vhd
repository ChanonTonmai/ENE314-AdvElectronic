----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/17/2019 02:53:07 AM
-- Design Name: 
-- Module Name: send_data - Behavioral
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
use IEEE.NUMERIC_STD.ALL;



entity send_data is
    Port ( clk,reset : in STD_LOGIC;
           tx_done : in STD_LOGIC;
           btn_tick : in STD_LOGIC;
           data : out STD_LOGIC_VECTOR (7 downto 0);
           tx_drive : out STD_LOGIC);
end send_data;

architecture Behavioral of send_data is
    constant M : integer := 13;
    signal data_reg, data_next : unsigned(4 downto 0);
    signal data_temp : unsigned(4 downto 0);
    signal cond, cond_c, tx_done_tick : std_logic;
    signal cond_m : std_logic_vector(1 downto 0);
    type a_mem is array(0 to 15) of std_logic_vector(7 downto 0);
    signal memory : a_mem := (
    -- Message "Hello World\r\n"
    x"48", x"65", x"6c", x"6c", x"6F", x"20", x"57", x"6F", x"72", x"6c", x"64", x"0d", x"0a", x"FF", x"FF", x"FF");
  --  H      e      l      l      0            W      o       r      l     d      \r      \n    EOM
begin

    btn_edge_unit : entity work.edge_detect(moore_arch)
      port map(clk=>clk, reset=>'0', level=>tx_done, tick=>tx_done_tick);
    process(clk, reset)
    begin
        if reset = '1' then 
            data_reg <= (others=> '0');
        elsif (clk'event and clk='1') then
            data_reg <= data_next; 
        end if; 
    end process;
    cond_c <= '1' when data_reg = M else '0';
    cond_m <= cond & cond_c; 
    with cond_m select
        data_next <= data_reg + 1 when "10",
                     "00000" when "11",
                     data_reg when others;
         
    cond <= btn_tick when data_reg = "00000" 
                 else tx_done_tick;   
                
    tx_drive <= '0' when data_reg = M else 
                 cond; 
    data <= memory(to_integer(data_reg));
    

end Behavioral;
