/**
 * @ Author: German Cano Quiveu, germancq
 * @ Create Time: 2019-11-28 17:30:49
 * @ Modified by: Your name
 * @ Modified time: 2019-11-28 17:32:51
 * @ Description:
 */


module half_adder(
    input a,
    input b,
    output c,
    output s
);

    assign s = a ^ b;
    assign c = a & b;

endmodule