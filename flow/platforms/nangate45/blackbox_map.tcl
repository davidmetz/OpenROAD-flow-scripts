hierarchy -generate fakeram45_* o:rd_out i:addr_in i:we_in \
                               i:wd_in i:w_mask_in i:clk i:ce_in

#t inyRocket_openRam
hierarchy -generate openram_data_arrays_0_ext i:clk0 i:csb0 i:web0 i:wmask0 i:addr0 i:din0 o:dout0

hierarchy -generate openram_data_arrays_0_0_ext i:clk0 i:csb0 i:web0 i:wmask0 i:addr0 i:din0 o:dout0

hierarchy -generate openram_mem_ext i:clk0 i:csb0 i:web0 i:wmask0 i:addr0 i:din0 o:dout0 \
                                    i:clk1 i:csb1 i:addr1 o:dout1

# chipyard.TestHarness.RocketSynthConfig
hierarchy -generate openram_data_arrays_0_ext i:clk0 i:csb0 i:web0 i:wmask0 i:addr0 i:din0 o:dout0
hierarchy -generate openram_data_arrays_0_0_ext i:clk0 i:csb0 i:web0 i:wmask0 i:addr0 i:din0 o:dout0
hierarchy -generate openram_tag_array_ext i:clk0 i:csb0 i:web0 i:wmask0 i:addr0 i:din0 o:dout0
hierarchy -generate openram_tag_array_0_ext i:clk0 i:csb0 i:web0 i:wmask0 i:addr0 i:din0 o:dout0
