module  FlipFlopD1b(input d,enable,reset,clk,output reg q);
    // copiado del ejercicio 1
    always @(posedge clk, posedge reset) begin  //reset asincrono
        if (reset) q = 0; // si el reset esta activado la salida se coloca en 0
        else if (enable) q = d; //si reset esta en 0 y ademas esta enable en 1, entonces deja pasar d a q
    end

endmodule


module FlipFlopJK(input wire J,K, enable, reset, clk, output wire q );

    wire d;

    assign d = ~K & q | J & ~q; // ecuacion para la entrada d del ff segun logic friday

    FlipFlopD1b FF(d,enable,reset,clk,q);

endmodule