Install-Module -Name platyPS -Scope CurrentUser
Import-Module platyPS

#Import-Module MyAwesomeModule
#Import-Module PoShSymcDLP
Import-Module -Name $PSScriptRoot\..\code\PoShSymcDLP -verbose
#New-MarkdownHelp -Module MyAwesomeModule -OutputFolder .\docs
New-MarkdownHelp -Module PoShSymcDLP -OutputFolder $PSScriptRoot

#New-ExternalHelp .\docs -OutputPath en-US\
New-ExternalHelp $PSScriptRoot -OutputPath $PSScriptRoot\..\code\en-US\

#Import-Module MyAwesomeModule -Force
Import-Module PoShSymcDLP -Force
#Update-MarkdownHelp .\docs
Update-MarkdownHelp $PSScriptRoot