 module testbench();
    reg[3:0] dataIn;
    reg[2:0] control;
    reg  enableOutALU, loadAcu, reset, clk;
    wire[3:0] dataOut;
    wire C,Z;

    Procesamiento process(dataIn, control, enableOutALU, loadAcu, reset, clk, dataOut,C,Z);


    always #1 clk = ~clk;

    initial clk = 0;

    initial begin
        reset=0; loadAcu=0; enableOutALU=0; control=0; dataIn = 0;
        #1 reset=1;
        #1 reset=0;
        #2 dataIn=15;
        #2 enableOutALU=1;
        #2 control = 3;//suma el dato de entrada y el acumulador
        #1 loadAcu = 1;
        #1 loadAcu = 0; //acumulador en 15
        #4  dataIn=6;
        #2  control = 1; //resta acumulador - data in
        #1  loadAcu = 1;
        #1  loadAcu = 0; //se carga el valor en el acumulador valor 9
        #2  control = 2; //deja pasar data In
        #1  loadAcu  = 1;
        #1  loadAcu = 0;// acumulador en 6
        #2  enableOutALU = 0; //bus driver alu en alta impedancia
        #2  enableOutALU = 1; //valor de salida de la ALU
        #2  dataIn = 10;
        #1  loadAcu = 1; //se carga 10 al acumulador
        #1  loadAcu = 0; // se deja de cargar
        #2  control = 4; //NOR entre acu y el dato de entrada
        #2  dataIn = 8;
        #4 $finish;
    end

    initial begin
        $dumpfile("datos_tb.vcd");
        $dumpvars(0,testbench);
    end

 endmodule