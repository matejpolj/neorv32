# make a local copy of original "./../rtl/test_setups/neorv32_test_setup_bootloader.vhd " file
# and modify the default clock frequency: set to 50MHz
set shell_script "cp -f ./../../rtl/test_setups/neorv32_test_setup_bootloader.vhd  . && sed -i 's/100000000/50000000/g' neorv32_test_setup_bootloader.vhd "
exec sh -c $shell_script

# Copyright (C) 2020  Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions
# and other software and tools, and any partner logic
# functions, and any output files from any of the foregoing
# (including device programming or simulation files), and any
# associated documentation or information are expressly subject
# to the terms and conditions of the Intel Program License
# Subscription Agreement, the Intel Quartus Prime License Agreement,
# the Intel FPGA IP License Agreement, or other applicable license
# agreement, including, without limitation, that your use is for
# the sole purpose of programming logic devices manufactured by
# Intel and sold by Intel or its authorized distributors.  Please
# refer to the applicable agreement for further details, at
# https://fpgasoftware.intel.com/eula.

# Quartus Prime: Generate Tcl File for Project
# File: de0_nano_test.tcl
# Generated on: Sat Apr 10 16:57:48 2021

# Load Quartus Prime Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
  if {[string compare $quartus(project) "de0-nano-test-setup"]} {
    puts "Project de0-nano-test-setup is not open"
    set make_assignments 0
  }
} else {
  # Only open if not already open
  if {[project_exists de0-nano-test-setup]} {
    project_open -revision de0-nano-test-setup de0-nano-test-setup
  } else {
    project_new -revision de0-nano-test-setup de0-nano-test-setup
  }
  set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
  set_global_assignment -name FAMILY "Cyclone IV E"
  set_global_assignment -name DEVICE EP4CE22F17C6
  set_global_assignment -name TOP_LEVEL_ENTITY neorv32_test_setup_bootloader
  set_global_assignment -name ORIGINAL_QUARTUS_VERSION 20.1.0
  set_global_assignment -name PROJECT_CREATION_TIME_DATE "16:40:53  APRIL 10, 2021"
  set_global_assignment -name LAST_QUARTUS_VERSION "20.1.0 Lite Edition"
  set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
  set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
  set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
  set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 1

  # core VHDL files
  set core_src_dir [glob ./../../rtl/core/*.vhd]
  foreach core_src_file $core_src_dir {
    set_global_assignment -name VHDL_FILE $core_src_file -library neorv32
  }
  set_global_assignment -name VHDL_FILE ./../../rtl/core/mem/neorv32_dmem.default.vhd -library neorv32
  set_global_assignment -name VHDL_FILE ./../../rtl/core/mem/neorv32_imem.default.vhd -library neorv32

  # top entity: use local modified copy of the original test setup
  set_global_assignment -name VHDL_FILE "neorv32_test_setup_bootloader.vhd"

  set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
  set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
  set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
  set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
  set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top

  # clock in
  set_location_assignment PIN_R8 -to clk_i

  # builtin leds
  set_location_assignment PIN_L3 -to gpio_o[7]
  set_location_assignment PIN_B1 -to gpio_o[6]
  set_location_assignment PIN_F3 -to gpio_o[5]
  set_location_assignment PIN_D1 -to gpio_o[4]
  set_location_assignment PIN_A11 -to gpio_o[3]
  set_location_assignment PIN_B13 -to gpio_o[2]
  set_location_assignment PIN_A13 -to gpio_o[1]
  set_location_assignment PIN_A15 -to gpio_o[0]

  # reset
  set_location_assignment PIN_J15 -to rstn_i

  # uart0
  set_location_assignment PIN_D3 -to uart0_txd_o
  set_location_assignment PIN_C3 -to uart0_rxd_i

  # uart1
  set_location_assignment PIN_D3 -to uart1_txd_o
  set_location_assignment PIN_C3 -to uart1_rxd_i

  # spi
  set_location_assignment PIN_A2 -to spi_sck_o
  set_location_assignment PIN_B3 -to spi_sdo_o
  set_location_assignment PIN_A4 -to spi_sdi_i
  set_location_assignment PIN_A5 -to spi_csn_i[0]
  set_location_assignment PIN_B6 -to spi_csn_i[1]
  set_location_assignment PIN_B7 -to spi_csn_i[2]
  set_location_assignment PIN_A7 -to spi_csn_i[3]
  set_location_assignment PIN_C8 -to spi_csn_i]4]
  set_location_assignment PIN_E7 -to spi_csn_i[5]
  set_location_assignment PIN_E8 -to spi_csn_i[6]
  set_location_assignment PIN_F9 -to spi_csn_i[7]

  # integrated buttons
  set_location_assignment PIN_E1 -to gpio_i[0]
  set_location_assignment PIN_M1 -to gpio_i[1]
  set_location_assignment PIN_T8 -to gpio_i[2]
  set_location_assignment PIN_B9 -to gpio_i[3]
  set_location_assignment PIN_M15 -to gpio_i[4]

  # all gpio_i
  set_location_assignment PIN_F13 -to gpio_i[5]
  set_location_assignment PIN_T15 -to gpio_i[6]
  set_location_assignment PIN_T13 -to gpio_i[7]
  set_location_assignment PIN_T12 -to gpio_i[8]
  set_location_assignment PIN_T11 -to gpio_i[9]
  set_location_assignment PIN_R11 -to gpio_i[10]
  set_location_assignment PIN_R10 -to gpio_i[11]
  set_location_assignment PIN_P9 -to gpio_i[12]
  set_location_assignment PIN_N11 -to gpio_i[13]
  set_location_assignment PIN_K16 -to gpio_i[14]
  set_location_assignment PIN_L15 -to gpio_i[15]
  set_location_assignment PIN_P16 -to gpio_i[16]
  set_location_assignment PIN_N16 -to gpio_i[17]
  set_location_assignment PIN_P14 -to gpio_i[18]
  set_location_assignment PIN_N14 -to gpio_i[19]
  set_location_assignment PIN_L13 -to gpio_i[20]
  set_location_assignment PIN_K15 -to gpio_i[21]
  set_location_assignment PIN_J14 -to gpio_i[22]

  # all gpio_o
  set_location_assignment PIN_T14 -to gpio_o[7]
  set_location_assignment PIN_R13 -to gpio_o[8]
  set_location_assignment PIN_R12 -to gpio_o[9]
  set_location_assignment PIN_T10 -to gpio_o[10]
  set_location_assignment PIN_P11 -to gpio_o[11]
  set_location_assignment PIN_N12 -to gpio_o[12]
  set_location_assignment PIN_N9 -to gpio_o[13]
  set_location_assignment PIN_L16 -to gpio_o[14]
  set_location_assignment PIN_R16 -to gpio_o[15]
  set_location_assignment PIN_P15 -to gpio_o[16]
  set_location_assignment PIN_R14 -to gpio_o[17]
  set_location_assignment PIN_N15 -to gpio_o[18]
  set_location_assignment PIN_L14 -to gpio_o[19]
  set_location_assignment PIN_M10 -to gpio_o[20]
  set_location_assignment PIN_J16 -to gpio_o[21]
  set_location_assignment PIN_J13 -to gpio_o[22]

  # all pwm
  set_location_assignment PIN_C9 -to pwm_o[0]
  set_location_assignment PIN_D9 -to pwm_o[1]
  set_location_assignment PIN_E11 -to pwm_o[2]
  set_location_assignment PIN_E10 -to pwm_o[3]
  set_location_assignment PIN_C11 -to pwm_o[4]
  set_location_assignment PIN_B11 -to pwm_o[5]
  set_location_assignment PIN_A12 -to pwm_o[6]
  set_location_assignment PIN_D11 -to pwm_o[7]
  set_location_assignment PIN_D12 -to pwm_o[8]
  set_location_assignment PIN_B12 -to pwm_o[9]

  set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

  # Commit assignments
  export_assignments
}