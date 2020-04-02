@echo off
cd C:\Program Files (x86)\Common Files\microsoft shared\OfficeSoftwareProtectionPlatform\ospprearm.exe
cd C:\Program Files (x86)\Microsoft Office\Office14\
cscript ospp.vbs /sethst:sv-office
cscript ospp.vbs /act