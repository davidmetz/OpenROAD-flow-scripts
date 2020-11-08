
module data_arrays_0_ext(
  input RW0_clk,
  input [5:0] RW0_addr,
  input RW0_en,
  input RW0_wmode,
  input [3:0] RW0_wmask,
  input [31:0] RW0_wdata,
  output [31:0] RW0_rdata
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


// # This is a very small array. Leaving is as synthesized

module tag_array_ext(
  input RW0_clk,
  input [1:0] RW0_addr,
  input RW0_en,
  input RW0_wmode,
  input [0:0] RW0_wmask,
  input [24:0] RW0_wdata,
  output [24:0] RW0_rdata
);

  reg reg_RW0_ren;
  reg [1:0] reg_RW0_addr;
  reg [24:0] ram [3:0];
  `ifdef RANDOMIZE_MEM_INIT
    integer initvar;
    initial begin
      #`RANDOMIZE_DELAY begin end
      for (initvar = 0; initvar < 4; initvar = initvar+1)
        ram[initvar] = {1 {$random}};
      reg_RW0_addr = {1 {$random}};
    end
  `endif
  integer i;
  always @(posedge RW0_clk)
    reg_RW0_ren <= RW0_en && !RW0_wmode;
  always @(posedge RW0_clk)
    if (RW0_en && !RW0_wmode) reg_RW0_addr <= RW0_addr;
  always @(posedge RW0_clk)
    if (RW0_en && RW0_wmode) begin
      for(i=0;i<1;i=i+1) begin
        if(RW0_wmask[i]) begin
          ram[RW0_addr][i*25 +: 25] <= RW0_wdata[i*25 +: 25];
        end
      end
    end
  `ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [31:0] RW0_random;
  `ifdef RANDOMIZE_MEM_INIT
    initial begin
      #`RANDOMIZE_DELAY begin end
      RW0_random = {$random};
      reg_RW0_ren = RW0_random[0];
    end
  `endif
  always @(posedge RW0_clk) RW0_random <= {$random};
  assign RW0_rdata = reg_RW0_ren ? ram[reg_RW0_addr] : RW0_random[24:0];
  `else
  assign RW0_rdata = ram[reg_RW0_addr];
  `endif

endmodule

module data_arrays_0_0_ext(
  input RW0_clk,
  input [5:0] RW0_addr,
  input RW0_en,
  input RW0_wmode,
  input [0:0] RW0_wmask,
  input [31:0] RW0_wdata,
  output [31:0] RW0_rdata
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

module mem_ext(
  input W0_clk,
  input [9:0] W0_addr,
  input W0_en,
  input [31:0] W0_data,
  input [3:0] W0_mask,
  input R0_clk,
  input [9:0] R0_addr,
  input R0_en,
  output [31:0] R0_data
);

  // This should be a true dual port RAM (1read and 1write) - use 1rw 1r RAM because openram is buggy


  openram_mem_ext sram(
    // Port 0: RW
    clk0(W0_clk), // clock
    csb0(!W0_en), // active low chip select
    web0(1'b0), // active low write control
    wmask0(W0_mask),
    addr0(W0_addr),
    din0(W0_data),
    //dout0(), // we use the rw as w
    // Port 1: R
    clk1(R0_clk), // clock
    csb1(!R0_en), // active low chip select
    addr1(R0_addr),
    dout1(R0_data)
  );


endmodule
