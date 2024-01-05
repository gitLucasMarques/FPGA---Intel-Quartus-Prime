module moore_Saida(ATUAL, S);

input wire [3:0] ATUAL;
output reg [3:0] S;

parameter 	A = 4'b0000, 
				B = 4'b0001, 
				C = 4'b0010, 
				D = 4'b0011, 
				E = 4'b0100, 
				F = 4'b0101,  
				G = 4'b0110, 
				H = 4'b0111, 
				I = 4'b1000, 
				J = 4'b1001,
				
				K = 4'b1111;

always @(ATUAL)
	begin
		case(ATUAL)
		
		A: S = D;
		B:	S = E;
		C: S = C;
		D: S = B;
		E: S = A;
		F: S = J; 
		G: S = H;
		H: S = G;
		I: S = F;
		J: S = K;
		
		default: S = 4'bxxxx;
		endcase
	end
	
endmodule
