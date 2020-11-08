current_dir = $(shell pwd)
CONFIG ?= $(current_dir)/chipyard.TestHarness.RocketSynthConfig.top.mems.conf

OPENRAM_HOME:=$(HOME)/git/OpenRAM/compiler
export OPENRAM_HOME
OPENRAM_TECH:=$(HOME)/git/OpenRAM/technology
export OPENRAM_TECH
FREEPDK45:=$(HOME)/git/FreePDK45
export FREEPDK45

gen_config = $(current_dir)/gen_config.py
rename_lef_metal_layers = $(current_dir)/rename_lef_metal_layers.py
config_dir = $(current_dir)/configs
sram_dir = $(current_dir)/srams
configs = $(wildcard $(config_dir)/*)
srams = $(patsubst $(config_dir)/%,$(sram_dir)/%,$(configs))

configs: $(gen_config) $(CONFIG)
	rm -rf $(config_dir)
	mkdir -p $(config_dir)
	$(gen_config) $(CONFIG)

$(configs): configs
$(sram_dir)/%: $(config_dir)/% 
	mkdir -p $(sram_dir)
	$(OPENRAM_HOME)/openram.py $<

srams: configs $(srams)

rename: srams
	$(rename_lef_metal_layers)
    # need to chenge permissions for some reason
    chmod -R 775 $(sram_dir) $(config_dir)
    

.PHONY: configs srams rename
