Import-Module WebAdministration
$apppooldata = "E:\test\apppool1.txt"
$pattern = 'userName:"(.*?)"'

$lineCount = 0
$reader = [System.IO.StreamReader]::new("$apppooldata")
while ($reader.ReadLine() -ne $null) {
$name=(get-content $apppooldata  | ForEach-Object { ($_.Split('"'))[1] }  | Select-Object -Inde $lineCount)

    $lineCount++

$userName=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'userName:"(.*?)"').Matches.Groups[1].Value
$managedRuntimeVersion=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'managedRuntimeVersion:"(.*?)"').Matches.Groups[1].Value
$pipelineMode=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'PipelineMode:"(.*?)"').Matches.Groups[1].Value
$identityType=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'identityType:"(.*?)"').Matches.Groups[1].Value
$password=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'password:"(.*?)"').Matches.Groups[1].Value
$Appool=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'APPPOOL.NAME:"(.*?)"').Matches.Groups[1].Value
$queueLength=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'queueLength:"(.*?)"').Matches.Groups[1].Value
$autoStart=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'autoStart:"(.*?)"').Matches.Groups[1].Value
$enable32BitAppOnWin64=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'enable32BitAppOnWin64:"(.*?)"').Matches.Groups[1].Value
$managedRuntimeLoader=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'managedRuntimeLoader:"(.*?)"').Matches.Groups[1].Value  
$enableConfigurationOverride=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'enableConfigurationOverride:"(.*?)"').Matches.Groups[1].Value 
$managedPipelineMode=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'managedPipelineMode:"(.*?)"').Matches.Groups[1].Value
$CLRConfigFile=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'CLRConfigFile:"(.*?)"').Matches.Groups[1].Value
$passAnonymousToken=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'passAnonymousToken:"(.*?)"').Matches.Groups[1].Value
$startMode=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'startMode:"(.*?)"').Matches.Groups[1].Value
$identityType=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'identityType:"(.*?)"').Matches.Groups[1].Value
$loadUserProfile=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'loadUserProfile:"(.*?)"').Matches.Groups[1].Value
$setProfileEnvironment=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'setProfileEnvironment:"(.*?)"').Matches.Groups[1].Value
$logonType=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'logonType:"(.*?)"').Matches.Groups[1].Value
$manualGroupMembership=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'manualGroupMembership:"(.*?)"').Matches.Groups[1].Value
$idleTimeout=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'idleTimeout:"(.*?)"').Matches.Groups[1].Value
$maxProcesses=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'maxProcesses:"(.*?)"').Matches.Groups[1].Value
$shutdownTimeLimit=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'shutdownTimeLimit:"(.*?)"').Matches.Groups[1].Value
$startupTimeLimit=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'startupTimeLimit:"(.*?)"').Matches.Groups[1].Value
$pingingEnabled=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'pingingEnabled:"(.*?)"').Matches.Groups[1].Value
$pingInterval=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'pingInterval:"(.*?)"').Matches.Groups[1].Value
$pingResponseTime=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'pingResponseTime:"(.*?)"').Matches.Groups[1].Value
$disallowOverlappingRotation=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'disallowOverlappingRotation:"(.*?)"').Matches.Groups[1].Value
$disallowRotationOnConfigChange=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'disallowRotationOnConfigChange:"(.*?)"').Matches.Groups[1].Value
$loadBalancerCapabilities=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'loadBalancerCapabilities:"(.*?)"').Matches.Groups[1].Value
$orphanWorkerProcess=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'orphanWorkerProcess:"(.*?)"').Matches.Groups[1].Value
$orphanActionExe=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'orphanActionExe:"(.*?)"').Matches.Groups[1].Value
$orphanActionParams=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'orphanActionParams:"(.*?)"').Matches.Groups[1].Value
$rapidFailProtection=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'rapidFailProtection:"(.*?)"').Matches.Groups[1].Value
$rapidFailProtectionInterval=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'rapidFailProtectionInterval:"(.*?)"').Matches.Groups[1].Value
$rapidFailProtectionMaxCrashes=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'rapidFailProtectionMaxCrashes:"(.*?)"').Matches.Groups[1].Value
$autoShutdownExe=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'autoShutdownExe:"(.*?)"').Matches.Groups[1].Value
$autoShutdownParams=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'autoShutdownParams:"(.*?)"').Matches.Groups[1].Value
$limit=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'limit:"(.*?)"').Matches.Groups[1].Value
$action=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'action:"(.*?)"').Matches.Groups[1].Value
$resetInterval=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'resetInterval:"(.*?)"').Matches.Groups[1].Value
$smpAffinitized=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'smpAffinitized:"(.*?)"').Matches.Groups[1].Value
$smpProcessorAffinityMask=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'smpProcessorAffinityMask:"(.*?)"').Matches.Groups[1].Value
$smpProcessorAffinityMask2=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'smpProcessorAffinityMask2:"(.*?)"').Matches.Groups[1].Value
$idleTimeout=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'idleTimeout:"(.*?)"').Matches.Groups[1].Value
$shutdownTimeLimit=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'shutdownTimeLimit:"(.*?)"').Matches.Groups[1].Value
$startupTimeLimit=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'startupTimeLimit:"(.*?)"').Matches.Groups[1].Value
$pingInterval=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'pingInterval:"(.*?)"').Matches.Groups[1].Value
$pingResponseTime=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'pingResponseTime:"(.*?)"').Matches.Groups[1].Value
$rapidFailProtectionInterval=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'rapidFailProtectionInterval:"(.*?)"').Matches.Groups[1].Value
$resetInterval=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'resetInterval:"(.*?)"').Matches.Groups[1].Value
$memory=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'memory:"(.*?)"').Matches.Groups[1].Value
$privateMemory=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'privateMemory:"(.*?)"').Matches.Groups[1].Value
$requests=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'requests:"(.*?)"').Matches.Groups[1].Value
$time=(Select-String -Path E:\test\apppool-data\$name.txt -Pattern 'time:"(.*?)"').Matches.Groups[1].Value


