schtasks /create /tn "Start PC" /tr "cmd /c start /min shutdown /r /t 0" /sc once /st "YYYY-MM-DD HH:mm" /ru "System" /f ; Write-Host "PC will start up at YYYY-MM-DD HH:mm."
