module  POS2();
    reg a,b,c;
    wire M0,M2,M3,M4,M5;
    wire nota,notb,notc;
    wire out;

    //entradas negadas
    not N1(nota,a);
    not N2(notb,b);
    not N3(notc,c);

    //masterminos
    or O1(M0,a,b,c);
    or O2(M2,a,notb,c);
    or O3(M3,a,notb,notc);
    or O4(M4,nota,b,c);
    or O5(M5,nota,b,notc);
    //producto
    and A1(out,M0,M2,M3,M4,M5);
    
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
      $dumpfile("POS2_tb.vcd"); 
      $dumpvars(0,POS2);
    end 
endmodule