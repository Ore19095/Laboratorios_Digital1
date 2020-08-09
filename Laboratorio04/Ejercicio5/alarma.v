module AlarmaPOS(input wire sistema, ventana, movimiento, output wire alarma);
    wire w1,w2,w3;
    assign w1 = sistema & ~ventana & movimiento;
    assign w2 = sistema & ~ventana & ~movimiento;
    assign w3 = sistema & ventana  & movimiento;
    assign alarma  = w1 |  w2 | w3 ;
endmodule

module AlarmaSOP(input wire sistema, ventana,movimiento, output wire alarma);
    wire notS,notV,notM;
    wire w1,w2,w3,w4,w5;
    //negaciones
    not N1(notS, sistema);
    not N2(notV, ventana);
    not N3(notM, movimiento);
    //sumas
    or O1(w1,sistema,ventana,movimiento);
    or O2(w2,sistema,ventana,notM);
    or O3(w3,sistema,notV, movimiento);
    or O4(w4,sistema,notV,notM);
    or O5(w5,notS,notV,movimiento);
    //multiplicacion
    and A1(alarma, w1,w2,w3,w4,w5);
endmodule

module AlarmaKarnaught(input wire sistema, ventana,movimiento, output wire alarma);
    assign alarma = (sistema & movimiento) | (sistema & ~ventana);
endmodule