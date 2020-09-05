module testbench();
    reg  A, B;
    reg clk, rst;
    wire [1:0]estado;
    wire y;

    
    maquinaMealy mq(A, B, clk, rst,estado,y);

    

    initial begin
     rst=1; clk=0;
     #4 A=0; B=0; rst=0;
     #4 B=1;
     #4 A=1; B=0;
     #12 B=1;
     #12 B=0;
     #12 A=0; B=0; rst=0;
     #4 B=1;
     #4 A=1; B=0;
     #12 B=1;
     #12 A=0;
     #8 $finish;
    end

    always
        #2 clk = ~clk;
    initial begin
        $dumpfile("ejercicio01_tb.vcd");
        $dumpvars(0,testbench);
    end

endmodule