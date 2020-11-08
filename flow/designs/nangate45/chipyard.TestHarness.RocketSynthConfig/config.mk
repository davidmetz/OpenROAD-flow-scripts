export DESIGN_NICKNAME = chipyard.TestHarness.RocketSynthConfig
export DESIGN_NAME = RocketTile
export PLATFORM    = nangate45

export VERILOG_FILES = ./designs/src/$(DESIGN_NICKNAME)/EICG_wrapper.v \
                       ./designs/src/$(DESIGN_NICKNAME)/IOCell.v \
                       ./designs/src/$(DESIGN_NICKNAME)/plusarg_reader.v \
                       ./designs/src/$(DESIGN_NICKNAME)/chipyard.TestHarness.RocketSynthConfig.top.v \
                       ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/chipyard.TestHarness.RocketSynthConfig.top.mems.v
#                       ./designs/src/$(DESIGN_NICKNAME)/ClockDividerN.sv \

export SDC_FILE      = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

export ADDITIONAL_LEFS = $(sort $(wildcard ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/srams/*/*.lef))

# use TT (typical) process corner
export ADDITIONAL_LIBS = $(sort $(wildcard ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/srams/*/*TT_1p0V_25C.lib))

export ADDITIONAL_GDS = $(sort $(wildcard ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/srams/*/*.gds))

$(info $$ADDITIONAL_LEFS is [${ADDITIONAL_LEFS}])
$(info $$ADDITIONAL_LIBS is [${ADDITIONAL_LIBS}])
$(info $$ADDITIONAL_GDS is [${ADDITIONAL_GDS}])


# These values must be multiples of placement site
# x=0.19 y=1.4
#export DIE_AREA    = 0 0 924.92 799.4
#export CORE_AREA   = 10.07 9.8 914.85 789.6
export DIE_AREA    = 0 0 1900 1400
export CORE_AREA   = 10.07 9.8 1889.93 1390.2

#export CORE_UTILIZATION = 30.0
# Core height / core width
#export CORE_ASPECT_RATIO = 1.0
# Core margin in um
#export CORE_MARGIN = 2.0

