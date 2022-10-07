module memory(
input clk,
input [1:0] a,
output reg[7:0] out
);

always @(posedge clk)
begin
	case(a)
		2'b00: out = 8'b11111111;
		2'b01: out = 8'b00111111;
		2'b10: out = 8'b00001111;
		2'b11: out = 8'b00000011;
	endcase

end

endmodule