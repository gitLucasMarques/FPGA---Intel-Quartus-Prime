module ula(A, B, SEL0, SEL1, SEL2, LSB0, LSB1, LSB2, MSB, S, a, b, c, d, e, f, g);

input wire [3:0] A;
input wire [3:0] B;
input wire SEL2, SEL1, SEL0;
output wire [3:0] S;
output wire MSB, LSB2, LSB1, LSB0;
output wire a, b, c, d, e, f, g;

operacao operacao(A, B, SEL2, SEL1, SEL0, S);
decodificador decodificador(S[3], S[2], S[1], S[0], a, b, c, d, e, f, g);

endmodule