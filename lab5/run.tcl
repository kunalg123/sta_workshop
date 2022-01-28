read_celllib -early s27_Early.lib
read_celllib -late s27_Late.lib
read_verilog s27.v
read_sdc s27.sdc
## Try run with cppr -disable
cppr -enable
report_timing
report_at -pin U9:Z -rise -late
report_at -pin U9:Z -rise -early
## Inserting Timing ECOs
insert_gate U16 CLKBUF_X3
insert_net c6
disconnect_pin U15:Z
connect_pin U15:Z c6
connect_pin U16:A c6
connect_pin U16:Z c5
report_timing
