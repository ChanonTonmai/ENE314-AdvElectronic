library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

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
    ------------------------------------------------------------------------------
    --------------------- Create Your Own Variable Area --------------------------
    ------------------------------------------------------------------------------ 
    type a_mem is array(0 to 15) of std_logic_vector(7 downto 0);
    signal memory : a_mem := (
    -- Message "Hello World\r\n"
    x"48", x"65", x"6c", x"6c", x"6F", x"20", x"57", x"6F", x"72", x"6c", x"64", x"0d", x"0a", x"FF", x"FF", x"FF");
  --  H      e      l      l      0            W      o       r      l     d      \r      \n    EOM
begin

    btn_edge_unit : entity work.edge_detect(moore_arch)
      port map(clk=>clk, reset=>'0', level=>tx_done, tick=>tx_done_tick);
    ------------------------------------------------------------------------------
    ------------------------- Create Your Own Code Area --------------------------
    ------------------------------------------------------------------------------ 
    data <= memory(to_integer(data_reg));
    

end Behavioral;
