
####################################################################################
# Constraints
# ----------------------------------------------------------------------------
#
# 0. Design Compiler variables
#
# 1. Master Clock Definitions
#
# 2. Generated Clock Definitions
#
# 3. Clock Uncertainties
#
# 4. Clock Latencies 
#
# 5. Clock Relationships
#
# 6. #set input/output delay on ports
#
# 7. Driving cells
#
# 8. Output load

####################################################################################
           #########################################################
                  #### Section 0 : DC Variables ####
           #########################################################
#################################################################################### 

# Prevent assign statements in the generated netlist (must be applied before compile command)
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions
####################################################################################
################################### FUNC Clocks ####################################
 ## 1.REF_CLK
set CLK_REF_NAME REF_CLK
set CLK_REF_PER 20

 ## 2.UART_CLK
set CLK_UART_NAME UART_CLK
set CLK_UART_PER 271.29

 ## 3.Skew
set CLK_SETUP_SKEW 0.2
set CLK_HOLD_SKEW 0.1

 ## 4.Transition
set CLK_LAT 0
set CLK_RISE 0.05
set CLK_FALL 0.05

 ######################### MASTER_CLK ########################
 
 ## 1.REF_CLK
create_clock -name $CLK_REF_NAME -period $CLK_REF_PER -waveform "0 [expr $CLK_REF_PER/2]" [get_ports REF_CLK]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $CLK_REF_NAME]
set_clock_uncertainty -hold  $CLK_HOLD_SKEW  [get_clocks $CLK_REF_NAME]
set_clock_transition  -rise  $CLK_RISE       [get_clocks $CLK_REF_NAME]
set_clock_transition  -fall  $CLK_FALL       [get_clocks $CLK_REF_NAME]
set_clock_latency            $CLK_LAT        [get_clocks $CLK_REF_NAME]

 ## 2.UART_CLK
create_clock -name $CLK_UART_NAME -period $CLK_UART_PER -waveform "0 [expr $CLK_UART_PER/2]" [get_ports UART_CLK]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $CLK_UART_NAME]
set_clock_uncertainty -hold  $CLK_HOLD_SKEW [get_clocks $CLK_UART_NAME]
set_clock_transition  -rise  $CLK_RISE  [get_clocks $CLK_UART_NAME]
set_clock_transition  -fall  $CLK_FALL  [get_clocks $CLK_UART_NAME]
set_clock_latency $CLK_LAT [get_clocks $CLK_UART_NAME]

 ######################### Generated_CLK ########################
 
 ## 1.ALU_CLK
create_generated_clock -master_clock $CLK_REF_NAME -source [get_ports REF_CLK] \
                       -name "ALU_CLK" [get_pins U0_TLATNCAX12M/ECK] \
                       -divide_by 1
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks "ALU_CLK"]
set_clock_uncertainty -hold  $CLK_HOLD_SKEW  [get_clocks "ALU_CLK"]

 ## 2.RX_CLK
create_generated_clock -master_clock $CLK_UART_NAME -source [get_ports UART_CLK] \
                       -name "UART_RX_CLK" [get_pins CLK_DIV_RX/o_div_clk] \
                       -divide_by 1
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks "UART_RX_CLK"]
set_clock_uncertainty -hold  $CLK_HOLD_SKEW  [get_clocks "UART_RX_CLK"]

 ## 3.TX_CLK
create_generated_clock -master_clock $CLK_UART_NAME -source [get_ports UART_CLK] \
                       -name "UART_TX_CLK" [get_pins CLK_DIV_TX/o_div_clk] \
                       -divide_by 32
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks "UART_TX_CLK"]
set_clock_uncertainty -hold  $CLK_HOLD_SKEW  [get_clocks "UART_TX_CLK"]

######################### Dont_Touch  ########################  
 
set_dont_touch_network [get_clocks "$CLK_UART_NAME $CLK_REF_NAME ALU_CLK UART_RX_CLK UART_TX_CLK"]

 
#################################### SCAN Clocks ###################################
set DFT_CLK_NAME scan_clk
set DFT_CLK_PER 1000
set DFT_CLK_SETUP_SKEW 0.025
set CLK_HOLD_SKEW 0.01
set DFT_CLK_LAT 0
set DFT_CLK_RISE 0.05
set DFT_CLK_FALL 0.05

