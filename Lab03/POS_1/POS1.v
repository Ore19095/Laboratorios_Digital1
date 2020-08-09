module POS1();
    reg a,b,c;

    wire M1,M3,M6;
    wire notA,notB,notC;
    wire out;
    //negaciones de las entradas
    not N1(notA,a);
    not N2(notB,b);
    not N3(notC,c);

    // maxterminos
    or O1(M1,a,b,notC);
    or O2(M3,a,notB,notC);
    or O3(M6,notA,notB,c);
    and A1(out,M1,M3,M6);

    initial begin
        $display("A B C | Y");
        $display("---------");
        $monitor("%b %b %b |%b",a,b,c,out);
        a=0; b=0; c=0;
        #1 c=1;
        #1  b=1; c=0;
        #1 c=1;
        #1  a=1; b=0; c=0;
        #1 c=1;
        #1 b=1;c=0;
        #1 c=1;
        #1 $finish;

    end
    initial 
    begin
      $dumpfile("POS1_tb.vcd"); 
      $dumpvars(0,POS1);
    end 

endmodule