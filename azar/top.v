/**
 * @ Author: German Cano Quiveu, germancq
 * @ Create Time: 2019-11-13 16:53:51
 * @ Modified by: Your name
 * @ Modified time: 2019-11-13 17:02:59
 * @ Description:
 */

module top(
    input a,
    input b,
    input c,
    output f
);

    wire a_negated;
    wire x;
    wire y;

    nand_gate gate_0(
        .a(a),
        .b(a),
        .c(a_negated)
    );

    nand_gate gate_1(
        .a(a),
        .b(b),
        .c(x)
    );

    nand_gate gate_2(
        .a(a_negated),
        .b(c),
        .c(y)
    );

    nand_gate gate_3(
        .a(x),
        .b(y),
        .c(f)
    );

endmodule