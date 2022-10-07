library verilog;
use verilog.vl_types.all;
entity LatchD_Nor is
    port(
        D               : in     vl_logic;
        E               : in     vl_logic;
        Q               : out    vl_logic;
        Qn              : out    vl_logic
    );
end LatchD_Nor;
