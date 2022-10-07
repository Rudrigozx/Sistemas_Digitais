module ula(
input clk,
input [7:0] value_in,
input [1:0] op,
output reg[7:0] vout_t
);

always @(posedge clk)
begin	
	case(op)
		2'b00: begin vout_t = value_in >> 1	;end
		2'b01: begin vout_t = value_in << 1	;end
		2'b10: begin vout_t = ~ value_in		;end
		2'b11: begin vout_t = value_in + 1	;end
			
	endcase
end

endmodule