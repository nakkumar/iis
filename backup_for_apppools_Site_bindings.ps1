New-Item -Path "E:\test\subsite-data" -ItemType Directory
New-Item -Path "E:\test\site-data\" -ItemType Directory
New-Item -Path "E:\test\apppool-data" -ItemType Directory
Write-Output 'Backup the apppool data E:\test\apppool1.txt'
C:\Windows\System32\inetsrv\appcmd.exe list apppool > E:\test\apppool1.txt
Write-Output 'Backup the Site data E:\test\site1.txt'
C:\Windows\System32\inetsrv\appcmd.exe list site > E:\test\site1.txt

$sitedata = "E:\test\site1.txt"
$apppooldata = "E:\test\apppool1.txt"

#Remove-Item -Path "E:\test\site-data\" 
#Remove-Item -Path "E:\test\apppool-data" 

$lineCount = 0
$reader = [System.IO.StreamReader]::new("$apppooldata")
while ($reader.ReadLine() -ne $null) {
$name=(get-content $apppooldata  | ForEach-Object { ($_.Split('"'))[1] }  | Select-Object -Inde $lineCount)

    $lineCount++

C:\Windows\System32\inetsrv\appcmd.exe list apppool "$name"  /text:* >> E:\test\apppool-data\$name.txt

Write-Output "Apppool Backup Taken for $name"
}
$reader.Close()




$lineCount1 = 0
$reader1 = [System.IO.StreamReader]::new("$sitedata")
while ($reader1.ReadLine() -ne $null) {
$sitename=(get-content $sitedata  | ForEach-Object { ($_.Split('"'))[1] }  | Select-Object -Inde $lineCount1)

    $lineCount1++

C:\Windows\System32\inetsrv\appcmd.exe list site "$sitename"  /text:* >> E:\test\site-data\$sitename.txt


$webApps = get-webapplication -Site $sitename | select-object @{n='Site'; e= {$_.path }},@{n='Location'; e= {$_.PhysicalPath}},@{n='Apppool'; e= {$_.Applicationpool}}
$output = $webApps | ForEach-Object {
    "'$($_.Site)','$($_.Location)','$($_.Apppool)'"
}
$output | Out-File -FilePath "E:\test\subsite-data\$sitename.csv"

$filePath = "E:\test\subsite-data\$sitename.csv"
$fileContent = Get-Content -Path $filePath
$modifiedContent = $fileContent -replace '/', ''
$modifiedContent | Set-Content -Path $filePath



Write-Output "Site Backup Taken for $sitename"
}
$reader1.Close()


$siteinfo = Get-Website | Select-Object Name
$export_Binding = @()
foreach ($tempsite in $siteinfo){

$Curr_Site = $tempsite.name
$temp = Get-WebBinding -Name $Curr_Site

Write-host $Curr_Site -ForegroundColor Cyan

Foreach ($tmp_bind in $temp)
{
$Bindinfo = New-Object PSObject
    $Bindinfo | Add-Member -MemberType NoteProperty -Name "SiteName" -Value $Curr_Site
    $Bindinfo | Add-Member -MemberType NoteProperty -Name "Protocol" -Value $tmp_bind.protocol
    $Bindinfo | Add-Member -MemberType NoteProperty -Name "bindingInformation" -Value $tmp_bind.bindingInformation
    $export_Binding += $Bindinfo

}

}
$export_Binding | Export-Csv E:\test\BindingInfo.csv

Write-Output "Total number of apppools  = $lineCount"
Write-Output "Total number of site      = $lineCount1"
Write-Output "Backup Done for Bindings"