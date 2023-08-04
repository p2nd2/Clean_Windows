Start-Process -FilePath "powershell.exe" -ArgumentList "-NoProfile -ExecutionPolicy Bypass -Command `"Start-Process '$PSCommandPath' -Verb RunAs`"" -Verb RunAs

$firstBat = ".\1-Disable_Background_Tasks.bat"
Start-Process -FilePath $firstBat

$secondBat = ".\2-Disable_Cortana.bat"
Start-Process -FilePath $secondBat

$thirdBat = ".\3-Delete_DNS_Cache.bat"
Start-Process -FilePath $thirdBat

$fourthBat = ".\4-Disable-Microsoft.YourPhone.bat"
Start-Process -FilePath $fourthBat

$fifthBat = ".\5-Temp_Cache.bat"
Start-Process -FilePath $fifthBat

$sixthBat = ".\6-disk_cleanup.bat"
Start-Process -FilePath $sixthBat

$seventhBat = ".\7-Check_Disk.bat"
Start-Process -FilePath $seventhBat

$eighthBat = ".\8-Restart_Windows_Explorer.bat"
Start-Process -FilePath $eighthBat