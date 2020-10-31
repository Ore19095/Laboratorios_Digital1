module  FlipFlopD1b(input d,enable,reset,clk,output reg q);

    always @(posedge clk, posedge reset) begin  //reset asincrono
        if (reset) q = 0; // si el reset esta activado la salida se coloca en 0
        else if (enable) q = d; //si reset esta en 0 y ademas esta enable en 1, entonces deja pasar d a q
    end

endmodule

module FlipFlopD2b(input wire [1:0] d, input wire enable, reset, clk, output wire [1:0] q );

    FlipFlopD1b FF1(d[0], enable, reset,clk, q[0]);//primer FF
    FlipFlopD1b FF2(d[1], enable, reset,clk, q[1]);//segundo FF

endmodule

module FlipFlopD4b(input [3:0] d, input wire enable, reset, clk, output wire [3:0] q );

    FlipFlopD2b FF1(d[1:0], enable, reset,clk, q[1:0]); // FF de los bits 0 y 1
    FlipFlopD2b FF2(d[3:2], enable, reset,clk, q[3:2]); // Ff de los bits 2 y 3

endmodule