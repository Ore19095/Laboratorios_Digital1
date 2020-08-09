module POS3();
    reg a,b,c,d;

    wire nota,notb,notc,notd;
    wire m4,m5,m6,m7,m9,m11,m12,m13,m15;
    wire out;

    //entradas negadas
    not n1(nota,a);
    not n2(notb,b);
    not n3(notc,c);
    not n4(notd,d);

    //maxterminos
    or o1(m4,a,notb,c,d);
    or o2(m5,a,notb,c,notd);
    or o3(m6,a,notb,notc,d);
    or o4(m7,a,notb,notc,notd);
    or o5(m9,nota,b,c,notd);
    or o6(m11,nota,b,notc,notd);
    or o7(m12,nota,notb,c,d);
    or o8(m13,nota,notb,c,notd);
    or o9(m15,nota,notb,notc,notd);
    // multiplicacion

    and a1(out,m4,m5,m6,m7,m9,m11,m12,m13,m15);

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
      $dumpfile("POS3_tb.vcd"); 
      $dumpvars(0,POS3);
    end 
endmodule