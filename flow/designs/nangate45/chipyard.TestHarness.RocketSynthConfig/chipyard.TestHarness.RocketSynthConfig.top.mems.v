module data_arrays_0_ext( // @[anonymous source 2:2]
  input  [8:0]   RW0_addr, // @[anonymous source 3:4]
  input          RW0_clk, // @[anonymous source 4:4]
  input  [255:0] RW0_wdata, // @[anonymous source 5:4]
  output [255:0] RW0_rdata, // @[anonymous source 6:4]
  input          RW0_en, // @[anonymous source 7:4]
  input          RW0_wmode, // @[anonymous source 8:4]
  input  [31:0]  RW0_wmask // @[anonymous source 9:4]
);
  openram_data_arrays_0_ext sram(
    .clk0(RW0_clk),// clock
    .csb0(!RW0_en),// active low chip select
    .web0(!RW0_wmode),// active low write control
    .wmask0(RW0_wmask),
    .addr0(RW0_addr),
    .din0(RW0_wdata),
    .dout0(RW0_rdata)
  );
endmodule
module tag_array_ext( // @[anonymous source 270:2]
  input  [5:0]  RW0_addr, // @[anonymous source 271:4]
  input         RW0_clk, // @[anonymous source 272:4]
  input  [87:0] RW0_wdata, // @[anonymous source 273:4]
  output [87:0] RW0_rdata, // @[anonymous source 274:4]
  input         RW0_en, // @[anonymous source 275:4]
  input         RW0_wmode, // @[anonymous source 276:4]
  input  [3:0]  RW0_wmask // @[anonymous source 277:4]
);
  openram_tag_array_ext sram(
    .clk0(RW0_clk),// clock
    .csb0(!RW0_en),// active low chip select
    .web0(!RW0_wmode),// active low write control
    .wmask0(RW0_wmask),
    .addr0(RW0_addr),
    .din0(RW0_wdata),
    .dout0(RW0_rdata)
  );
endmodule
module tag_array_0_ext( // @[anonymous source 314:2]
  input  [5:0]  RW0_addr, // @[anonymous source 315:4]
  input         RW0_clk, // @[anonymous source 316:4]
  input  [83:0] RW0_wdata, // @[anonymous source 317:4]
  output [83:0] RW0_rdata, // @[anonymous source 318:4]
  input         RW0_en, // @[anonymous source 319:4]
  input         RW0_wmode, // @[anonymous source 320:4]
  input  [3:0]  RW0_wmask // @[anonymous source 321:4]
);
  openram_tag_array_0_ext sram(
    .clk0(RW0_clk),// clock
    .csb0(!RW0_en),// active low chip select
    .web0(!RW0_wmode),// active low write control
    .wmask0(RW0_wmask),
    .addr0(RW0_addr),
    .din0(RW0_wdata),
    .dout0(RW0_rdata)
  );
endmodule
module data_arrays_0_0_ext( // @[anonymous source 358:2]
  input  [8:0]   RW0_addr, // @[anonymous source 359:4]
  input          RW0_clk, // @[anonymous source 360:4]
  input  [127:0] RW0_wdata, // @[anonymous source 361:4]
  output [127:0] RW0_rdata, // @[anonymous source 362:4]
  input          RW0_en, // @[anonymous source 363:4]
  input          RW0_wmode, // @[anonymous source 364:4]
  input  [3:0]   RW0_wmask // @[anonymous source 365:4]
);
  openram_data_arrays_0_0_ext sram(
    .clk0(RW0_clk),// clock
    .csb0(!RW0_en),// active low chip select
    .web0(!RW0_wmode),// active low write control
    .wmask0(RW0_wmask),
    .addr0(RW0_addr),
    .din0(RW0_wdata),
    .dout0(RW0_rdata)
  );
endmodule
