@echo off
title 프린터 스풀러 삭제 - Ankiwoong
echo.
echo.-----------------------------
echo.
echo.출력 에러 발생 시 사용
echo.
echo.-----------------------------

net stop spooler
cls

del "%windir%\system32\spool\printers" /f /s /q
del "%windir%\system32\spool\printers\*.shd" /f /s /q
del "%windir%\system32\spool\printers\*.sql" /f /s /q

del "%systemroot%\system32\spool\printers" /f /s /q
del "%systemroot%\system32\spool\printers\*.shd" /f /s /q
del "%systemroot%\system32\spool\printers\*.sql" /f /s /q

net start spooler
cls

pause