-- Listing 7.5
-- * notes to run on logi
-- * using led-sseg display to show the led values
-- * using onboard leds to show the buffer full/empty
-- * using minicom running on the rpi to act as the uart interface to the fpga
--		--you must have minicom installed and make a connection with 8n1 baud:19200.
-- 		see: http://www.hobbytronics.co.uk/raspberry-pi-serial-port to install and run minicom
-- 		1) run: sudo apt-get install minicom
--		2) run: minicom -b 19200 -o -D /dev/ttyAMA0



library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity uart_test is
   port(
      clk: in std_logic;
      reset : in std_logic;
      btn_n: in std_logic_vector(1 downto 0);
	  led: out std_logic_vector(1 downto 0);
      rx: in std_logic;
      tx: out std_logic;
      tx_debug : out std_logic
   );
end uart_test;

architecture arch of uart_test is

   signal tx_full, rx_empty: std_logic;
   signal rec_data,rec_data1: std_logic_vector(7 downto 0);
   signal btn_tick, btn_level: std_logic;
   signal btn: std_logic_vector(1 downto 0);
   signal tx_done, tx_start : std_logic;
   signal led_sseg, data_in, data_out: std_logic_vector(7 downto 0);
   signal tx_temp, rx_temp : std_logic; 
begin

	btn <= (btn_n);
    tx <= tx_temp;
    tx_debug <= tx_temp; 
   -- instantiate uart
   uart_unit: entity work.UART(Behavioral)
      port map(clk=>clk, TX_DV=>tx_start, TX_DONE=>tx_done, RX_DV=>open, Data_in=>data_in,
                Data_out=> data_out, UART_tx_o=>tx_temp, UART_rx_i=>rx_temp);
   -- instantiate debounce circuit
   btn_db_unit: entity work.db_fsm(arch)
      port map(clk=>clk, reset=>'0', sw=>btn(0)
               ,db_level=>open,  db => btn_level);
   
   btn_edge_unit : entity work.edge_detect(gate_level_arch)
      port map(clk=>clk, reset=>'0', level=>btn_level, tick=>btn_tick);
      
   data_init : entity work.send_data(Behavioral)
      port map (clk=>clk, reset=>reset, tx_done => tx_done, 
                    btn_tick=> btn_tick, data=>data_in, tx_drive=> tx_start);
   -- incremented data loop back
   data_out <= "01000010";
   --  led display
   --an <= "0001";
   --sseg <= '1' & (not tx_full) & "11" & (not rx_empty) & "111";
	--sseg <= '0' & (not tx_full) & "00" & (not rx_empty) & "000";	--invert the an signals for nmos
	led(0) <= tx_full;
	led(1) <= rx_empty;
	
	

	
end arch;
