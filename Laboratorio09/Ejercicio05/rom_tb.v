module testbench();
    reg [6:0] direccion;
    wire [12:0] valor ;

    Rom memoria(direccion,valor);

    initial begin
        #1 $display("| Direccion | valor ");
        $display("--------------------");
        $monitor("|  %b  | %b",direccion,valor);
    end

    initial begin
         direccion = 7'b10110; // caso 1
        #1 direccion = 7'b010; // caso 1
        #1 direccion = 7'b10110; //caso 1
        #1 direccion = 7'b0000111; //caso 2
        #1 direccion = 7'b0000101; // caso 2
        #1 direccion = 7'b0000011; // caso 3
        #1 direccion = 7'b0001101; //caso 4
        #1 direccion = 7'b0001111; // caso 4
        #1 direccion = 7'b0001001; // caso 5
        #1 direccion = 7'b0001011; // caso 5
        #1 direccion = 7'b0010101; //caso 6
        #1 direccion = 7'b0010111; //caso 6
        #1 direccion = 7'b0010001; // caso6
        #1 direccion = 7'b0011111; // caso 7
        #1 direccion = 7'b0011001; 
        #1 direccion = 7'b0100011; //caso 8
        #1 direccion = 7'b0100101; 
        #1 direccion = 7'b0101111; //caso 9
        #1 direccion = 7'b0101101;
        #1 direccion = 7'b0110101; //caso 10
        #1 direccion = 7'b0110011;
        #1 direccion = 7'b0111111; //caso 11
        #1 direccion = 7'b0111001;
        #1 direccion = 7'b1000111; //cas0 12
        #1 direccion = 7'b1000011;
        #1 direccion = 7'b1000101; //caso 13
        #1 direccion = 7'b1000001; 
        #1 direccion = 7'b1001111;//cas0 14
        #1 direccion = 7'b1001011; 
        #1 direccion = 7'b1001101; //cas0 15
        #1 direccion = 7'b1001001; //
        #1 direccion = 7'b1010111; //caso 16
        #1 direccion = 7'b1010001; 
        #1 direccion = 7'b1011111; //caso 17
        #1 direccion = 7'b1011011; //
        #1 direccion = 7'b1100011; //caso 18
        #1 direccion = 7'b1100111; //
        #1 direccion = 7'b1101011; //caso 19
        #1 direccion = 7'b1101111; 
        #1 direccion = 7'b1110111; //caso 20
        #1 direccion = 7'b1110101;
        #1 direccion = 7'b1111101; //caso 21
        #1 direccion = 7'b1111111; 
    end


endmodule