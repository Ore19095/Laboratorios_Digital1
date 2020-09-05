module testbench();
    //----- Variables para el ejercicio 01--------------
    reg A,B;
    reg reset01;
    wire out01;
    //------ Variables para el ejercicio 03------------
    reg upNotDown;
    reg reset03;
    wire [2:0]out03;
    //---- reloj ---------
    reg clk;

    maquinaMealy Ejercicio01(A,B,clk,reset01,out01);
    contadorGray contador(upNotDown,clk,reset03,out03);

    initial clk =0 ; //se inicializa el reloj

    initial begin// ejercicio 01 ver timing
        reset01=0;
        #1 reset01=1;
        #1 reset01=0; // se inicia la operacion de la FSM
        #1 A=0; B=0;
        #17 B=1;
        #20 A=1;B=0;
        #100 B=1;
        #20  B=0;
        #40  B=1;
        #20  A=0; B=0;
        #20 $finish;
    end

    initial begin
        reset03=0; upNotDown = 1;
        #1 reset03=1;
        #1 reset03=0;
        #138 upNotDown=0;
    end

    always #10 clk= ~clk ;//onda cuadrada con periodo de 20 ciclos

    initial begin
        $dumpfile("ejercicio06_tb.vcd");
        $dumpvars(0,testbench);
    end

endmodule