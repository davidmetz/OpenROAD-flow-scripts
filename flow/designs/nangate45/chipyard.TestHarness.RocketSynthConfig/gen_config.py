#!/usr/bin/env python3
import sys
import itertools

def chunked_iterable(iterable, size):
    it = iter(iterable)
    while True:
        chunk = tuple(itertools.islice(it, size))
        if not chunk:
            break
        yield chunk

if len(sys.argv) != 2:
    printf("no config input provided")
    exit(-1)
config_in = sys.argv[1]
with open(config_in) as f:
    for line in f:
        d = dict(chunked_iterable(line.split(), 2))
        print(d)
        d.setdefault("mask_gran", d["width"])
        ports = d["ports"].split(",")
        d["num_rw"] = 0
        d["num_r"] = 0
        d["num_w"] = 0
        for port in ports:
            if port == "read":
                d["num_r"] += 1
            elif port == "write":
                d["num_w"] += 1
            elif port == "mwrite":
                d["num_w"] += 1
            elif port == "rw":
                d["num_rw"] += 1
            elif port == "mrw":
                d["num_rw"] += 1
        text = """
word_size = {width}
num_words = {depth}
write_size = {mask_gran}

num_rw_ports = {num_rw}
num_r_ports = {num_r}
num_w_ports = {num_w}

# no idea what this does - but it breaks things
# local_array_size = 32

tech_name = "freepdk45"
nominal_corners_only = False
process_corners = ["TT"]
supply_voltages = [1.0]
temperatures = [25]

route_supplies = False
check_lvsdrc = False

output_path = "srams/openram_{name}"
output_name = "openram_{name}"
""".format(**d)
        with open("configs/"+d['name']+".py", 'w') as wf:
            wf.write(text)
