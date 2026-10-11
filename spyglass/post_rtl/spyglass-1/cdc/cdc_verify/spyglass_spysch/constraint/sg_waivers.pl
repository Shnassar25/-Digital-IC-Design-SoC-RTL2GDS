################################################################################
#This is an internally genertaed by spyglass to populate Waiver Info for Reports
#Note:Spyglass does not support any perl routine like "spyDecompileWaiverInfo"
#     The routine is purely for internal usage of spyglass
################################################################################


use SpyGlass;

spyClearWaiverHashInPerl(0);

spyComputeWaivedViolCount("totalWaivedViolationCount"=>'6',
                          "totalGeneratedCount"=>'0',
                          "totalReportCount"=>'0'
                         );

spyDecompileWaiverInfo("waive_cmd_id"=>'1',
                       "waiverCmd"=>'q%waive  -rule "Setup_port01" -comment "Created by ICer on 27-Sep-2026 06:33:25"%',
                       "-rule"=>'"Setup_port01"',
                       "-comment"=>'"Created by ICer on 27-Sep-2026 06:33:25"',
                       "violations_waived"=>'61 63',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/cdc/cdc_verify/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'1'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'2',
                       "waiverCmd"=>'q%waive  -rule "Ac_conv04" -comment "Created by ICer on 27-Sep-2026 06:33:38"%',
                       "-rule"=>'"Ac_conv04"',
                       "-comment"=>'"Created by ICer on 27-Sep-2026 06:33:38"',
                       "violations_waived"=>'117',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/cdc/cdc_verify/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'2'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'3',
                       "waiverCmd"=>'q%waive  -rule "Ac_cdc01a" -comment "Created by ICer on 27-Sep-2026 06:33:52"%',
                       "-rule"=>'"Ac_cdc01a"',
                       "-comment"=>'"Created by ICer on 27-Sep-2026 06:33:52"',
                       "violations_waived"=>'118',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/cdc/cdc_verify/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'3'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'4',
                       "waiverCmd"=>'q%waive  -rule "Ac_datahold01a" -comment "Created by ICer on 27-Sep-2026 06:39:18"%',
                       "-rule"=>'"Ac_datahold01a"',
                       "-comment"=>'"Created by ICer on 27-Sep-2026 06:39:18"',
                       "violations_waived"=>'119 120',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/cdc/cdc_verify/spyglass-1_waiver_file.awl"',
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
