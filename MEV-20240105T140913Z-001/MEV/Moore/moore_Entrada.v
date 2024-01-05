module moore_Entrada(UP, DOWN, ATUAL, PROX);

input wire UP, DOWN;
input wire [3:0] ATUAL;
output reg [3:0] PROX;

parameter 	A = 4'b0000, 
				B = 4'b0001, 
				C = 4'b0010, 
				D = 4'b0011, 
				E = 4'b0100, 
				F = 4'b0101,  
				G = 4'b0110, 
				H = 4'b0111, 
				I = 4'b1000, 
				J = 4'b1001;
				
always @(UP or ATUAL)
	begin
		case(ATUAL)
		
		A: if(UP == 0)
				if(DOWN == 0)
					PROX = A;
				else
					PROX = I;
			else
				if(DOWN == 0)
					PROX = B;
				else
					PROX = J;
					
		B: if(UP == 0)
				if(DOWN == 0)
					PROX = B;
				else
					PROX = A;
			else
				if(DOWN == 0)
					PROX = C;
				else
					PROX = J;
					
		C: if(UP == 0)
				if(DOWN == 0)
					PROX = C;
				else
					PROX = B;
			else
				if(DOWN == 0)
					PROX = D;
				else
					PROX = J;
					
		D: if(UP == 0)
				if(DOWN == 0)
					PROX = D;
				else
					PROX = C;
			else
				if(DOWN == 0)
					PROX = E;
				else
					PROX = J;
					
		E: if(UP == 0)
				if(DOWN == 0)
					PROX = E;
				else
					PROX = D;
			else
				if(DOWN == 0)
					PROX = F;
				else
					PROX = J;
					
		F: if(UP == 0)
				if(DOWN == 0)
					PROX = F;
				else
					PROX = E;
			else
				if(DOWN == 0)
					PROX = G;
				else
					PROX = J;
					
		G: if(UP == 0)
				if(DOWN == 0)
					PROX = G;
				else
					PROX = F;
			else
				if(DOWN == 0)
					PROX = H;
				else
					PROX = J;
				
		H: if(UP == 0)
				if(DOWN == 0)
					PROX = H;
				else
					PROX = G;
			else
				if(DOWN == 0)
					PROX = I;
				else
					PROX = J;
					
		I: if(UP == 0)
				if(DOWN == 0)
					PROX = I;
				else
					PROX = H;
			else
				if(DOWN == 0)
					PROX = A;
				else
					PROX = J;
					
		default: PROX = 4'bxxxx;
		endcase
	end
	
endmodule
	