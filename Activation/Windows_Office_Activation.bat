@echo off

cscript.exe "%Systemroot%\system32\slmgr.vbs" /ipk "Windows10 CD KEY"
cscript.exe "%Systemroot%\system32\slmgr.vbs" /ato

cscript.exe "C:\Program Files\Microsoft Office\Office15\ospp.vbs" /inpkey:"Office2013 CD KEY"
cscript.exe "C:\Program Files\Microsoft Office\Office15\ospp.vbs" /act

cscript.exe "%Systemroot%\system32\slmgr.vbs" /dlv

cscript "C:\Program Files\Microsoft Office\Office15\ospp.vbs" /dstatus

pause