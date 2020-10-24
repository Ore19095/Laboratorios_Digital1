module testbench();

    reg[11:0] direccion;
    wire[7:0] dato;

    Memory mem(direccion,dato);

    initial begin
        $display("| Direccion |  Dato");
        $display("-------------------");
        $monitor(" |     %h   |  %h",direccion, dato);
    end

    initial begin
        direccion = 12'h0;
        #2  direccion = 12'h1;
        #2  direccion = 12'h2;
        #2  direccion = 12'h3;
        #2  direccion = 12'h67;
        #2  direccion = 12'h68;
        #2  direccion = 12'h69;
        #2  direccion = 12'h6a;
        #2  direccion = 12'h6b;
        #2  direccion = 12'h6c;

    end


endmodule