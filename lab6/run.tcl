read_celllib -early s27_Early.lib
read_celllib -late s27_Late.lib
read_verilog s27.v
read_sdc s27.sdc
cppr -enable
report_timing
## Setup Slack = (Early AT at CG:A2 + ClockPeriod) - (Late AT at CG:A1)
#Setup Slack= 13.1
report_at -pin CG:A1 -late -rise
report_at -pin CG:A2 -early -rise
## Hold Slack = (Late AT at CG:A2 + ClockPeriod) - (Early AT at CG:A1)
#Hold Slack= -362
report_at -pin CG:A1 -early -rise
report_at -pin CG:A2 -late -rise
