schtasks /delete /tn "Start PC" /f ; Get-WmiObject -Class Win32_StartupCommand -Filter "Name='Start PC'" | ForEach-Object {$_.Delete()} ; Write-Host "PC startup schedule has been removed."
