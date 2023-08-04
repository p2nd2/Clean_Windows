@echo off

REM View a list of available disks
echo Available drives:
wmic logicaldisk get caption

REM execution "Check Disk" With bug fixes for all disks
echo Running Check Disk on all drives with repair...
for %%d in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    chkdsk %%d: /f /r
)

REM Wait for the user to read the results
pause

REM Exit the script
exit /b