create_clock -name $DFT_CLK_NAME -period $DFT_CLK_PER -waveform "0 [expr $DFT_CLK_PER/2]" [get_ports SCAN_CLK]
set_clock_uncertainty -setup $DFT_CLK_SETUP_SKEW [get_clocks $DFT_CLK_NAME]
set_clock_uncertainty -hold  $CLK_HOLD_SKEW      [get_clocks $DFT_CLK_NAME]
set_clock_transition  -rise  $DFT_CLK_RISE       [get_clocks $DFT_CLK_NAME]
set_clock_transition  -fall  $DFT_CLK_FALL       [get_clocks $DFT_CLK_NAME]
set_clock_latency            $DFT_CLK_LAT        [get_clocks $DFT_CLK_NAME]

######################### Dont_Touch  ########################  
 
set_dont_touch_network [get_clocks "$DFT_CLK_NAME"]

####################################################################################
           #########################################################
             #### Section 2 : Clocks Relationship ####
           #########################################################
####################################################################################

set_clock_groups -asynchronous -group [get_clocks "$CLK_REF_NAME ALU_CLK"]  \
                               -group [get_clocks "$CLK_UART_NAME UART_TX_CLK UART_RX_CLK"] 

set_clock_groups -logically_exclusive -group [get_clocks "$CLK_REF_NAME ALU_CLK"] \
                                      -group [get_clocks "$DFT_CLK_NAME"] 
                             
set_clock_groups -logically_exclusive -group [get_clocks "$CLK_UART_NAME UART_TX_CLK UART_RX_CLK"] \
                                      -group [get_clocks "$DFT_CLK_NAME"] 
####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####
           #########################################################
####################################################################################

set IN_Delay  [expr 0.2*$CLK_UART_PER]
set OUT_Delay [expr 0.2*$CLK_UART_PER]

set IN2_Delay  [expr 0.2*$DFT_CLK_PER]
set OUT2_Delay [expr 0.2*$DFT_CLK_PER]

#Constrain Input Paths delay
set_input_delay $IN_Delay -clock UART_RX_CLK [get_port RX_IN]

#Constrain Scan Input Paths
set_input_delay $IN2_Delay -clock $DFT_CLK_NAME [get_port TEST_MODE]
set_input_delay $IN2_Delay -clock $DFT_CLK_NAME [get_port SI]
set_input_delay $IN2_Delay -clock $DFT_CLK_NAME [get_port SE]

#Constrain Output Paths delay
set_output_delay $OUT_Delay -clock UART_TX_CLK [get_port TX_OUT]
set_output_delay $OUT_Delay -clock UART_RX_CLK [get_port PAR_ERR]
set_output_delay $OUT_Delay -clock UART_RX_CLK [get_port STOP_ERR]

#Constrain Scan Output Paths
set_output_delay $OUT2_Delay -clock $DFT_CLK_NAME [get_port SO]

####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################

#functional ports
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port RX_IN]

#scan ports
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port TEST_MODE]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port SI]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port SE]

####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################

set OUT_Func_Load 0.1
set OUT_Scan_Load 0.1

#functional ports
set_load $OUT_Func_Load [get_port TX_OUT]
set_load $OUT_Func_Load [get_port PAR_ERR]
set_load $OUT_Func_Load [get_port STOP_ERR]

#scan ports
set_load $OUT_Scan_Load  [get_port SO]

####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis

set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c"\
			 -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" \
			 -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"\
			 -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################

set_wire_load_model -name tsmc13_wl30 -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c

####################################################################################
           #########################################################
                  #### Section 8 : multicycle path ####
           #########################################################
####################################################################################

set_case_analysis 1 [get_port TEST_MODE]

           #########################################################
                  #### Section 9 : premapped cells ####
           #########################################################
####################################################################################


####################################################################################

