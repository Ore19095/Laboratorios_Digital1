module testbench();
    reg a,b,c;
    reg a1,b1,c1;
    wire out1,out2,out3,out4,out5,out6;

Tabla1Mux8_1 t1(a,b,c,out1);
Tabla1Mux4_1 t2(a,b,c,out2);
Tabla1Mux2_1 t3(a,b,c,out3);

Tabla2Mux8_1 t4(a1,b1,c1,out4);
Tabla2Mux4_1 t5(a1,b1,c1,out5);
Tabla2Mux2_1 t6(a1,b1,c1,out6);

initial begin  //mostrar tablas de verdad
    $display("-----------------Tabla 1-------------------------");
    $display("|      Mux 8:1       Mux 4:1        Mux 2:1 ");
    $display("|    ----------    ----------     -----------");
    $display("|    A B C | Y     A B C | Y       A B C | Y  ");
    $monitor("|    %b %b %b | %b     %b %b %b | %b       %b %b %b | %b",a,b,c,out1,a,b,c,out2,a,b,c,out3);
    #7
    $display("-----------------Tabla 2-------------------------");
    $display("|      Mux 8:1       Mux 4:1        Mux 2:1 ");
    $display("|    ----------    ----------     -----------");
    $display("|    A B C | Y     A B C | Y       A B C | Y  ");
    $monitor("|    %b %b %b | %b     %b %b %b | %b       %b %b %b | %b",a1,b1,c1,out4,a1,b1,c1,out5,a1,b1,c1,out6);
    
end

initial begin
    a=0; b=0; c=0;
    #1 c=1;
    #1 b=1; c=0;
    #1 c=1;
    #1 a=1; b=0; c=0;
    #1 c=1;
    #1 b=1; c=0;
    #1 c=1;
end

initial begin
    #7 
    a1=0; b1=0; c1=0;
    #1 c1=1;
    #1 b1=1; c1=0;
    #1 c1=1;
    #1 a1=1; b1=0; c1=0;
    #1 c1=1;
    #1 b1=1; c1=0;
    #1 c1=1;
end

initial #15 $finish;
    initial begin
        $dumpfile("Ejercicio04_tb.vcd");
        $dumpvars(0,testbench);
    end
endmodule