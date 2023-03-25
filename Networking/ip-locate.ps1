[CmdletBinding()]
param (
    [Parameter(Mandatory=$true, Position=0)]
    [ValidatePattern("^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$")]
    [string]$IPaddress
)

try {
    $uri = "http://ip-api.com/json/$IPaddress"
    $response = Invoke-WebRequest -Uri $uri -UseBasicParsing
    $result = $response.Content | ConvertFrom-Json

    Write-Output $result
} catch {
    Write-Error "Error occurred: $_"
} finally {
    if ($PSItem -is [System.Net.HttpWebResponse]) {
        $PSItem.Dispose()
    }
}
