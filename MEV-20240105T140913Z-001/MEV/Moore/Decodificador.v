module Decodificador(A, B, C, D, a, b, c, d, e, f, g);

input wire A, B, C, D;
output wire a, b, c, d, e, f, g;
reg [6:0] seg;

always @(*)

	case ({A, B, C, D})
		4'b0000: seg = 7'b0000001;
		4'b0001: seg = 7'b1001111;
		4'b0010: seg = 7'b0010010;
		4'b0011: seg = 7'b0000110;
		4'b0100: seg = 7'b1001100;
		4'b0101: seg = 7'b0100100;
		4'b0110: seg = 7'b0100000;
		4'b0111: seg = 7'b0001111;
		4'b1000: seg = 7'b0000000;
		4'b1001: seg = 7'b0000100;
		4'b1111: seg = 7'b1111111;
	endcase
	
	assign {a, b, c, d, e, f, g} = seg;

endmodule