read_celllib -early s27_Early.lib
read_celllib -late s27_Late.lib
read_verilog s27.v
read_sdc s27.sdc
cppr -enable
report_timing
report_slack -pin F2:D -rise -late
#report_slack -pin F2:D -pin U6:A1 -rise -late
#report_slack -pin F2:D -pin U6:A2 -rise -late
#report_slack -pin F2:D -pin U5:A1 -rise -late
#report_slack -pin F2:D -pin U5:A2 -rise -late
