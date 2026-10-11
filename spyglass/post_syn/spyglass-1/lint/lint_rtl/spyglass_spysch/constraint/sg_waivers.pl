################################################################################
#This is an internally genertaed by spyglass to populate Waiver Info for Reports
#Note:Spyglass does not support any perl routine like "spyDecompileWaiverInfo"
#     The routine is purely for internal usage of spyglass
################################################################################


use SpyGlass;

spyClearWaiverHashInPerl(0);

spyComputeWaivedViolCount("totalWaivedViolationCount"=>'2',
                          "totalGeneratedCount"=>'4',
                          "totalReportCount"=>'2'
                         );

spyDecompileWaiverInfo("waive_cmd_id"=>'1',
                       "waiverCmd"=>'q%waive  -rule "STARC05-1.4.3.4" -comment "Created by ICer on 21-Sep-2026 03:01:03"%',
                       "-rule"=>'q%STARC05-1.4.3.4%',
                       "-comment"=>'"Created by ICer on 21-Sep-2026 03:01:03"',
                       "violations_waived"=>'7 8',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/lint/lint_rtl/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'1'
                      );

spyWaiversDataCount("totalWaivers"=>'1',
"totalWaiversApplied"=>'1',
"totalWaiversWithRegExp"=>'0',
"totalWaiversWithRuleSpecified"=>'1',
"totalWaiversWithIpSpecified"=>'0',
"totalWaiversWithFileLine"=>'0',
                         );

spyProhibitWaiverRules(                         );

spySetWaivedViolationNumberHash("");

1;
