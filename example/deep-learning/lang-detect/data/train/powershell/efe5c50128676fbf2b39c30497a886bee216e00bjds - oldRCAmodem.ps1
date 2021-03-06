###############################################################################

Import-Module prtgshell

###############################################################################

$PageData = Invoke-WebRequest http://192.168.100.1/diagnostics_page.asp

"<prtg>`n"

Set-PrtgResult "Forward Path (Upstream) SNR" ([double](($PageData.AllElements | ? {$_.name -eq "DSSnrInfo" }).value.split(" "))[0]) "dB" -ShowChart
Set-PrtgResult "Forward Path (Upstream) Received Signal Strength" ([double](($PageData.AllElements | ? {$_.name -eq "DSSigInfo" }).value.split(" "))[0]) "dBmV" -ShowChart
Set-PrtgResult "Return Path (Downstream) Power Level" ([double](($PageData.AllElements | ? {$_.name -eq "USPwrInfo" }).value.split(" "))[0]) "dBmV" -ShowChart

"</prtg>"

#"forward path snr"
#$PageData.AllElements | ? {$_.name -eq "DSSnrInfo" } | select value
#"forward path received signal strength"
#$PageData.AllElements | ? {$_.name -eq "DSSigInfo" } | select value
#"return path power level"
#$PageData.AllElements | ? {$_.name -eq "USPwrInfo" } | select value