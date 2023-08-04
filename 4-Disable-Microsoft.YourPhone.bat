@echo off
powershell -Command "Get-AppxPackage Microsoft.YourPhone -AllUsers"
powershell -Command "Get-AppxPackage Microsoft.YourPhone -AllUsers | Remove-AppxPackage"
