/**
 * @ Author: German Cano Quiveu, germancq
 * @ Create Time: 2019-11-28 17:56:05
 * @ Modified by: Your name
 * @ Modified time: 2019-11-28 18:02:30
 * @ Description:
 */

module tb_adder;

    wire [3:0] s;
    wire c;
    reg [3:0] a;
    reg [3:0] b;

    4_bit_adder uut(
        .a(a),
        .b(b),
        .s(s),
        .c(c)
    );

    always #10 a = a + 1;
    always #160 b = b + 1;

    initial begin
        a = 4'b0000;
        b = 4'b0000;
        #2600;
        $finish;
    end
endmodule    
