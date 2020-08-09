module SOP1();
  reg A,B,C;

  wire  m0,m2,m5,m4,m7;
  wire  notA, notB, notC;
  wire salida;
  //se niegan las entradas
  not U1(notA,A);
  not U2(notB,B);
  not U3(notC,C);

  //  uso de los minterminos
  and A1(m0,notA,notB,notC);
  and A2(m2,notA,B,notC);
  and A3(m4,A,notB,notC);
  and A4(m5,A,notB,C);
  and A5(m7,A,B,C);

  or(salida, m7,m5,m4,m2,m0);
  initial begin   
    $display("A B C | Y");
    $display("---------");
    $monitor("%b %b %b | %b", A, B,C, salida);
    A=0;
    B=0;
    C=0;
    #1  C=1;
    #1  B=1; C=0;
    #1  C=1;
    #1  A=1; B=0; C=0;
    #1  C=1;
    #1  B=1; C=0;
    #1  C=1;
    #1  $finish;
  end
  initial 
    begin
      $dumpfile("SOP1_tb.vcd"); 
      $dumpvars(0,SOP1);
    end 
endmodule
