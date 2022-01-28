read_celllib -early s27_Early.lib
read_celllib -late s27_Late.lib
read_verilog s27.v
read_sdc s27.sdc
cppr -enable
report_timing

##Slack= (Required AT at R1:RN) - (Actual AT at R1:CK)
report_at -pin R1:RN -late -rise
report_at -pin R1:CK -early -rise
