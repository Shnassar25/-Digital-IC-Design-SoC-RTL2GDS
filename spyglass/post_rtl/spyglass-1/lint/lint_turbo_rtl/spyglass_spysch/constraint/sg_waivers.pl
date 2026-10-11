################################################################################
#This is an internally genertaed by spyglass to populate Waiver Info for Reports
#Note:Spyglass does not support any perl routine like "spyDecompileWaiverInfo"
#     The routine is purely for internal usage of spyglass
################################################################################


use SpyGlass;

spyClearWaiverHashInPerl(0);

spyComputeWaivedViolCount("totalWaivedViolationCount"=>'11',
                          "totalGeneratedCount"=>'17',
                          "totalReportCount"=>'6'
                         );

spyComputeViolCountForTurbo("totalGeneratedCount"=>'15',
                          "totalGeneratedSecCount"=>'2',
                          "totalWaivedPrimaryMsgCount"=>'9',
                          "totalWaivedSecMsgCount"=>'2',
                         );

spyDecompileWaiverInfo("waive_cmd_id"=>'1',
                       "waiverCmd"=>'q%waive  -rule "STARC05-1.4.3.4" -comment "Created by ICer on 27-Sep-2026 03:15:23"%',
                       "-rule"=>'q%STARC05-1.4.3.4%',
                       "-comment"=>'"Created by ICer on 27-Sep-2026 03:15:23"',
                       "violations_waived"=>'16 17 18',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/lint/lint_turbo_rtl/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'1'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'2',
                       "waiverCmd"=>'q%waive  -parent  -du "Clk_div_50" -rule "STARC05-1.4.3.4" -msg "Clock signal \'SYS_TOP.CLK_DIV_TX.q1\' used  as a non-clock (Used with name \'SYS_TOP.CLK_DIV_TX.q1\'). For similar 2 cases, please refer to the spreadsheet for details" -comment "parent_waived_as_child_get_waived" --on_the_fly_compat_check %',
                       "-du"=>'"Clk_div_50"',
                       "-rule"=>'q%STARC05-1.4.3.4%',
                       "-msg"=>'q%Clock signal \'SYS_TOP.CLK_DIV_TX.q1\' used as a non-clock (Used with name \'SYS_TOP.CLK_DIV_TX.q1\'). For similar 2 cases, please refer to the spreadsheet for details%',
                       "-comment"=>'"parent_waived_as_child_get_waived"',
                       "violations_waived"=>'',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/lint/lint_turbo_rtl/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'2'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'3',
                       "waiverCmd"=>'q%waive  -rule "ReportIgnoredOverlappingRules" -comment "Created by ICer on 27-Sep-2026 03:23:58"%',
                       "-rule"=>'"ReportIgnoredOverlappingRules"',
                       "-comment"=>'"Created by ICer on 27-Sep-2026 03:23:58"',
                       "violations_waived"=>'1 2 3 4 5 6 7 8',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/lint/lint_turbo_rtl/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'3'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'4',
                       "waiverCmd"=>'q%waive  -parent  -du "Clk_div_50" -rule "STARC05-1.4.3.4" -msg "Clock signal \'SYS_TOP.CLK_DIV_TX.q1\' used  as a non-clock (Used with name \'SYS_TOP.CLK_DIV_TX.q1\'). For similar 2 cases, please refer to the spreadsheet for details" -comment "parent_waived_as_child_get_waived"%',
                       "-du"=>'"Clk_div_50"',
                       "-rule"=>'q%STARC05-1.4.3.4%',
                       "-msg"=>'q%Clock signal \'SYS_TOP.CLK_DIV_TX.q1\' used as a non-clock (Used with name \'SYS_TOP.CLK_DIV_TX.q1\'). For similar 2 cases, please refer to the spreadsheet for details%',
                       "-comment"=>'"parent_waived_as_child_get_waived"',
                       "violations_waived"=>'',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/lint/lint_turbo_rtl/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'4'
                      );

spyWaiversDataCount("totalWaivers"=>'4',
"totalWaiversApplied"=>'4',
"totalWaiversWithRegExp"=>'0',
"totalWaiversWithRuleSpecified"=>'4',
"totalWaiversWithIpSpecified"=>'0',
"totalWaiversWithFileLine"=>'0',
                         );

spyProhibitWaiverRules(                         );

spySetWaivedViolationNumberHash("");

1;
