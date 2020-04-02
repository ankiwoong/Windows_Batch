REG ADD "HKLM\Software\Policies\Microsoft\Windows" /v  DisableFileSyncNGSC /t REG_DWORD /d 1 /f
timeout 2 > NUL

REG DELETE "HKEY_CLASSES_ROOT\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f
timeout 2 > NUL

REG DELETE "HKEY_CLASSES_ROOT\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f
timeout 2 > NUL

RD "%UserProfile%\OneDrive" /Q /S
timeout 2 > NUL

RD "%LocalAppData%\Microsoft\OneDrive" /Q /S
timeout 2 > NUL

RD "%ProgramData%\Microsoft OneDrive" /Q /S
timeout 2 > NUL

RD "C:\OneDriveTemp" /Q /S
timeout 2 > NUL
