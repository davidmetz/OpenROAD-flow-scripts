#!/usr/bin/env python3
import glob
import re
import os

files = glob.glob("./srams/openram*/*.lef")
for file in files:
    print(f"processing {file}")
    with open(file) as f:
        text = f.read()
    new_text = re.sub(r"LAYER\s+m(\d)", r"LAYER metal\1", text)
    os.rename(file, file+".bak")
    with open(file, "w") as f:
        f.write(new_text)
