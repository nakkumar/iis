Import-Module WebAdministration
$bindingdata = "E:\test\BindingInfo.csv"
$lineCount = (Get-Content "E:\test\BindingInfo.csv" | Measure-Object -Line).Lines
$csvData = Import-Csv -Path $bindingdata
$lineCount_new = $lineCount - 3


for ($i = 0; $i -le $lineCount_new; $i++) {
    $sitename = $csvData[$i].PSObject.Properties | Select-Object -Skip 0 -First 1 -ExpandProperty Value
    $protocal = $csvData[$i].PSObject.Properties | Select-Object -Skip 1 -First 1 -ExpandProperty Value
    $binding = $csvData[$i].PSObject.Properties | Select-Object -Skip 2 -First 1 -ExpandProperty Value

    # Output the first element
    Write-Output "**********************************************"
    Write-Output "lineCount= $i"
    Write-Output "sitename= $sitename"
    Write-Output "protocal= $protocal"
    Write-Output "binding= $binding"
    New-IISSiteBinding -Name "$sitename" -BindingInformation "$binding" -Protocol $protocal
}