Write-Output "**********************************************************************************************************************************************************"
Write-Output  "Appool= $Appool ---> $name"
Write-Output "username= $userName"
Write-Output "password= $password"
Write-Output "version= $managedRuntimeVersion"
Write-Output "mode= $pipelineMode"
Write-Output "identity= $identityType"
Write-Output  "Appool= $Appool ---> $name"
Write-Output "queueLength= $queueLength"
Write-Output "autoStart= $autoStart"
Write-Output "enable32BitAppOnWin64= $enable32BitAppOnWin64"
Write-Output "managedRuntimeLoader= $managedRuntimeLoader"
Write-Output "enableConfigurationOverride= $enableConfigurationOverride"
Write-Output "managedPipelineMode= $managedPipelineMode"
Write-Output "CLRConfigFile= $CLRConfigFile"
Write-Output "passAnonymousToken= $passAnonymousToken"
Write-Output "startMode= $startMode"
Write-Output "identityType= $identityType"
Write-Output "loadUserProfile= $loadUserProfile"
Write-Output "setProfileEnvironment= $setProfileEnvironment"
Write-Output "logonType= $logonType"
Write-Output "manualGroupMembership= $manualGroupMembership"
Write-Output "idleTimeout= $idleTimeout"
Write-Output "maxProcesses= $maxProcesses"
Write-Output "shutdownTimeLimit= $shutdownTimeLimit"
Write-Output "startupTimeLimit= $startupTimeLimit"
Write-Output "pingingEnabled= $pingingEnabled"
Write-Output "pingInterval= $pingInterval"
Write-Output "pingResponseTime= $pingResponseTime"
Write-Output "disallowOverlappingRotation= $disallowOverlappingRotation"
Write-Output "disallowRotationOnConfigChange= $disallowRotationOnConfigChange"
Write-Output "loadBalancerCapabilities= $loadBalancerCapabilities"
Write-Output "orphanWorkerProcess= $orphanWorkerProcess"
Write-Output "orphanActionExe= $orphanActionExe"
Write-Output "orphanActionParams= $orphanActionParams"
Write-Output "rapidFailProtection= $rapidFailProtection"
Write-Output "rapidFailProtectionInterval= $rapidFailProtectionInterval"
Write-Output "rapidFailProtectionMaxCrashes= $rapidFailProtectionMaxCrashes"
Write-Output "autoShutdownExe= $autoShutdownExe"
Write-Output "autoShutdownParams= $autoShutdownParams"
Write-Output "limit= $limit"
Write-Output "action= $action"
Write-Output "resetInterval= $resetInterval"
Write-Output "smpAffinitized= $smpAffinitized"
Write-Output "smpProcessorAffinityMask= $smpProcessorAffinityMask"
Write-Output "smpProcessorAffinityMask2= $smpProcessorAffinityMask2"

