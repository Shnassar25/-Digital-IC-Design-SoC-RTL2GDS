#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Tue Oct  6 19:52:02 2026                #
#                                                     #
#######################################################

#@(#)CDS: First Encounter v08.10-p004_1 (32bit) 11/04/2008 14:34 (Linux 2.6)
#@(#)CDS: NanoRoute v08.10-p008 NR081027-0018/USR58-UB (database version 2.30, 67.1.1) {superthreading v1.11}
#@(#)CDS: CeltIC v08.10-p002_1 (32bit) 10/23/2008 22:04:14 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CTE v08.10-p016_1 (32bit) Oct 26 2008 15:11:51 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CPE v08.10-p009

setUIVar rda_Input ui_topcell SYS_TOP
setUIVar rda_Input ui_netlist /home/ahesham/Project/dft/netlists/SYS_TOP.v
setUIVar rda_Input ui_timelib,min /home/ahesham/Project/std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib
setUIVar rda_Input ui_timelib,max /home/ahesham/Project/std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib
setUIVar rda_Input ui_timelib /home/ahesham/Project/std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib
setUIVar rda_Input ui_leffile {/home/ahesham/Project/std_cells/lef/tsmc13fsg_6lm_tech.lef /home/ahesham/Project/std_cells/lef/tsmc13_m_macros.lef /home/ahesham/Project/pnr/import/SYS_TOP_6.lef}
setUIVar rda_Input ui_captbl_file /home/ahesham/Project/std_cells/captables/tsmc13fsg.capTbl
setUIVar rda_Input ui_timingcon_file /home/ahesham/Project/dft/sdc/SYS_TOP.sdc
setUIVar rda_Input ui_pwrnet VDD
setUIVar rda_Input ui_gndnet VSS
commitConfig
create_library_set -name min_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib"
create_library_set -name max_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib"
create_library_set -name typ_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib"
create_constraint_mode -name func_mode -sdc_files {../dft/sdc/SYS_TOP_func.sdc}
create_constraint_mode -name scan_mode -sdc_files {../dft/sdc/SYS_TOP_scan.sdc}
floorPlan -d 240.47 220.47 6.0 6.0 6.0 6.0
addRing -spacing_bottom 0.5 -width_left 1 -width_bottom 1 -width_top 1 -spacing_top 0.5 -layer_bottom METAL5 -center 1 -stacked_via_top_layer METAL6 -width_right 1 -around core -jog_distance 0.205 -offset_bottom 0.205 -layer_top METAL5 -threshold 0.205 -offset_left 0.205 -spacing_right 0.5 -spacing_left 0.5 -offset_right 0.205 -offset_top 0.205 -layer_right METAL6 -nets {VSS VDD } -stacked_via_bottom_layer METAL1 -layer_left METAL6
addRing -spacing_bottom 0.5 -width_left 1 -width_bottom 1 -width_top 1 -spacing_top 0.5 -layer_bottom METAL5 -center 1 -stacked_via_top_layer METAL6 -width_right 1 -around core -jog_distance 0.205 -offset_bottom 0.205 -layer_top METAL5 -threshold 0.205 -offset_left 0.205 -spacing_right 0.5 -spacing_left 0.5 -offset_right 0.205 -offset_top 0.205 -layer_right METAL6 -nets {VSS VDD } -stacked_via_bottom_layer METAL1 -layer_left METAL6
addStripe -block_ring_top_layer_limit METAL6 -max_same_layer_jog_length 0.8 -padcore_ring_bottom_layer_limit METAL5 -set_to_set_distance 40 -stacked_via_top_layer METAL6 -padcore_ring_top_layer_limit METAL6 -spacing 0.5 -merge_stripes_value 0.205 -layer METAL6 -block_ring_bottom_layer_limit METAL5 -width 1 -nets {VSS VDD } -stacked_via_bottom_layer METAL1
addStripe -block_ring_top_layer_limit METAL6 -max_same_layer_jog_length 0.8 -padcore_ring_bottom_layer_limit METAL5 -set_to_set_distance 40 -stacked_via_top_layer METAL6 -padcore_ring_top_layer_limit METAL6 -spacing 0.5 -merge_stripes_value 0.205 -layer METAL6 -block_ring_bottom_layer_limit METAL5 -width 1 -nets {VSS VDD } -stacked_via_bottom_layer METAL1
zoomBox -6.726 123.149 12.729 111.073
selectWire 7.6500 1.8250 8.6500 217.8800 6 VDD
deleteSelectedFromFPlan
selectWire 6.1500 3.3250 7.1500 216.3800 6 VSS
deleteSelectedFromFPlan
zoomBox 67.069 222.773 175.078 187.888
panCenter 121.815 213.353
setDrawView ameba
setDrawView fplan
uiSetTool util
uiSetTool obstruct
zoomBox -6.027 227.157 266.846 199.136
createObstruct 6.050 212.709 234.641 214.459
undo
uiSetTool select
selectWire 6.1500 3.3250 7.1500 216.3800 6 VSS
deleteSelectedFromFPlan
selectObstruct 6.1500 209.9200 234.5200 212.7900 defObstructName
deleteSelectedFromFPlan
uiSetTool obstruct
createObstruct 6.400 212.534 234.990 214.459
undo
uiSetTool select
selectObstruct 6.1500 209.9200 234.5200 212.7900 defObstructName
deleteSelectedFromFPlan
selectObstruct 6.5600 209.9200 234.9300 212.7900 defObstructName
deselectAll
selectObstruct 6.5600 209.9200 234.9300 212.7900 defObstructName
deleteSelectedFromFPlan
zoomBox -4.277 223.736 248.118 210.084
uiSetTool obstruct
createObstruct 3.656 212.944 237.595 215.696
setDrawView place
zoomBox -18.370 18.332 292.865 -10.690
zoomBox 58.491 15.699 98.418 -22.032
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
sroute -connect { blockPin padPin padRing corePin } -layerChangeRange { 1 6 } -blockPinTarget { nearestRingStripe nearestTarget } -padPinPortConnect { allPort oneGeom } -checkAlignedSecondaryPin 1 -blockPin useLef -allowJogging 1 -crossoverViaBottomLayer 1 -allowLayerChange 1 -targetViaTopLayer 6 -crossoverViaTopLayer 6 -targetViaBottomLayer 1 -nets { VSS VDD }
zoomBox -10.364 229.826 55.352 -18.696
zoomBox -20.750 165.901 85.564 17.540
zoomBox -16.877 104.067 52.100 13.867
zoomBox -10.987 68.459 23.256 20.443
placeDesign -inPlaceOpt -prePlaceOpt
addTieHiLo -cell TIELOM -prefix LTIE
addTieHiLo -cell TIEHIM -prefix HTIE
globalNetConnect VDD -type pgpin -pin VDD -inst *
globalNetConnect VSS -type pgpin -pin VSS -inst *
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site TSM130NMMETROSITE -r 0.912403644008 0.623651 6.15 6.15 6.0 6.0
uiSetTool select
getIoFlowFlag
fit
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
clearClockDomains
setClockDomains -all
timeDesign -preCTS -idealClock -pathReports -drvReports -slackReports -numPaths 50 -prefix SYS_TOP_preCTS -outDir timingReports
windowSelect -73.441 48.980 -67.151 61.228
clockDesign -genSpecOnly Clock.ctstch
clockDesign -specFile Clock.ctstch -outDir clock_report -fixedInstBeforeCTS
clearClockDomains
setClockDomains -all
timeDesign -postCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix SYS_TOP_postCTS -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 50 -prefix SYS_TOP_postCTS -outDir timingReports
windowSelect -46.957 86.719 -40.336 98.305
saveDesign /home/ahesham/Project/pnr/SYS_TOP_post_cts.enc
refinePlace -preserveRouting
setNanoRouteMode -routeWithEco true
routeDesign -globalDetail -viaOpt -wireOpt
clearClockDomains
setClockDomains -all
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix SYS_TOP_postRoute -outDir timingReports
windowSelect -51.261 62.221 -44.309 75.132
clearClockDomains
setClockDomains -all
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix SYS_TOP_postRoute -outDir timingReports
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
addFiller -cell {FILL1M FILL2M FILL4M FILL8M FILL16M FILL32M FILL64M} -prefix FILLER -markFixed
saveNetlist export/SYS_TOP.v
saveNetlist export/SYS_TOP_pg.v -includePowerGround
rcOut -spf export/SYS_TOP.spf
delayCal -sdf export/SYS_TOP.sdf -version 3.0
report_power -outfile report/power.rpt
streamOut export/SYS_TOP.gds -mapFile ./import/gds2InLayer.map -libName DesignLib -stripes 1 -units 2000 -mode ALL
getIoFlowFlag
saveDesign /home/ahesham/Project/pnr/SYS_TOP_Finish.enc
getIoFlowFlag
