module Mux2_1(input wire D0,D1,S0, output wire out);
    assign out = S0 ? D1 : D0 ;
endmodule

module Mux4_1(input wire D0,D1,D2,D3,S1,S0,output wire out);
    wire out1,out2; 
    Mux2_1 m1(D0,D1,S0,out1);
    Mux2_1 m2(D2,D3,S0,out2);

    Mux2_1 m3(out1,out2,S1,out);
endmodule

module Mux8_1(input wire D0,D1,D2,D3,D4,D5,D6,D7,S2,S1,S0,output wire out);
    wire out4_1,out4_2;

    Mux4_1 m1(D0,D1,D2,D3,S1,S0,out4_1);
    Mux4_1 m2(D4,D5,D6,D7,S1,S0,out4_2);
    Mux2_1 m3(out4_1,out4_2,out);

endmodule

module Tabla1Mux8_1(input wire a,b,c, output wire out);
    Mux8_1  m1(0,1,1,0,1,0,0,1,a,b,c,out);
endmodule

module Tabla1Mux4_1(input wire a,b,c,output wire out);
    wire notC;
    assign notC = ~c;

    Mux4_1 m1(c,notc,notc,c,a,b,out);
endmodule

module Tabla1Mux2_1(input wire a,b,c, output wire out);
    wire xorBC,xnorBC;
    assign xorBC = b * ~C + ~b * c ;
    assign xnorBC = ~xorBC;

    Mux2_1 m1(xorBC,xnorBC,a,out);
endmodule

module Tabla2Mux8_1 (input wire a,b,c, output wire out);

    Mux8_1 m1(1,0,0,0,0,1,1,0,a,b,c,out);

endmodule

module Tabla2Mux4_1 (input wire a,b,c,output wire out);
    wire notC;
    Mux4_1  m1(1,0,1,notC,a,b,out);
endmodule

module Tabla2Mux2_1 (input wire a,b,c, output wire out);
    wire nandBC, xorBC;
    assign nandBC = ~(b*c);
    assign xorBC = b * ~c + ~b *c ;

    Mux2_1 m1(nandBC,xorBC,a,out);
endmodule









