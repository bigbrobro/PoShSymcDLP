<#
.SYNOPSIS
  API Wrapper for Symantec DLP API.

.DESCRIPTION
  API Wrapper for Symantec DLP API.
  https://apidocs.symantec.com/home/DLP15.7

.PARAMETER <>
    The x of the .

.INPUTS
  <Inputs if any, otherwise state None>

.OUTPUTS
  <Outputs if any, otherwise state None - example: Log file stored in C:\Windows\Temp\<name>.log>

.NOTES
  Version:        0.0.1
  Author:         Alex Hedley
  Creation Date:  08/02/2019
  Release Date:   dd/mm/yyyy
  Purpose/Change: Initial script release
  
.EXAMPLE
  Call '' to

.FUNCTIONALITY
   Invoke-DLPApiRequest is intended to function as a mechanism for calling the Symantec DLP API endpoints.
#>
function Invoke-DLPApiRequest {
    [cmdletbinding()]
    param(
      [parameter(Mandatory=$true)]
      $Resource,
      $Query,
      $Content,
      $Method = "GET"
    )

    $baseUrl = "https://$enforceId/ProtectManager/webservices/v2/incidents/"

    $headers = @{
      "Authorization" = "token $token";
      "Accept" = 'application/json';
    }

    if ($Query) {
      $Q = "?" + $Query
      $uri = $baseUrl + $Resource + $Q
    }
    else {
      $uri = $baseUrl + $Resource
    }

    if ($Method -eq "POST") {
      $body = $Content
    }

    try {
      Invoke-RestMethod -Method $Method -Uri $uri -Headers $headers -Body $body
    } catch {
      Write-Error $Error.item(0) Debug
    }
}