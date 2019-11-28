/**
 * @ Author: German Cano Quiveu, germancq
 * @ Create Time: 2019-11-28 17:35:04
 * @ Modified by: Your name
 * @ Modified time: 2019-11-28 17:38:47
 * @ Description:
 */

module 4_bit_adder(
    input [3:0] a,
    input [3:0] b,
    output [3:0] s,
    output c
);
    wire carry_from_bit_0;
    wire carry_from_bit_1;
    wire carry_from_bit_2;

    half_adder h0(
        .a(a[0]),
        .b(b[0]),
        .c(carry_from_bit_0),
        .s(s[0])
    );

    full_adder f1(
        .a(a[1]),
        .b(b[1]),
        .c_in(carry_from_bit_0),
        .c(carry_from_bit_1),
        .s(s[1])
    );

    full_adder f2(
        .a(a[2]),
        .b(b[2]),
        .c_in(carry_from_bit_1),
        .c(carry_from_bit_2),
        .s(s[2])
    );

    full_adder f3(
        .a(a[3]),
        .b(b[3]),
        .c_in(carry_from_bit_2),
        .c(c),
        .s(s[3])
    );



endmodule