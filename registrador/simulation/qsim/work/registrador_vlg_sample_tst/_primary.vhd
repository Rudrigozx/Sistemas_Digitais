library verilog;
use verilog.vl_types.all;
entity registrador_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        \in\            : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end registrador_vlg_sample_tst;
