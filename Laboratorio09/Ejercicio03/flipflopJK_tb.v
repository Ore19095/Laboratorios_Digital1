module testbench();

    reg clk,enable,reset, j,k;
    wire q;

    FlipFlopJK FF(j,k,enable,reset,clk,q);

  initial clk = 0;

    always  #1 clk = ~clk;

    initial begin
        #1 enable =0; reset=0;j=0;k=0;
        #1 reset = 1;
        #1 reset = 0;
        #1 enable =1;
        #4 j=1;
        #4 j=0;
        #8 k=1;
        #8 k=0;
        #4 j=1;k=1;
        #14 j=0;k=0;
        #10 $finish;

    end


    initial begin
        $dumpfile("flipflopJK_tb.vcd");
        $dumpvars(0,testbench);
    end

endmodule