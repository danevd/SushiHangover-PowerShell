$script:RandomNamespace = "SystemMetrics$(Get-Random)"
$script:systemMetrics = Add-Type -Name SystemMetrics `
    -Namespace $RandomNamespace `
    -MemberDefinition @'
[DllImport("user32.dll")]
public static extern int GetSystemMetrics(int smIndex);
'@ -PassThru

. $psScriptRoot\Get-MultiTouchMaximum.ps1
. $psScriptRoot\Get-BootStatus.ps1
. $psScriptRoot\Get-DisplaySetting.ps1
. $psScriptRoot\Get-OSVersion.ps1
. $psScriptRoot\Get-Font.ps1
. $psScriptRoot\Get-LogicalDiskInventory.ps1
. $psScriptRoot\Get-Processor.ps1
. $psScriptRoot\Get-SystemFont.ps1
. $psScriptRoot\Get-USB.ps1
. $psScriptRoot\Get-WindowsEdition.ps1
. $psScriptRoot\Import-IniFile.ps1
. $psScriptRoot\Test-32Bit.ps1
. $psScriptRoot\Test-64Bit.ps1

Export-ModuleMember -Variable * -Function *