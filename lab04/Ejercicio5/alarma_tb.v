module testbench();
    reg sistema,ventana,movimiento;
    wire alarma1;
    wire alarma2;
    wire alarma3;

    AlarmaPOS  A1(sistema,ventana,movimiento,alarma1);
    AlarmaSOP  A2(sistema,ventana,movimiento,alarma2);
    AlarmaKarnaught A3(sistema,ventana,movimiento,alarma3);

    initial begin
        #2
        $display("---------------------Sistema de alarma----------------------------");
        $display("| Sistema ventana/puerta  Sensor movimiento  |  POS   SOP  Reducida");
        $display("| ------- --------------  -----------------  |  ---   ---  --------");
        $monitor("|   %b         %b              %b               |   %b    %b    %b ",sistema,ventana,movimiento,
        alarma1,alarma2, alarma3);
        sistema= 0; ventana=0; movimiento=0;
        #1 movimiento=1;
        #1 ventana=1; movimiento=0;
        #1 movimiento=1;
        #1 sistema= 1; ventana=0; movimiento=0;
        #1 movimiento=1;
        #1 ventana=1; movimiento=0;
        #1 movimiento=1;
        #1 $finish;
    end

    initial begin
        $dumpfile("alarma_tb.vcd");
        $dumpvars(0,testbench);
    end
endmodule