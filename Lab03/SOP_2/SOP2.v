module  POS2();
    reg a,b,c;
    wire nota,notb,notc;
    wire m1,m6,m7;
    wire out;

    //entradas negadas
    not N1(nota,a);
    not N2(notb,b);
    not N3(notc,c);
    //minterminos
    and A1(m1,nota,notb,c);
    and A2(m6,a,b,notc);
    and A3(m7,a,b,c);
    // suma
    or O1(out,m1,m6,m7);
    
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
    initial begin
      $dumpfile("SOP2_tb.vcd"); 
      $dumpvars(0,SOP2);
    end 
endmodule