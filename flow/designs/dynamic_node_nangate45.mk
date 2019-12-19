export DESIGN_NAME = dynamic_node_top_wrap
export PLATFORM    = nangate45

export VERILOG_FILES = ./designs/src/dynamic_node/dynamic_node.pickle.v
export SDC_FILE      = ./designs/src/dynamic_node/design.sdc

export MERGED_LEF = ./platforms/nangate45/NangateOpenCellLibrary.mod.lef
export LIB_FILES  = ./platforms/nangate45/NangateOpenCellLibrary_typical.lib
export GDS_FILES  = $(wildcard ./platforms/nangate45/gds/*)

# These values must be multiples of placement site
# x=0.19 y=1.4
export DIE_AREA    = 0 0 450.17 450
export CORE_AREA   = 10.07 11.2 440.29 440.2
export CORE_WIDTH  = 330.22
export CORE_HEIGHT = 329

export CLOCK_PERIOD = 15.000
export CLOCK_PORT   = clk

export PLACE_DENSITY = 0.50
