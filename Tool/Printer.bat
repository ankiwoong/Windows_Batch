zcd %systemroot%\system32\Printing_Admin_Scripts\ko-KR
cscript prnport.vbs -a -r IP_복합기IP -h 복합기IP -me -o raw -y public -i 1 -n 9100
rundll32 printui.dll,PrintUIEntry /if /b "복합기 이름" /f "복합기정보파일" /r "IP_복합기IP" /m "복합기모델명" ;
rundll32 printui.dll,PrintUIEntry /y /n "복합기 이름" ;