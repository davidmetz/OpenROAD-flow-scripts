export DESIGN_NICKNAME = tinyRocket_openRam
export DESIGN_NAME = RocketTile
export PLATFORM    = nangate45

export VERILOG_FILES = ./designs/src/$(DESIGN_NICKNAME)/AsyncResetReg.v \
                       ./designs/src/$(DESIGN_NICKNAME)/ClockDivider2.v \
                       ./designs/src/$(DESIGN_NICKNAME)/ClockDivider3.v \
                       ./designs/src/$(DESIGN_NICKNAME)/plusarg_reader.v \
                       ./designs/src/$(DESIGN_NICKNAME)/freechips.rocketchip.system.TinyConfig.v \
                       ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/freechips.rocketchip.system.TinyConfig.v

export SDC_FILE      = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

export ADDITIONAL_LEFS = $(sort $(wildcard ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/*/*.lef))
#export ADDITIONAL_LEFS = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/openram_data_arrays_0_0_ext/openram_data_arrays_0_0_ext.lef \
#                         ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/openram_data_arrays_0_ext/openram_data_arrays_0_ext.lef \
#                         ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/openram_mem_ext/openram_mem_ext.lef

# use TT (typical) process corner
export ADDITIONAL_LIBS = $(sort $(wildcard ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/*/*TT_1p0V_25C.lib))
#export ADDITIONAL_LIBS = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/openram_data_arrays_0_0_ext/openram_data_arrays_0_0_ext_TT_1p0V_25C.lib \
#                         ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/openram_data_arrays_0_ext/openram_data_arrays_0_ext_TT_1p0V_25C.lib \
#                         ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/openram_mem_ext/openram_mem_ext_TT_1p0V_25C.lib

export ADDITIONAL_GDS = $(sort $(wildcard ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/*/*.gds))
#export ADDITIONAL_GDS = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/openram_data_arrays_0_0_ext/openram_data_arrays_0_0_ext.gds \
#                        ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/openram_data_arrays_0_ext/openram_data_arrays_0_ext.gds

$(info $$ADDITIONAL_LEFS is [${ADDITIONAL_LEFS}])
$(info $$ADDITIONAL_LIBS is [${ADDITIONAL_LIBS}])
$(info $$ADDITIONAL_GDS is [${ADDITIONAL_GDS}])


# These values must be multiples of placement site
# x=0.19 y=1.4
export DIE_AREA    = 0 0 924.92 799.4
export CORE_AREA   = 10.07 9.8 914.85 789.6
#export DIE_AREA    = 0 0 1900 1400
#export CORE_AREA   = 10.07 9.8 1889.93 1390.2

#export CORE_UTILIZATION = 30.0
# Core height / core width
#export CORE_ASPECT_RATIO = 1.0
# Core margin in um
#export CORE_MARGIN = 2.0

