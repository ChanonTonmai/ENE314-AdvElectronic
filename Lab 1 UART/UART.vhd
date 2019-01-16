----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:02:21 12/23/2018 
-- Design Name: 
-- Module Name:    UART - Behavioral 
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

entity UART is
port(
	 Clk       : in  std_logic; 
	 TX_DV     : in  std_logic; -- tx start
	 TX_Done   : out std_logic; -- tx finish
	 RX_DV     : out std_logic; -- rx finish
	 Data_in   : in  std_logic_vector(7 downto 0);
	 Data_out  : out std_logic_vector(7 downto 0);
    UART_tx_o   : out  std_logic;
    UART_rx_i   : in  std_logic
	 );
end UART;

architecture Behavioral of UART is

component UART_RX 
  generic (
    g_CLKS_PER_BIT : integer := 870    -- Needs to be set correctly
    );
  port (
    i_Clk       : in  std_logic;
    i_RX_Serial : in  std_logic;
    o_RX_DV     : out std_logic;
    o_RX_Byte   : out std_logic_vector(7 downto 0)
    );
end component;

component UART_TX 
  generic (
    g_CLKS_PER_BIT : integer := 870     -- Needs to be set correctly
    );
  port (
    i_Clk       : in  std_logic;
    i_TX_DV     : in  std_logic;
    i_TX_Byte   : in  std_logic_vector(7 downto 0);
    o_TX_Active : out std_logic;
    o_TX_Serial : out std_logic;
    o_TX_Done   : out std_logic
	 );
end component;

signal TX_Byte   : std_logic_vector(7 downto 0);
signal RX_Byte   : std_logic_vector(7 downto 0);
signal TX_Active : std_logic;


begin
   
	
	TX_Byte <= Data_in;
	Data_out <= RX_Byte(7 downto 0);
	
   receiver : UART_RX 
   generic map(
     g_CLKS_PER_BIT => 870     -- Needs to be set correctly
   )
   port map (
     i_Clk       => clk,
     i_RX_Serial => UART_rx_i,
     o_RX_DV     => RX_DV,
     o_RX_Byte   => RX_Byte
   );
   
	transmitter : UART_TX 
   generic map(
     g_CLKS_PER_BIT => 870     -- Needs to be set correctly
   )
   port map (
     i_Clk       => clk,
     i_TX_DV     => TX_DV,
     i_TX_Byte   => TX_Byte,
     o_TX_Active => TX_Active,
     o_TX_Serial => UART_tx_o,
     o_TX_Done   => TX_Done      
   );

end Behavioral;

