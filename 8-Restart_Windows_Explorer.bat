@echo off

REM Terminate a process Windows Explorer
taskkill /f /im explorer.exe

REM Wait a few seconds before restarting Windows Explorer
ping 127.0.0.1 -n 2 > nul

REM Restart Windows Explorer
start explorer.exe
