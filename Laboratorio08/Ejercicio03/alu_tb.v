module testbench();

    reg [3:0] a,b;
    reg [2:0] op;
    wire [3:0] salida;

    Alu #(4) alu(a,b,op,salida);

    initial begin
        $display("| Operacion |   A    |   B    | Resultado  ");
        $display("-------------------------------------------");
        $monitor("|    %b    |  %b  |  %b  |   %b ",op,a,b,salida);
    end

    initial begin
        op=0; a=4'b1010; b=4'b1101;
        #1 b=4'b0000;
        #1 op = 1; a=4'b0101; b=4'b1010;
        #1 a=0;
        #1 op = 2; a=1;
        #1  b=7;
        #1  op=3;
        #1 op=4; b=0; a=15;
        #1 op=5;
        #1 a=0;
        #1 op = 6;a=5;b=3;
        #1 a=6;
        #1 op = 7;
        #1 a=1; b=2; 
        #1 a=4; b=7;
        #1 b=2;
        #2 $finish;
    end



endmodule