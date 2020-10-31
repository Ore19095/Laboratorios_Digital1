module testbench();

    reg [3:0] enable,in;
    wire [3:0] out;

    Triestate tris(in,enable,out);


    initial begin
        #1 $display("| Entrada |  Habilitado |  Salida");
        $display("---------------------------------");
        $monitor("|   %b  |    %b     |   %b ", in, enable, out);
    end

    initial begin
        enable =0; in = 15;
        #1 enable = 1;
        #1 enable = 2;
        #1 enable = 4;
        #1 in =4'b1010;
        #1  enable = 15;
        #1 in = 4'b1101;
        #1 enable = 4'b11;
        #1 in = 4'b1001;
        #1 enable = 15;
        #1 enable = 7;
        #12 $finish;
    end


endmodule 