/**
 * @ Author: German Cano Quiveu, germancq
 * @ Create Time: 2019-11-13 16:53:57
 * @ Modified by: Your name
 * @ Modified time: 2019-11-14 12:23:02
 * @ Description:
 */

module nand_gate (
    a,
    b,
    c
);

    parameter N = 1;

    input [N-1:0] a;
    input [N-1:0] b;
    output [N-1:0] c;

    assign c = ~(a & b);

endmodule