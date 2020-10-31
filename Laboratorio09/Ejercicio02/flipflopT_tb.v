module testbench();

    wire q;
    reg enable,clk,reset;


    FlipFlopT FFt(enable,reset,clk,q);

    initial clk = 0;

    always  #1 clk = ~clk;

    initial begin
        reset = 0; enable = 0;
        #1 reset = 1;
        #1 reset = 0;
        #2 enable = 1;
        #50 enable = 0;reset =1;
        #2  enable = 1;
        #4  reset = 0;
        #10 $finish;

    end


    initial begin
        $dumpfile("flipflopT_tb.vcd");
        $dumpvars(0,testbench);
    end

endmodule