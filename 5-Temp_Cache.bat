@echo off

echo Deleting temporary files, Prefetch, History, Cookies, and Recent...

REM deletes the current user's temp files
del /f /q /s "%TEMP%\*.*"

REM Delete current user's temporary files (Profiles)
del /f /q /s "%USERPROFILE%\AppData\Local\Temp\*.*"

REM deletes the system temp files
del /f /q /s "%SystemRoot%\Temp\*.*"

REM Delete the contents of the "Prefetch" folder
del /f /q /s "%SystemRoot%\Prefetch\*.*"

REM Delete a folder"History"
rd /s /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\History"

REM Delete a folder"Cookies"
rd /s /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\Cookies"

REM Delete a folder"Recent"
rd /s /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Recent"

REM Delete files in"ff*.tmp"
del /f /q /s "%USERPROFILE%\AppData\Local\Temp\ff*.tmp"

echo Temporary files, Prefetch, History, Cookies, and Recent have been deleted.

echo Deleting cache files...

REM Delete the contents of the folder Cache for the current user
del /f /q /s "%LOCALAPPDATA%\Microsoft\Windows\INetCache\*.*"

REM Delete the contents of a folder Temporary Internet Files
del /f /q /s "%LOCALAPPDATA%\Microsoft\Windows\INetCache\IE\*.*"

del c:\WIN386.SWP

cd/
del *.log /a/s/q/f

echo Cache files have been deleted.
