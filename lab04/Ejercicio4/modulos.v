//ejercicio 1.1
module Ejercicio1Tabla1 (input wire a,b,c, output wire y);
    //structural
    wire notA,notB,notC;
    wire w1,w2,w3;
    // negaciones
    not N1(notA,a);
    not N2(notB,b);
    not N3(notC,c);
    // multiplicaciones
    and A1(w1,notA,notC);
    and A2(w2,a,notB);
    and A3(w3,a,c);
    // suma
    or O1(y,w1,w2,w3);
endmodule
//ejercicio 1.2
module Ejercicio1Tabla2(input wire a,b,c,output wire y);
    //structural
    not N1(y,b);
    
endmodule
//ejercicio 1.3
module Ejercicio1Tabla3(input wire a,b,c,d, output wire y);
    wire notA, notB,notC,notD;
    wire w1,w2,w3,w4,w5,w6,w7,w8;
    // structural
    //complemento
    not N1(notA,a);
    not N2(notB,b);
    not N3(notC,c);
    not N4(notD,d);
    //multiplicaciones
    and A1(w1,notA,notB,notC,notD);
    and A2(w2,a,b,notC,notD);
    and A3(w3,notA,b,notC,d);
    and A4(w4,a,notB,notC,d);
    and A5(w5,notA,notB,c,d);
    and A6(w6,a,b,c,d);
    and A7(w7,notA,b,c,notD);
    and A8(w8,a,notB,c,notD);
    // suma
    or O1(y,w1,w2,w3,w4,w5,w6,w7,w8);
endmodule
//ejercicio 1.4
module Ejercicio1Tabla4(input wire a,b,c,d, output wire y);
    wire notC,notD;

    wire w1,w2,w3;
    //complemento
    not N1(notC,c);
    not N2(notD,d);
    //multiplicaciones
    and A1(w1,a,c);
    and A2(w2,a,b);
    and A3(w3,a,notC,notD);
    // suma
    or O1(y,w1,w2,w3);
endmodule
//ejercicio 2.1
module  Ejercicio2Ecuacion1(input wire a,b,c,d,output wire y);
    wire w1,w2,w3,w4;
    assign w1 = a & ~c;
    assign w2 = a & ~b;
    assign w3 = a & ~d;
    assign w4 = ~b & ~c & ~d;
    assign y = w1 | w2 | w3 | w4 ;
endmodule
//ejercicio 2.2
module Ejercicio2Ecuacion2(input wire a,b,c, output wire y);
    assign y = ~b | c;
endmodule
//ejercicio 2.3 
module Ejercicio2Ecuacion3(input wire a,b,c,d, output wire y);
    wire w1,w2;
    assign w1 = ~c & d;
    assign w2 = a & d;
    assign y = b | w1 | w2;
endmodule

//ejercicio 2.4
module Ejercicio2Ecuacion4 (input wire a,b,c, output wire y);
    assign y= b | (~a & ~c);
endmodule