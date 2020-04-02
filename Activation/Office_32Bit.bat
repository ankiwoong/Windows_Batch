@echo off
cd \Program Files\Common Files\microsoft shared\OfficeSoftwareProtectionPlatform\
ospprearm.exe
cd \Program Files\Microsoft Office\Office14
cscript ospp.vbs /sethst:sv-office
cscript ospp.vbs /act