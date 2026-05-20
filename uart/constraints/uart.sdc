# Clock definition (100 MHz clock → 10ns period)
create_clock -name clk -period 10 [get_ports clk]

# Input delays (assume external world delay)
set_input_delay 2 -clock clk [all_inputs]

# Output delays
set_output_delay 2 -clock clk [all_outputs]
