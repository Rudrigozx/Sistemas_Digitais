module top_level(
input clk_t,
input [1:0] a_t,
input [1:0] op_t,
output  [7:0] vout_t
);



wire [7:0] value_inter;

memory mem_i(.clk(clk_t), .a(a_t), .out(value_inter));
ula ula_i(.value_in(value_inter), .op(op_t), .vout_t(vout_t));

endmodule


