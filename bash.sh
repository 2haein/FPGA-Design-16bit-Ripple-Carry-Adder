ghdl -a fa.vhd
ghdl -a bit_adder.vhd
ghdl -a bit_adder_tb.vhd
ghdl -e bit_adder_tb
ghdl -r bit_adder_tb --stop-time=100ns --wave=bit_adder_tb.ghw
gtkwave bit_adder_tb.ghw