if (-not $userName) {
    Write-Output "The variable is empty."
    New-WebAppPool -Name "$name"
    Set-ItemProperty -Path IIS:\AppPools\$name managedRuntimeVersion "$managedRuntimeVersion"
    Set-ItemProperty -Path IIS:\AppPools\$name -Name managedPipelineMode -Value $pipelineMode
    Set-ItemProperty -Path IIS:\AppPools\$name queueLength $queueLength
    Set-ItemProperty -Path IIS:\AppPools\$name autoStart $autoStart
    Set-ItemProperty -Path IIS:\AppPools\$name enable32BitAppOnWin64 $enable32BitAppOnWin64
    Set-ItemProperty -Path IIS:\AppPools\$name managedRuntimeVersion $managedRuntimeVersion
    Set-ItemProperty -Path IIS:\AppPools\$name managedRuntimeLoader $managedRuntimeLoader
    Set-ItemProperty -Path IIS:\AppPools\$name enableConfigurationOverride $enableConfigurationOverride
    Set-ItemProperty -Path IIS:\AppPools\$name CLRConfigFile $CLRConfigFile
    Set-ItemProperty -Path IIS:\AppPools\$name passAnonymousToken $passAnonymousToken
    Set-ItemProperty -Path IIS:\AppPools\$name -Name processmodel.loadUserProfile -Value $loadUserProfile
    Set-ItemProperty -Path IIS:\AppPools\$name -Name processmodel.setProfileEnvironment -Value $setProfileEnvironment
    Set-ItemProperty -Path IIS:\AppPools\$name -Name processmodel.logonType -Value $logonType
    Set-ItemProperty -Path IIS:\AppPools\$name -Name processmodel.manualGroupMembership -Value $manualGroupMembership
    Set-ItemProperty -Path IIS:\AppPools\$name -Name processmodel.maxProcesses -Value $maxProcesses
    Set-ItemProperty -Path IIS:\AppPools\$name -Name processmodel.pingingEnabled -Value $pingingEnabled
    Set-ItemProperty -Path IIS:\AppPools\$name startMode $startMode
    Set-ItemProperty -Path IIS:\AppPools\$name -Name recycling.disallowOverlappingRotation -Value $disallowOverlappingRotation
    Set-ItemProperty -Path IIS:\AppPools\$name -Name recycling.disallowRotationOnConfigChange -Value $disallowRotationOnConfigChange
    Set-ItemProperty -Path IIS:\AppPools\$name -Name failure.loadBalancerCapabilities -Value $loadBalancerCapabilities
    Set-ItemProperty -Path IIS:\AppPools\$name -Name failure.orphanWorkerProcess -Value $orphanWorkerProcess
    Set-ItemProperty -Path IIS:\AppPools\$name -Name failure.orphanActionExe -Value $orphanActionExe
    Set-ItemProperty -Path IIS:\AppPools\$name -Name failure.orphanActionParams -Value $orphanActionParams
    Set-ItemProperty -Path IIS:\AppPools\$name -Name failure.rapidFailProtection -Value $rapidFailProtection
    Set-ItemProperty -Path IIS:\AppPools\$name -Name failure.rapidFailProtectionMaxCrashes -Value $rapidFailProtectionMaxCrashes
    Set-ItemProperty -Path IIS:\AppPools\$name -Name failure.autoShutdownExe -Value $autoShutdownExe
    Set-ItemProperty -Path IIS:\AppPools\$name -Name failure.autoShutdownParams -Value $autoShutdownParams
    Set-ItemProperty -Path IIS:\AppPools\$name -Name cpu.action -Value $action
    Set-ItemProperty -Path IIS:\AppPools\$name -Name cpu.smpAffinitized -Value $smpAffinitized
    Set-ItemProperty -Path IIS:\AppPools\$name -Name cpu.smpProcessorAffinityMask -Value $smpProcessorAffinityMask
    Set-ItemProperty -Path IIS:\AppPools\$name -Name cpu.smpProcessorAffinityMask2 -Value $smpProcessorAffinityMask2
    Set-ItemProperty -Path IIS:\AppPools\$name -Name processModel.idleTimeout -Value $idleTimeout
    Set-ItemProperty -Path IIS:\AppPools\$name -Name processModel.shutdownTimeLimit -Value $shutdownTimeLimit
    Set-ItemProperty -Path IIS:\AppPools\$name -Name processModel.startupTimeLimit -Value $startupTimeLimit
    Set-ItemProperty -Path IIS:\AppPools\$name -Name processModel.pingInterval -Value $pingInterval
    Set-ItemProperty -Path IIS:\AppPools\$name -Name processModel.pingResponseTime -Value $pingResponseTime
    Set-ItemProperty -Path IIS:\AppPools\$name -Name failure.rapidFailProtectionInterval -Value $rapidFailProtectionInterval
    Set-ItemProperty -Path IIS:\AppPools\$name -Name cpu.resetInterval -Value $resetInterval

    Stop-WebAppPool -Name $name
} else {
    Write-Output "The variable is not empty."
    New-WebAppPool -Name "$name"
    Set-ItemProperty -Path IIS:\AppPools\$name managedRuntimeVersion "$managedRuntimeVersion"
    Set-ItemProperty -Path IIS:\AppPools\$name -Name managedPipelineMode -Value $pipelineMode
    Set-ItemProperty -Path IIS:\AppPools\$name queueLength $queueLength
    Set-ItemProperty -Path IIS:\AppPools\$name -Name processmodel.identityType -Value 3
    Set-ItemProperty -Path IIS:\AppPools\$name -Name processmodel.userName -Value $userName
    Set-ItemProperty -Path IIS:\AppPools\$name -Name processmodel.password -Value $password
    Set-ItemProperty -Path IIS:\AppPools\$name autoStart $autoStart
    Set-ItemProperty -Path IIS:\AppPools\$name enable32BitAppOnWin64 $enable32BitAppOnWin64
    Set-ItemProperty -Path IIS:\AppPools\$name managedRuntimeVersion $managedRuntimeVersion
    Set-ItemProperty -Path IIS:\AppPools\$name managedRuntimeLoader $managedRuntimeLoader
    Set-ItemProperty -Path IIS:\AppPools\$name enableConfigurationOverride $enableConfigurationOverride
    Set-ItemProperty -Path IIS:\AppPools\$name CLRConfigFile $CLRConfigFile
    Set-ItemProperty -Path IIS:\AppPools\$name passAnonymousToken $passAnonymousToken
    Set-ItemProperty -Path IIS:\AppPools\$name -Name processmodel.loadUserProfile -Value $loadUserProfile
    Set-ItemProperty -Path IIS:\AppPools\$name -Name processmodel.setProfileEnvironment -Value $setProfileEnvironment
    Set-ItemProperty -Path IIS:\AppPools\$name -Name processmodel.logonType -Value $logonType
    Set-ItemProperty -Path IIS:\AppPools\$name -Name processmodel.manualGroupMembership -Value $manualGroupMembership
    Set-ItemProperty -Path IIS:\AppPools\$name -Name processmodel.maxProcesses -Value $maxProcesses
    Set-ItemProperty -Path IIS:\AppPools\$name -Name processmodel.pingingEnabled -Value $pingingEnabled
    Set-ItemProperty -Path IIS:\AppPools\$name startMode $startMode
    Set-ItemProperty -Path IIS:\AppPools\$name -Name recycling.disallowOverlappingRotation -Value $disallowOverlappingRotation
    Set-ItemProperty -Path IIS:\AppPools\$name -Name recycling.disallowRotationOnConfigChange -Value $disallowRotationOnConfigChange
    Set-ItemProperty -Path IIS:\AppPools\$name -Name failure.loadBalancerCapabilities -Value $loadBalancerCapabilities
    Set-ItemProperty -Path IIS:\AppPools\$name -Name failure.orphanWorkerProcess -Value $orphanWorkerProcess
    Set-ItemProperty -Path IIS:\AppPools\$name -Name failure.orphanActionExe -Value $orphanActionExe
    Set-ItemProperty -Path IIS:\AppPools\$name -Name failure.orphanActionParams -Value $orphanActionParams
    Set-ItemProperty -Path IIS:\AppPools\$name -Name failure.rapidFailProtection -Value $rapidFailProtection
    Set-ItemProperty -Path IIS:\AppPools\$name -Name failure.rapidFailProtectionMaxCrashes -Value $rapidFailProtectionMaxCrashes
    Set-ItemProperty -Path IIS:\AppPools\$name -Name failure.autoShutdownExe -Value $autoShutdownExe
    Set-ItemProperty -Path IIS:\AppPools\$name -Name failure.autoShutdownParams -Value $autoShutdownParams
    Set-ItemProperty -Path IIS:\AppPools\$name -Name cpu.action -Value $action
    Set-ItemProperty -Path IIS:\AppPools\$name -Name cpu.smpAffinitized -Value $smpAffinitized
    Set-ItemProperty -Path IIS:\AppPools\$name -Name cpu.smpProcessorAffinityMask -Value $smpProcessorAffinityMask
    Set-ItemProperty -Path IIS:\AppPools\$name -Name cpu.smpProcessorAffinityMask2 -Value $smpProcessorAffinityMask2
    Set-ItemProperty -Path IIS:\AppPools\$name -Name processModel.idleTimeout -Value $idleTimeout
    Set-ItemProperty -Path IIS:\AppPools\$name -Name processModel.shutdownTimeLimit -Value $shutdownTimeLimit
    Set-ItemProperty -Path IIS:\AppPools\$name -Name processModel.startupTimeLimit -Value $startupTimeLimit
    Set-ItemProperty -Path IIS:\AppPools\$name -Name processModel.pingInterval -Value $pingInterval
    Set-ItemProperty -Path IIS:\AppPools\$name -Name processModel.pingResponseTime -Value $pingResponseTime
    Set-ItemProperty -Path IIS:\AppPools\$name -Name failure.rapidFailProtectionInterval -Value $rapidFailProtectionInterval
    Set-ItemProperty -Path IIS:\AppPools\$name -Name cpu.resetInterval -Value $resetInterval
    
    Stop-WebAppPool -Name $name
}
}
$reader.Close()
$lineCount