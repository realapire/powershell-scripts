Remove-Item "$env:TEMP\image.jpg" -Force; Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop' -Name Wallpaper -Value ""; rundll32.exe user32.dll, UpdatePerUserSystemParameters