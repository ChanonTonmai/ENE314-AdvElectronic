library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- send told that the signal is finish transmission
-- cmd_done is the same as busy port

entity addr_asm is
    Port ( clk, reset : in STD_LOGIC;
           start, cmd_done : in STD_LOGIC;
           addr_out : out STD_LOGIC_VECTOR (6 downto 0);
           data_wr : out STD_LOGIC_VECTOR (7 downto 0);
           ena, rw, send : out std_logic;
           data_raw_in : in STD_LOGIC_VECTOR (16 downto 0);
           data_rd : out STD_LOGIC_VECTOR (15 downto 0));      
end addr_asm;

architecture Behavioral of addr_asm is
    type ads1115_state is (idle, w1, w2, w3, rd1, rd2); -- ADS1115 design for 1 channel
    signal state_reg, state_next: ads1115_state;
    signal cmd_done_tick, cmd_done_before : std_logic; 
    
begin
    cmd_done_tick <= not cmd_done and cmd_done_before;
    process(clk)
    begin
        if (clk'event and clk= '1') then 
            cmd_done_before <= cmd_done; 
        end if;
    end process;

    process(clk)
    begin
	 if (clk'event and clk= '1') then
     case state_next is 
        when idle => 
            ena <= '0';
            rw <= '0';
            send <= '0';
            if reset = '0' then
				 if start = '1' then
              state_next <= w1; 
				 else
              state_next <= idle;	
             end if;				  
            else 
             state_next <= idle;
            end if; 
        when w1 =>  
            addr_out <= "0100100";
            data_wr <= x"01";
            rw <= '0';
            ena <= '1';
            send <= '0';
            if (cmd_done_tick = '1') then 
                state_next <= w2; 
            else 
                state_next <= w1;
            end if;
        when w2 => 
            addr_out <= "1100000";
            data_wr <= x"83";
            rw <= '0';
            ena <= '1';
            send <= '0';
            if (cmd_done_tick) = '1' then 
                state_next <= rd1; 
            else 
                state_next <= w2;
            end if;
        when rd1 =>
            addr_out <= "0100100";
            ena <= '1';
            rw <= '1';
            data_wr <= x"00";
            send <= '0';
            if cmd_done_tick = '1' then 
                state_next <= rd2; 
            else 
                state_next <= rd1;
            end if;
        when rd2 =>
            data_rd <= data_raw_in(16 downto 9) & data_raw_in(7 downto 0);
            ena <= '0';
         
            if reset = '0' then
				 if start = '1' then
              state_next <= rd1; 
				 else
              state_next <= idle;	
                 end if;				  
            else 
                 state_next <= idle;
            end if; 
				
			when others	 =>
				 state_next <= idle;
         end case;
		 end if;
     end process;     
                

end Behavioral;
