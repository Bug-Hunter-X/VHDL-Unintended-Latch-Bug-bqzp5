```vhdl
entity my_entity is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           data_in : in  STD_LOGIC_VECTOR (7 downto 0);
           data_out : out  STD_LOGIC_VECTOR (7 downto 0));
end entity;

architecture behavioral of my_entity is
    signal internal_data : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
begin
    process (clk, rst)
    begin
        if rst = '1' then
            internal_data <= "00000000";
        elsif rising_edge(clk) then
            internal_data <= data_in;
        end if;
    end process;

data_out <= internal_data;
end architecture;
```