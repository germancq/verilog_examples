/**
 * @ Author: German Cano Quiveu, germancq
 * @ Create Time: 2019-11-28 17:30:58
 * @ Modified by: Your name
 * @ Modified time: 2019-11-28 17:34:42
 * @ Description:
 */

module full_adder (
    input a,
    input b,
    input c_in,
    output c, 
    output s
);

    assign s = a ^ b ^ c_in;
    assign c = (b & c_in) | (a & c_in) | (a & b);

endmodule