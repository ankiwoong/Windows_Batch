@echo off
:MENU
c:
cd\
cls

title 공인 인증서 백업 복원 - Ankiwoong
echo.
echo. ─────────────────────────
echo. 공인 인증서 백업 복원
echo.         Made in Ankiwoong
echo.            오늘코딩내일디버깅
echo. ─────────────────────────
echo.
echo. [1] 공인 인증서 백업
echo.
echo. [2] 공인 인증서 복원
echo.
echo. [3] 프로그램 종료
echo.

set /p choice= "진행 할 작업 번호를 선택하세요 : "

echo. 
if "%choice%" == "1" goto :BACKUP
if "%choice%" == "2" goto :ROLLBACK
if "%choice%" == "3" goto :END

goto MENU
echo.


:BACKUP
echo.
echo. ─────────────────────────
echo. 공인 인증서 백업
echo.         Made in Ankiwoong
echo.            오늘코딩내일디버깅
echo. ─────────────────────────
echo.

@set YEAR=%date:~0,4%
@set MONTH=%date:~5,2%
@set DAY=%date:~8,2%
@set DIRNAME=%YEAR%-%MONTH%-%DAY%%

md "D:\%DIRNAME%_Backup\GPKI"
md "D:\%DIRNAME%_Backup\MPKI"
md "D:\%DIRNAME%_Backup\PPKI"
md "D:\%DIRNAME%_Backup\NPKI_ProgramFile"
md "D:\%DIRNAME%_Backup\NPKI_LocalLow"

xcopy "%systemdrive%\GPKI" "D:\%DIRNAME%_Backup\GPKI" /s /y
xcopy "%systemdrive%\MPKI" "D:\%DIRNAME%_Backup\MPKI" /s /y
xcopy "%programfiles%\PPKI" "D:\%DIRNAME%_Backup\PPKI" /s /y
xcopy "%programfiles%\NPKI" "D:\%DIRNAME%_Backup\NPKI_ProgramFile" /s /y
xcopy "%userprofile%\AppData\LocalLow\NPKI" "D:\%DIRNAME%_Backup\NPKI_LocalLow" /s /y

pause
goto MENU


:ROLLBACK
echo.
echo. ─────────────────────────
echo. 공인 인증서 복원
echo.         Made in Ankiwoong
echo.            ankiwoong.site
echo. ─────────────────────────
echo.
@set YEAR=%date:~0,4%
@set MONTH=%date:~5,2%
@set DAY=%date:~8,2%
@set DIRNAME=%YEAR%-%MONTH%-%DAY%%

md "%systemdrive%\GPKI"
md "%systemdrive%\MPKI"
md "%programfiles%\PPKI"
md "%programfiles%\NPKI"
md "%userprofile%\AppData\LocalLow\NPKI"

xcopy "D:\%DIRNAME%_Backup\GPKI" "%systemdrive%\GPKI" /s /y
xcopy "D:\%DIRNAME%_Backup\MPKI" "%systemdrive%\MPKI" /s /y
xcopy "D:\%DIRNAME%_Backup\PPKI" "%programfiles%\PPKI" /s /y
xcopy "D:\%DIRNAME%_Backup\NPKI_ProgramFile" "%programfiles%\NPKI" /s /y
xcopy "D:\%DIRNAME%_Backup\NPKI_LocalLow" "%userprofile%\AppData\LocalLow\NPKI" /s /y

pause
goto MENU


:END
exit
