module SOP3();
    reg a,b,c,d;

    wire nota,notb,notc,notd;
    wire m0,m1,m2,m3,m8,m10,m14;
    wire out;

    //entradas negadas
    not n1(nota,a);
    not n2(notb,b);
    not n3(notc,c);
    not n4(notd,d);
    //minterminos
    and a1(m0,nota,notb,notc,notd);
    and a2(m1,nota,notb,notc,d);
    and a3(m2,nota,notb,c,notd);
    and a4(m3,nota,notb,c,d);
    and a5(m8,a,notb,notc,notd);
    and a6(m10,a,notb,c,notd);
    and a7(m14,a,b,c,notd);
    // suma
    or o1(out,m0,m1,m2,m3,m8,m10,m14);

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
    initial begin
      $dumpfile("SOP3_tb.vcd"); 
      $dumpvars(0,SOP3);
    end 
endmodule