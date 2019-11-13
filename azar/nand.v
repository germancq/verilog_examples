/**
 * @ Author: German Cano Quiveu, germancq
 * @ Create Time: 2019-11-13 16:53:57
 * @ Modified by: Your name
 * @ Modified time: 2019-11-13 16:55:38
 * @ Description:
 */

module nand_gate (
    input [N-1:0] a,
    input [N-1:0] b,
    output [N-1:0] c
);

    parameter N = 1;

    assign c = ~(a & b);

endmodule