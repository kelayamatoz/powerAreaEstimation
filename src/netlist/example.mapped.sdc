###################################################################

# Created by write_sdc on Thu Jul 14 15:45:40 2016

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_wire_load_mode top
set_wire_load_model -name ZeroWireload -library tcbn45gsbwpml
set_max_area 80
set_driving_cell -lib_cell INVD0BWP -library tcbn45gsbwpml -pin ZN [get_ports {io_a[3]}]
set_driving_cell -lib_cell INVD0BWP -library tcbn45gsbwpml -pin ZN [get_ports {io_a[2]}]
set_driving_cell -lib_cell INVD0BWP -library tcbn45gsbwpml -pin ZN [get_ports {io_a[1]}]
set_driving_cell -lib_cell INVD0BWP -library tcbn45gsbwpml -pin ZN [get_ports {io_a[0]}]
set_driving_cell -lib_cell INVD0BWP -library tcbn45gsbwpml -pin ZN [get_ports {io_b[3]}]
set_driving_cell -lib_cell INVD0BWP -library tcbn45gsbwpml -pin ZN [get_ports {io_b[2]}]
set_driving_cell -lib_cell INVD0BWP -library tcbn45gsbwpml -pin ZN [get_ports {io_b[1]}]
set_driving_cell -lib_cell INVD0BWP -library tcbn45gsbwpml -pin ZN [get_ports {io_b[0]}]
set_driving_cell -lib_cell INVD0BWP -library tcbn45gsbwpml -pin ZN [get_ports {io_opcode[1]}]
set_driving_cell -lib_cell INVD0BWP -library tcbn45gsbwpml -pin ZN [get_ports {io_opcode[0]}]
set_driving_cell -lib_cell INVD0BWP -library tcbn45gsbwpml -pin ZN [get_ports {reg_add_test[7]}]
set_driving_cell -lib_cell INVD0BWP -library tcbn45gsbwpml -pin ZN [get_ports {reg_add_test[6]}]
set_driving_cell -lib_cell INVD0BWP -library tcbn45gsbwpml -pin ZN [get_ports {reg_add_test[5]}]
set_driving_cell -lib_cell INVD0BWP -library tcbn45gsbwpml -pin ZN [get_ports {reg_add_test[4]}]
set_driving_cell -lib_cell INVD0BWP -library tcbn45gsbwpml -pin ZN [get_ports {reg_add_test[3]}]
set_driving_cell -lib_cell INVD0BWP -library tcbn45gsbwpml -pin ZN [get_ports {reg_add_test[2]}]
set_driving_cell -lib_cell INVD0BWP -library tcbn45gsbwpml -pin ZN [get_ports {reg_add_test[1]}]
set_driving_cell -lib_cell INVD0BWP -library tcbn45gsbwpml -pin ZN [get_ports {reg_add_test[0]}]
set_load -pin_load 0.19856 [get_ports {io_out[3]}]
set_load -pin_load 0.19856 [get_ports {io_out[2]}]
set_load -pin_load 0.19856 [get_ports {io_out[1]}]
set_load -pin_load 0.19856 [get_ports {io_out[0]}]
set_load -pin_load 0.19856 [get_ports {reg_value[7]}]
set_load -pin_load 0.19856 [get_ports {reg_value[6]}]
set_load -pin_load 0.19856 [get_ports {reg_value[5]}]
set_load -pin_load 0.19856 [get_ports {reg_value[4]}]
set_load -pin_load 0.19856 [get_ports {reg_value[3]}]
set_load -pin_load 0.19856 [get_ports {reg_value[2]}]
set_load -pin_load 0.19856 [get_ports {reg_value[1]}]
set_load -pin_load 0.19856 [get_ports {reg_value[0]}]
set_max_transition 0.1 [get_ports {io_out[3]}]
set_max_transition 0.1 [get_ports {io_out[2]}]
set_max_transition 0.1 [get_ports {io_out[1]}]
set_max_transition 0.1 [get_ports {io_out[0]}]
set_max_transition 0.1 [get_ports {reg_value[7]}]
set_max_transition 0.1 [get_ports {reg_value[6]}]
set_max_transition 0.1 [get_ports {reg_value[5]}]
set_max_transition 0.1 [get_ports {reg_value[4]}]
set_max_transition 0.1 [get_ports {reg_value[3]}]
set_max_transition 0.1 [get_ports {reg_value[2]}]
set_max_transition 0.1 [get_ports {reg_value[1]}]
set_max_transition 0.1 [get_ports {reg_value[0]}]
set_max_delay 0.2  -from [list [get_ports {io_a[3]}] [get_ports {io_a[2]}] [get_ports {io_a[1]}] [get_ports {io_a[0]}] [get_ports {io_b[3]}] [get_ports {io_b[2]}] [get_ports {io_b[1]}] [get_ports {io_b[0]}] [get_ports {io_opcode[1]}] [get_ports {io_opcode[0]}] [get_ports {reg_add_test[7]}] [get_ports {reg_add_test[6]}] [get_ports {reg_add_test[5]}] [get_ports {reg_add_test[4]}] [get_ports {reg_add_test[3]}] [get_ports {reg_add_test[2]}] [get_ports {reg_add_test[1]}] [get_ports {reg_add_test[0]}]]  -to [list [get_ports {io_out[3]}] [get_ports {io_out[2]}] [get_ports {io_out[1]}] [get_ports {io_out[0]}] [get_ports {reg_value[7]}] [get_ports {reg_value[6]}] [get_ports {reg_value[5]}] [get_ports {reg_value[4]}] [get_ports {reg_value[3]}] [get_ports {reg_value[2]}] [get_ports {reg_value[1]}] [get_ports {reg_value[0]}]]
