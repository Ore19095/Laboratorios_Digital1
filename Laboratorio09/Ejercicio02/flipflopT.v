module  FlipFlopD1b(input d,enable,reset,clk,output reg q);
    // el mismo flip flop del ejercicio 1
    always @(posedge clk, posedge reset) begin  //reset asincrono
        if (reset) q = 0; // si el reset esta activado la salida se coloca en 0
        else if (enable) q = d; //si reset esta en 0 y ademas esta enable en 1, entonces deja pasar d a q
    end

endmodule


module FlipFlopT(input enable, reset, clk, output wire q );
    
    FlipFlopD1b FF(~q,enable, reset,clk,q); // ya que lo que hace FF T es complementar la salida
    //se coloca ~q en la entrada del Flip Flop D, de forma que en cada flanco de subida, la salida Q
    // se complementa, siempre y cuando el enable este en 1, 

endmodule