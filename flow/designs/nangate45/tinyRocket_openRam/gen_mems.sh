#!/usr/bin/env bash
set -ex
export OPENRAM_HOME="$HOME/git/OpenRAM/compiler"
export OPENRAM_TECH="$HOME/git/OpenRAM/technology"
export FREEPDK45="$HOME/git/FreePDK45"

$OPENRAM_HOME/openram.py data_arrays_0_0_ext.py
$OPENRAM_HOME/openram.py data_arrays_0_ext.py
$OPENRAM_HOME/openram.py mem_ext.py
