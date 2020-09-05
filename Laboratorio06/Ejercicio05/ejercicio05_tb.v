module testbench();
    reg  [3:0] d; //entrada al flip flop
    wire [3:0] out; //salida 
    reg clk,rst,set;// reloj y reset

    flip_flopD fp(d,clk,rst,set,out);
    initial begin
        d = 4'b0000; rst= 0; set=0;
        #1
        d=4'b0001;
        #2
        d=4'b0010;  
        #4   
        d=4'b0100;
        #4
        d=4'b1000;
        #1
        rst =1;
        #1
        d=4'b0001;
        #2
        d=4'b0010;  
        #4   
        d=4'b0100;
        #4
        d=4'b1000;
        #1
        d = 4'b0000; rst= 0; set=0;
        #1
        d=4'b0001;
        #2
        d=4'b0010;  
        #4   
        d=4'b0100;
        #4
        d=4'b1000;
        d = 4'b0000; rst= 0; set=1;
        #3
        d=4'b0010;  
        #4   
        d=4'b0100;
        #1
        rst =1;
        #1
        d=4'b0001;
        #2
        d=4'b0010;  



    end
    initial begin
        clk = 0;
        #2 clk = 1;
        #2 clk = 0;
        #2 clk = 1;
        #2 clk = 0;
        #2 clk = 1;
        #2 clk = 0;
        #2 clk = 1;
        #2 clk = 0;
        #2 clk = 1;
        #2 clk = 0;
        #2 clk = 1;
        #2 clk = 0;
        #2 clk = 1;
        #2 clk = 0;
        #2 clk = 1;
        #2 clk = 0;
        #2 clk = 1;
        #2 clk = 0;
        #2 clk = 1;
        #2 clk = 0;
        #2 clk = 1;
        #2 clk = 0;
        #2 clk = 1;
        #2 clk = 0;
        #2 clk = 1;
        #2 clk = 0;
        #1 $finish;
    end
    initial begin
        $dumpfile("ejercicio05_tb.vcd");
        $dumpvars(0,testbench);
    end
endmodule