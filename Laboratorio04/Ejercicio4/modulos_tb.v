module testbench();
//variables para ejercicio1tabla1
    reg a1_1, a1_2, a1_3;
    wire  y1_1;
//variables par ejercicio1tabla2
    reg a2_1, a2_2, a2_3;
    wire y1_2;
//variables par ejercicio1tabla3
    reg a3_1, a3_2, a3_3,a3_4;
    wire y1_3;
////variables par ejercicio1tabla4
    reg a4_1, a4_2, a4_3,a4_4;
    wire y1_4;
//variebles ejercicio2ecuacion1
    reg b1_1,b1_2,b1_3,b1_4;
    wire y2_1;
//variables ejericio3ecuacion2
    reg b2_1,b2_2,b2_3;
    wire y2_2;
//variebles ejercicio2ecuacion3
    reg b3_1,b3_2,b3_3,b3_4;
    wire y2_3;
    //variables ejericio3ecuacion2
    reg b4_1,b4_2,b4_3;
    wire y2_4;

    Ejercicio1Tabla1  Tabla1(a1_1,a1_2,a1_3,y1_1);
    Ejercicio1Tabla2  Tabla2(a2_1,a2_2,a2_3,y1_2);
    Ejercicio1Tabla3  Tabla3(a3_1,a3_2,a3_3,a3_4,y1_3);
    Ejercicio1Tabla4  Tabla4(a4_1,a4_2,a4_3,a4_4,y1_4);

    Ejercicio2Ecuacion1 Ecua1(b1_1,b1_2,b1_3,b1_4,y2_1);
    Ejercicio2Ecuacion2 Ecua2( b2_1,b2_2,b2_3,y2_2);
    Ejercicio2Ecuacion3 Ecua3(b3_1,b3_2,b3_3,b3_4,y2_3);
    Ejercicio2Ecuacion4 Ecua4( b4_1,b4_2,b4_3,y4_2);
    //encargado del display de los modulos del ejercicio 1
    initial begin
        $display("-------------------------Ejercicio 1-----------------------------");
        $display("| \t\t---Tabla 1---\t ---Tabla 2---  \t\t|");
        $display("| \t\t-------------\t -------------  \t\t|");
        $display("| \t\t  A B C | Y  \t   A B C | Y    \t\t|");
        $monitor("| \t\t  %b %b %b | %b  \t   %b %b %b | %b    \t\t|",a1_1, a1_2,a1_3, y1_1,a2_1,a2_2,a2_3,y1_2);
        #7
        $display("| \t\t---Tabla 3---\t ---Tabla 4---  \t\t|");
        $display("| \t\t-------------\t -------------  \t\t|");
        $display("| \t\t A B C D | Y\t  A B C D | Y    \t\t|");
        $monitor("| \t\t %b %b %b %b | %b \t  %b %b %b %b | %b    \t\t|",a3_1,a3_2,a3_3,a3_4,y1_3,a4_1,a4_2,a4_3,a4_4, y1_4);
        #16
        $display("-------------------------Ejercicio 2-----------------------------");
        $display("| \t---Ecuacion 1---\t ---Ecuacion 3---  \t\t|");
        $display("| \t----------------\t ----------------  \t\t|");
        $display("| \t  A B C D | Y   \t    A B C D | Y    \t\t|");
        $monitor("| \t  %b %b %b %b | %b   \t    %b %b %b %b | %b     \t\t|",b1_1, b1_2, b1_3, b1_4, y2_1, b3_1,b3_2,b3_3,b3_4,y2_3);
        #16
        $display("| \t---Ecuacion 2---\t ---Ecuacion 4---  \t\t|");
        $display("| \t----------------\t ----------------  \t\t|");
        $display("| \t  A B C | Y     \t   A B C | Y       \t\t|");
        $monitor("| \t  %b %b %b | %b     \t   %b %b %b | %b       \t\t|",b2_1,b2_2,b2_3,y2_2, b4_1,b4_2,b4_3,y4_2);
        
    end

    initial begin// tabla 1 ej 1
        a1_1=0; a1_2=0 ; a1_3=0;
        #1 a1_3=1;
        #1 a1_2=1; a1_3=0;
        #1 a1_3=1;
        #1 a1_1=1; a1_2=0 ; a1_3=0;
        #1 a1_3=1;
        #1 a1_2=1; a1_3=0;
        #1 a1_3=1;
    end

    initial begin //tabla 2 ej 1
            a2_1=0; a2_2=0 ; a2_3=0;
        #1 a2_3=1;
        #1 a2_2=1; a2_3=0;
        #1 a2_3=1;
        #1 a2_1=1; a2_2=0 ; a2_3=0;
        #1 a2_3=1;
        #1 a2_2=1; a2_3=0;
        #1 a2_3=1;
    end

    initial begin// tabla 3 ej 1
        #7 //se deja tiempo para que se ejecute lo de tabla 1 y 2 del ejercicio 1
        a3_1=0; a3_2=0; a3_3=0; a3_4=0;
        #1 a3_4=1;
        #1 a3_3=1; a3_4=0;
        #1 a3_4=1;
        #1 a3_2=1; a3_3=0; a3_4=0;
        #1 a3_4=1;
        #1 a3_3=1; a3_4=0;
        #1 a3_4=1;
        #1 a3_1=1; a3_2=0; a3_3=0; a3_4=0;
        #1 a3_4=1;
        #1 a3_3=1; a3_4=0;
        #1 a3_4=1;
        #1 a3_2=1; a3_3=0; a3_4=0;
        #1 a3_4=1;
        #1 a3_3=1; a3_4=0;
        #1 a3_4=1; 
    end
    initial begin// tabla 4 ej 1
        #7 //se deja tiempo para que se ejecute lo de tabla 1 y 2 del ejercicio 1
        a4_1=0; a4_2=0; a4_3=0; a4_4=0;
        #1 a4_4=1;
        #1 a4_3=1; a4_4=0;
        #1 a4_4=1;
        #1 a4_2=1; a4_3=0; a4_4=0;
        #1 a4_4=1;
        #1 a4_3=1; a4_4=0;
        #1 a4_4=1;
        #1 a4_1=1; a4_2=0; a4_3=0; a4_4=0;
        #1 a4_4=1;
        #1 a4_3=1; a4_4=0;
        #1 a4_4=1;
        #1 a4_2=1; a4_3=0; a4_4=0;
        #1 a4_4=1;
        #1 a4_3=1; a4_4=0;
        #1 a4_4=1;
    end

    initial begin// ejercicio 2 ecuacion 1
       #23
        b1_1=0; b1_2=0; b1_3=0; b1_4=0;
        #1 b1_4=1;
        #1 b1_3=1; b1_4=0;
        #1 b1_4=1;
        #1 b1_2=1; b1_3=0; b1_4=0;
        #1 b1_4=1;
        #1 b1_3=1; b1_4=0;
        #1 b1_4=1;
        #1 b1_1=1; b1_2=0; b1_3=0; b1_4=0;
        #1 b1_4=1;
        #1 b1_3=1; b1_4=0;
        #1 b1_4=1;
        #1 b1_2=1; b1_3=0; b1_4=0;
        #1 b1_4=1;
        #1 b1_3=1; b1_4=0;
        #1 b1_4=1;
    end

    initial begin //ejercicio 2 ecuacion 3
        #23
        b3_1=0; b3_2=0; b3_3=0; b3_4=0;
        #1 b3_4=1;
        #1 b3_3=1; b3_4=0;
        #1 b3_4=1;
        #1 b3_2=1; b3_3=0; b3_4=0;
        #1 b3_4=1;
        #1 b3_3=1; b3_4=0;
        #1 b3_4=1;
        #1 b3_1=1; b3_2=0; b3_3=0; b3_4=0;
        #1 b3_4=1;
        #1 b3_3=1; b3_4=0;
        #1 b3_4=1;
        #1 b3_2=1; b3_3=0; b3_4=0;
        #1 b3_4=1;
        #1 b3_3=1; b3_4=0;
        #1 b3_4=1;
        
    end
    initial begin // ejercicio 2 ecuacion 2
        #39
        b2_1 =0 ; b2_2 = 0; b2_3=0 ; 
        #1 b2_3= 1;
        #1 b2_2 = 1; b2_3=0;
        #1 b2_3 = 1;
        #1 b2_1 =1 ; b2_2 = 0; b2_3=0 ; 
        #1 b2_3= 1;
        #1 b2_2 = 1; b2_3=0;
        #1 b2_3 = 1;
        
    end

    initial begin
        #39
        b4_1 =0 ; b4_2 = 0; b4_3=0 ; 
        #1 b4_3= 1;
        #1 b4_2 = 1; b4_3=0;
        #1 b4_3 = 1;
        #1 b4_1 = 1 ; b4_2 = 0; b4_3=0 ; 
        #1 b4_3= 1;
        #1 b4_2 = 1; b4_3=0;
        #1 b4_3 = 1;
        
    end
    initial begin
        $dumpfile("modulos_tb.vcd");
        $dumpvars(0,testbench);
    end
    initial #47 $finish;
endmodule