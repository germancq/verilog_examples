/**
 * @Author: German Cano Quiveu <germancq>
 * @Date:   2019-03-01T13:39:19+01:00
 * @Email:  germancq@dte.us.es
 * @Filename: display.v
 * @Last modified by:   germancq
 * @Last modified time: 2019-03-01T15:40:34+01:00
 */
module display(
  input clk,
  input rst,
  input [5:0] div_value,
  input [15:0] din,
  output [3:0] an,
  output [6:0] seg
  );

wire [1:0] an_gen;
div_clk_module div_clk_module_inst(
  .clk(clk),
  .rst(rst),
  .div(div_value),
  .an_gen_o(an_gen)
  );

wire [3:0] mux_4_o;
mux_4 mux_inst(
  .in1(din[3:0]),
 	.in2(din[7:4]),
  .in3(din[11:8]),
  .in4(din[15:12]),
 	.out(mux_4_o),
 	.ctl(an_gen)
  );

dec_to_7_seg dec_to_7_seg_inst(
  .rst(rst),
  .din(mux_4_o),
  .seg(seg)
  );

an_gen an_gen_inst(
  .rst(rst),
  .an_gen_i(an_gen),
  .an(an)
  );

endmodule
