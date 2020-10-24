module Alu(input wire [3:0] A,B, input wire [2:0] operation, output reg [3:0] out  );

        always  @* begin
            case(operation)

                3'b000: out <=  A & B;
                3'b001: out <=  A | B;
                3'b010: out <=  A + B;
                3'b011: out <= 0;
                3'b100: out <= A & ~B;
                3'b101: out <= A | ~B;
                3'b110: out <= A - B;
                3'b111: out <=   A<B;

            endcase
        end

endmodule