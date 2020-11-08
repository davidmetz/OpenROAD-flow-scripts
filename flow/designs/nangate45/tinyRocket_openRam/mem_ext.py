
word_size = 32
num_words = 1024
write_size = 8

# using rw + r because w seems to cause issues
num_rw_ports = 1
num_r_ports = 1
num_w_ports = 0

# no idea what this does - but it breaks things
local_array_size = 32

tech_name = "freepdk45"
nominal_corners_only = False
process_corners = ["TT"]
supply_voltages = [1.0]
temperatures = [25]

route_supplies = False
check_lvsdrc = False

output_path = "openram_mem_ext"
output_name = "openram_mem_ext"
