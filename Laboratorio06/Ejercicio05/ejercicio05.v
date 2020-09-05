module flip_flopD(input wire [3:0]d,input wire clk, input wire reset, set, output reg [3:0] Q);
    

    /* se le asigna a la salida los sigientes valores, durante el flanco de subida
        d si set y reset se encuentran ambos en 0
        1111 si set esta en 1 sin importar lo que se encuentre en 
    */
    always @ (posedge clk) Q <= ( reset ? 4'b0000 : d) | (set ? 4'b1111 : 4'b0000) ;  
    always @ (posedge reset) Q = 4'b0000;
endmodule 