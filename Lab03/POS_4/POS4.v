module POS4();
    reg a,b,c,d;

    wire nota,notb,notc,notd;
    wire m1,m4,m5,m9,m11,m12,m13,m14,m15;
    wire out;
    //entradas negadas
    not n1(nota,a);
    not n2(notb,b);
    not n3(notc,c); 
    not n4(notd,d);
    //maxterminos
    or O1(m1,a,b,c,notd);
    or O2(m4,a,notb,c,d);
    or O3(m5,a,notb,c,notd);
    or O4(m9,nota,b,c,notd);
    or O5(m11,nota,b,notc,notd);
    or O6(m12,nota,notb,c,d);
    or O7(m13,nota,notb,c,notd);
    or O8(m14,nota,notb,notc,d);
    or O9(m15,nota,notb,notc,notd);
    // multiplicacion
    and A1(out,m1,m4,m5,m9,m11,m12,m13,m14,m15);

    initial begin
        $display("A B C D | Y");
        $display("---------");
        $monitor("%b %b %b %b | %b", a, b,c,d, out);
        a=0;b=0;c=0;d=0;
            #1 d=1;
        #1 c=1;d=0;
        #1 d=1;
        #1 b=1;c=0;d=0;
        #1  d=1;
        #1  c=1;d=0;
        #1  d=1;
        #1 a=1;b=0;c=0;d=0;
        #1 d=1;
        #1 c=1;d=0;
        #1 d=1;
        #1 b=1;c=0;d=0;
        #1  d=1;
        #1  c=1;d=0;
        #1  d=1;
        #1 $finish;
    end
    initial 
    begin
      $dumpfile("POS4_tb.vcd"); 
      $dumpvars(0,POS4);
    end 
endmodule