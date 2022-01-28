read_celllib -early s27_Early.lib
read_celllib -late s27_Late.lib
read_verilog s27.v
read_sdc s27.sdc
## Try run with cppr -disable
cppr -enable
report_timing
report_at -pin U9:Z -rise -late
report_at -pin U9:Z -rise -early
