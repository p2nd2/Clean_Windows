@echo off
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v AllowCortana /t REG_DWORD /d 0 /f
powershell -Command "Get-AppxPackage Microsoft.549981C3F5F10 | Remove-AppxPackage"
echo Cortana has been disabled.