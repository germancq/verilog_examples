/**
 * @ Author: German Cano Quiveu, germancq
 * @ Create Time: 2019-11-28 17:39:38
 * @ Modified by: Your name
 * @ Modified time: 2019-11-28 17:54:15
 * @ Description:
 */

module top(
    input mclk,
    output [6:0] seg,
    output [3:0] an,
    input [3:0] a,
    input [3:0] b
);

    wire [3:0] suma;
    wire carry;
    4_bit_adder sumador(
        .a(a),
        .b(b),
        .s(suma),
        .c(carry)
    );

    wire [4:0] suma_con_carry;
    assign suma_con_carry = {carry,suma};

    wire [15:0] datos_pantalla;
    assign datos_pantalla = {suma_con_carry,a,b};

    display pantalla(
        .clk(mclk),
        .rst(1'b0),
        .div_value(5'd20),
        .din(datos_pantalla),
        .an(an),
        .seg(seg)
    );

endmodule