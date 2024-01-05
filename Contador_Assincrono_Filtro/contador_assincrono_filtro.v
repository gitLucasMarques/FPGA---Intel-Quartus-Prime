module contador_assincrono_filtro(clock_inicial, clock_filtro, reset, clock_final, S, a, b, c, d, e, f, g, seg);
	
input wire clock_inicial, clock_filtro, reset;
output wire clock_final;
output wire [3:0] S;
output wire a, b, c, d, e, f, g;
output reg [6:0] seg;

filtro filtro(.clock_inicial(clock_inicial), .clock_filtro(clock_filtro), .clock_final(clock_final));
contador_4_bits contador_4_bits(clock_final, reset, S);
decodificador decodificador(S[3], S[2], S[1], S[0], a, b, c, d, e, f, g);

endmodule