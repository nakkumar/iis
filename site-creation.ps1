Import-Module WebAdministration
$sitedata = "E:\test\site1.txt"

$lineCount3 = 0
$reader3 = [System.IO.StreamReader]::new("$sitedata")
while ($reader3.ReadLine() -ne $null) {
$sitename=(get-content $sitedata  | ForEach-Object { ($_.Split('"'))[1] }  | Select-Object -Inde $lineCount3)

    $lineCount3++

$sitename2=(Select-String -Path E:\test\site-data\$sitename.txt -Pattern 'SITE.NAME:"(.*?)"').Matches.Groups[1].Value
$physicalPath1=(Select-String -Path E:\test\site-data\$sitename.txt -Pattern 'physicalPath:"(.*?)"').Matches.Groups[5].Value
$applicationPool1=(Select-String -Path E:\test\site-data\$sitename.txt -Pattern 'applicationPool:"(.*?)"').Matches.Groups[3].Value
$heartbeat=(Select-String -Path E:\test\site-data\$sitename.txt -Pattern "heartbeat")

write-output "*****************************************************************************"
write-output "siteName= $sitename --> $sitename2"
write-output "physicalPath1= $physicalPath1"
write-output "applicationPool1= $applicationPool1"
write-output "heartbeat= $heartbeat"

New-WebSite -Name $sitename -Port 80 -PhysicalPath $physicalPath1 -ApplicationPool $applicationPool1

if (-not $heartbeat) {
write-output "No HeartBeat"
} else
{
New-WebVirtualDirectory -Site $sitename -Name /heartbeat -PhysicalPath e:\heartbeat
}


}
$reader3.Close()
$lineCount3