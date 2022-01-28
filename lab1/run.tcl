## reading liberty model
read_celllib osu018_stdcells.lib
## reading netlist model
read_verilog simple.v
## Parsing constraints
read_sdc simple.sdc
## Removing common path pessimism if there
cppr -enable
dump_taskflow
## report timing reports for 5 paths
report_timing -num_paths 5
dump_graph
