<#
.SYNOPSIS
  Query Incidents from the Symantec DLP API.

.DESCRIPTION
  Retrieve multiple incidents using a single API call.This API follows Role Based Access Control rules with the exception of Incident Access Conditions.
  https://apidocs.symantec.com/home/DLP15.7#_listincidentsusingpost

.PARAMETER <>
    The x of the .

.INPUTS
  <Inputs if any, otherwise state None>

.OUTPUTS
  <Outputs if any, otherwise state None - example: Log file stored in C:\Windows\Temp\<name>.log>

.NOTES
  Version:        0.0.1
  Author:         Alex Hedley
  Creation Date:  08/02/2020
  Release Date:   dd/mm/yyyy
  Purpose/Change: Initial script release
  
.EXAMPLE
  Call 'Get-Incidents' to

.FUNCTIONALITY
   Retrieve multiple incidents using a single API call.This API follows Role Based Access Control rules with the exception of Incident Access Conditions.
#>

#=================== Dependencies ==========================
. Join-Path $PSScriptRoot ".\Private\Invoke-DLPApiRequest.ps1"
#=================== Dependencies ==========================

#region Initialisations
#---------------------------------------------------------[Initialisations]--------------------------------------------------------
#endregion Initialisations

#region Declarations
#----------------------------------------------------------[Declarations]----------------------------------------------------------
#endregion Declarations

#region Modules
#------------------------------------------------------------[Modules]-------------------------------------------------------------
#endregion Modules

#region Functions
#-----------------------------------------------------------[Functions]------------------------------------------------------------

function Get-Incidents
{
    <#
    #.PARAMETER #
    #    The # of the #

    .EXAMPLE
        Get-Incidents
    #>

    #[CmdletBinding()]
    #param(
    #  [Parameter(Mandatory=$true)]
    #  [string]$x
    #)

    Begin
    {}
    Process
    {
        try
        {
            $resource += "Incidents"
            $method = "POST"

            $response = Invoke-DLPApiRequest -Method $method -Resource $resource -Content $content
            return $response
        }
        catch
        {
            Write-Error $Error.item(0)
        }
        finally
        {}
    }
    End
    {}
}

#endregion Functions

#region Execution
#-----------------------------------------------------------[Execution]------------------------------------------------------------
$response = Get-Incidents
$response

#endregion Execution