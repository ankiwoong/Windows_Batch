@echo off
:MENU
c:
cd\
cls

title Windows 10 Update
echo.
echo.-----------------------------
echo.Windows 10 Update
echo.      Made in Ankiwoong
echo.-----------------------------
echo.
echo. [1] Update ON
echo.
echo. [2] Update OFF
echo.
echo. [3] 프로그램 종료
echo.

set /p choice="진행 할 작업 번호를 선택하세요 : "

echo.
if "%choice%" == "1" goto :ON
if "%choice%" == "2" goto :OFF
if "%choice%" == "3" goto :END

goto MENU
echo.


:ON
@echo off
echo.
echo.-----------------------------
echo.Windows 10 Update ON
echo.      Made in Ankiwoong
echo.-----------------------------
echo.

sc config wuauserv start= auto
net start wuauserv

pause
goto MENU


:OFF
echo.
echo.-----------------------------
echo.Windows 10 Update OFF
echo.      Made in Ankiwoong
echo.-----------------------------
echo.

sc config wuauserv start= disabled
net stop wuauserv
echo. 작업이 완료 되었습니다.

pause
goto MENU



:END
exit