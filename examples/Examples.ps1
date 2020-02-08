#Uninstall-Module PoShSymcDLP
Remove-Module PoShSymcDLP

Import-Module -Name $PSScriptRoot\..\code\PoShSymcDLP -verbose

Get-Module PoShSymcDLP
#Get-InstalledModule PoShSymcDLP

#Update-Module PoShSymcDLP
#Get-Module PoShSymcDLP

#Get-Command -Module PoShSymcDLP
#Get-Module PoShSymcDLP -ListAvailable | % { $_.ExportedCommands.Values }
#Get-Command -Module PoShSymcDLP -CommandType cmdlet
#Get-Command -Module PoShSymcDLP -CommandType Function

Get-Incidents