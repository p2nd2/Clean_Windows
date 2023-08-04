@echo off

REM Determine the disks connected to the device
for %%d in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    echo Checking drive %%d:
    if exist "%%d:\" (
        REM Perform Disk Cleanup for the existing disk if it is online
        cleanmgr /d %%d: /sageset:%%d
        cleanmgr /sagerun:%%d
    ) else (
        echo Drive %%d: not found.
    )
)

pause

REM Exit the script
exit /b