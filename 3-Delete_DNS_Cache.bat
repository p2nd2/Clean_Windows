@echo off

echo Flushing DNS cache...

REM Delete the service cache DNS
ipconfig /flushdns
netsh winsock reset
Clear-DnsClientCache
net stop dnscache
net start dnscache

echo DNS cache has been flushed.
