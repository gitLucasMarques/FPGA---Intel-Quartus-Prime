module operacao(A, B, SEL0, SEL1, SEL2, S);

input wire [3:0] A;
input wire [3:0] B;
input wire SEL2, SEL1, SEL0;
output reg [3:0] S;

always @(*)
	begin
		
		case({SEL2, SEL1, SEL0})
		
		3'b000: S = A & B;
				
		3'b001: S = A | B;
				
		3'b010: S = A + B;
				
		3'b011: S = A - B;
		
		3'b100: S = A * B;
		
		3'b101: S = A / B;
		
		endcase
	end

endmodule