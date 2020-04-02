@echo off
title PC 정보 추출 - Ankiwoong
echo.
echo. ─────────────────────────
echo. PC 정보 추출
echo.         Made in Ankiwoong
echo.            오늘코딩내일디버깅
echo. ─────────────────────────
echo.

pause

c:
cd\
cls
@set YEAR=%date:~0,4%
@set MONTH=%date:~5,2%
@set DAY=%date:~8,2%
@set DIRNAME=%YEAR%-%MONTH%-%DAY%%

md "D:\%DIRNAME%_Backup"

set BACKUP_DIR="D:\%DIRNAME%_Backup\네트워크IP.txt"
set INFO_TEXT="D:\%DIRNAME%_Backup\컴퓨터정보.txt"
set PRINTER_TEXT="D:\%DIRNAME%_Backup\프린트정보.txt"

echo.
echo. ─────────────────────────
echo. 네트워크 IP (이더넷)
echo. ─────────────────────────
echo.
ipconfig | find "IPv4"
ipconfig /all > %BACKUP_DIR%

echo.
echo. ───────────────────────── 
echo. 기존 PC 정보 
echo. ───────────────────────── 
echo. 
echo.컴퓨터 이름, 사용자 계정 
echo. 

wmic computersystem get "Name", "UserName"
wmic computersystem get "Name", "UserName" > %INFO_TEXT%

echo. 
echo.시리얼 번호
echo. 

wmic computersystem geㅋt "Model","Manufacturer"
wmic bios get serialnumber
wmic computersystem get "Model","Manufacturer" >> %INFO_TEXT%
wmic bios get serialnumber >> %INFO_TEXT%

echo. 
echo. ───────────────────────── 
echo. 프린트 모델명, 포트 번호, 공유명 
echo. ───────────────────────── 

wmic printer get "Name", "PortName", "ShareName"
wmic printer get "Name", "PortName", "ShareName" >> %PRINTER_TEXT%

pause