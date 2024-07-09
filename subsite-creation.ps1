Import-Module WebAdministration
$sitedata = "E:\test\site1.txt"

$lineCount3 = 0
$reader3 = [System.IO.StreamReader]::new("$sitedata")
while ($reader3.ReadLine() -ne $null) {
$sitename=(get-content $sitedata  | ForEach-Object { ($_.Split('"'))[1] }  | Select-Object -Inde $lineCount3)

    $lineCount3++

  Write-Output "$sitename"
$subsitecount = (Get-Content E:\test\subsite-data\$sitename.csv | Measure-Object -Line).Lines
$lines = Get-Content -Path E:\test\subsite-data\$sitename.csv
if ($subsitecount -gt 1) {

    Write-Output "$sitename ---> having subsites $subsitecount"

    for ($count = 0; $count -lt $subsitecount; $count++) {

    $thirdLine = $lines[$count]

    $subsitename = ($thirdLine -split ',')[0].Trim("'")
    $subsitepath = ($thirdLine -split ',')[1].Trim("'")
    $subsiteapppool = ($thirdLine -split ',')[2].Trim("'")
    Write-Output "**************************************************************************************************************************************"
    Write-Output "count $count"
    Write-Output "subsitename $subsitename"
    Write-Output "subsitepath $subsitepath"
    Write-Output "subsiteapppool $subsiteapppool"
    Write-Output "sitename  $sitename"

    New-WebApplication -Name $subsitename -Site $sitename -PhysicalPath $subsitepath -ApplicationPool $subsiteapppool

    }
} 
if ($subsitecount -eq 1) {

foreach ($line in $lines) {
    $elements = $line -replace "'", "" -split ","
    
    $name12 = $elements[0].Trim()
    $path12 = $elements[1].Trim()
    $apppool12 = $elements[2].Trim()

    Write-Output "**************************************************************************************************************************************"
    Write-Output "111111111111111111111"
    Write-Output "name  $name12"
    Write-Output "path  $path12"
    Write-Output "apppool  $apppool12"
    Write-Output "sitename  $sitename"
    New-WebApplication -Name $name12 -Site $sitename -PhysicalPath $path12 -ApplicationPool $apppool12
    }

}
else 
{
    Write-Output "**************************************************************************************************************************************"
    Write-Output "$sitename ---> not having the subsites $subsitecount"
    Write-Output "sitename  $sitename"
}

}
$reader3.Close()
$lineCount3