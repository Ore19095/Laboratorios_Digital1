module maquinaMealy(input wire A, B, clk, reset, output reg  [1:0] estado, output wire Y);
    

    assign Y = A & B & estado[1];
    always @ (posedge clk, posedge reset) begin
        estado[0] <= reset? 0 :  A & ~estado[1] & ~estado[0];
        estado[1] <= reset ? 0 : (A & B & estado[1]) | (B & estado[0]) ;
    end 
        
endmodule