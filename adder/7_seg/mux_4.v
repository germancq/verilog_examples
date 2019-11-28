/**
 * @Author: German Cano Quiveu <germancq>
 * @Date:   2019-03-01T13:45:04+01:00
 * @Email:  germancq@dte.us.es
 * @Filename: mux_8.v
 * @Last modified by:   germancq
 * @Last modified time: 2019-03-01T17:10:58+01:00
 */
module mux_4 #(parameter DATA_WIDTH=4)
(
  input [DATA_WIDTH-1:0] in1,
 	input [DATA_WIDTH-1:0] in2,
  input [DATA_WIDTH-1:0] in3,
  input [DATA_WIDTH-1:0] in4,
 	output [DATA_WIDTH-1:0] out,
 	input [1:0] ctl
);

wire [DATA_WIDTH-1:0] out_mux_000;

generic_mux #(.DATA_WIDTH(DATA_WIDTH)) mux_000(
  .a(in1),
  .b(in2),
  .c(out_mux_000),
  .ctl(ctl[0])
  );

wire [DATA_WIDTH-1:0] out_mux_001;

generic_mux #(.DATA_WIDTH(DATA_WIDTH)) mux_001(
  .a(in3),
  .b(in4),
  .c(out_mux_001),
  .ctl(ctl[0])
  );


wire [DATA_WIDTH-1:0] out_mux_010;

generic_mux #(.DATA_WIDTH(DATA_WIDTH)) mux_010(
  .a(out_mux_000),
  .b(out_mux_001),
  .c(out),
  .ctl(ctl[1])
  );


endmodule
