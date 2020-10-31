module testbench();

    reg [3:0] d;
    reg [1:0] d1;
    reg d2;
    reg enable,reset,clk;
    wire [3:0]  q; 
    wire [1:0] q1;
    wire q2;

    FlipFlopD4b FF(d,enable,reset,clk,q);
    FlipFlopD2b ff1(d1,enable,reset,clk,q1);
    FlipFlopD1b ff2(d2,enable,reset,clk,q2);
    initial clk = 0;

    always #1 clk = ~clk;


    initial begin
        
        reset = 0; enable = 0; d = 0;
        #1 reset = 1;
        #2 reset = 0;
        #2 enable = 1;
        #3  d = 4'b0101;
        #2 enable = 0;
        #2 d = 3;
        #2 d= 12;
        #4 enable = 1;
        //FF de 2 bits
        #2 d1 = 2;
        #4 enable = 0;
        #2  d1=1;
        #2  reset = 1;
        #2  reset= 0;
        #2  d1 = 3;
        #2  enable = 1;
        //FF de 1 bit
        #2  enable = 0;
        #1 reset =1;
        #1  reset = 0;
        #2  d2 = 1;
        #2  enable = 1;
        #4  d2 = 0;

        #5 $finish; 


    end

initial begin
        $dumpfile("flipflop_tb.vcd");
        $dumpvars(0,testbench);
    end

endmodule