module contador_4_bits(input wire clock_final, input wire reset, output reg S);

always @ (negedge clock_final or posedge reset)
	begin
		
		if (reset == 1)
			begin
				S <= 4'b0000;
			end
			
		else if (S == 4'b1001)
			begin
				S <= 4'b0000;
			end
			
		else
			begin
				S <= S + 4'b0001;
			end
			
	end
	
endmodule