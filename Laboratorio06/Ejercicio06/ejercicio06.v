//ejercicio 1
module maquinaMealy(input A,B,clk,reset, output y);
    reg [1:0]estado;
    wire [1:0]estado_siguiente;
    wire nodo1;

    assign nodo1 = estado[1] & A & B ; //nodo que sirve tanto para la salida como para el bit s1 del estado
    assign estado_siguiente[0]= ~estado[1] & ~estado[0] & A; //S0 del siguente estado
    assign estado_siguiente[1]=  nodo1 | (estado[0] & B);//S1 del siguiente estado
    assign y = nodo1; 

    // se asigna 00 al estado si reset esta en 1, de forma asincrona, si es 0, la maquina sigue su ejecucion normal
    // se mueve a estado el estado siguente en cada flanco positivo de reloj (no blocking).
    always @ (posedge clk, posedge reset) estado <= reset? 2'b00 : estado_siguiente;

endmodule

// ejercicio 03
module contadorGray(input upNotDown, clk, reset, output wire [2:0]salida );
    reg [2:0] estado;
    wire [2:0] estado_siguiente;
    //Nodos auxiliares
    wire n1,n2,n3;
    wire n4,n5,n6;
    wire n7,n8,n9,n10;
    // implementacion de las ecuaciones obtenidas con Logic Friday
    assign   n1= ~estado[1] & ~estado[0] & ~upNotDown;
    assign   n2= estado[1] &  ~estado[0] & upNotDown;
    assign   n3= estado[2] & estado[0];

    assign    n4= ~estado[2] & estado[0] & upNotDown;
    assign    n5= estado[2] & estado[0] & ~upNotDown;
    assign    n6 = estado[1] & ~estado[0];

    assign    n7 = ~estado[2] & ~estado[1] & upNotDown;
    assign    n8 = estado[2] & ~estado[1] & ~upNotDown;
    assign    n9 = ~estado[2] & estado[1] & ~upNotDown;
    assign    n10 = estado[2] & estado[1] & upNotDown;

    assign estado_siguiente = {n1 | n2 | n3, n4 | n5 | n6, n7| n8 | n9 |n10 };
    // se eligio la codificacion de los estados de forma que coincidieran con los valores de salida solicitados
    assign salida = estado;
       

    always @(posedge clk , posedge reset) estado <= reset ? 3'b000 : estado_siguiente; 

endmodule