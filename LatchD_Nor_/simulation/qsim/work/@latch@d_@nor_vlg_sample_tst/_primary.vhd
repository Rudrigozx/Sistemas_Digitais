library verilog;
use verilog.vl_types.all;
entity LatchD_Nor_vlg_sample_tst is
    port(
        D               : in     vl_logic;
        E               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end LatchD_Nor_vlg_sample_tst;
