zcd %systemroot%\system32\Printing_Admin_Scripts\ko-KR
cscript prnport.vbs -a -r IP_���ձ�IP -h ���ձ�IP -me -o raw -y public -i 1 -n 9100
rundll32 printui.dll,PrintUIEntry /if /b "���ձ� �̸�" /f "���ձ���������" /r "IP_���ձ�IP" /m "���ձ�𵨸�" ;
rundll32 printui.dll,PrintUIEntry /y /n "���ձ� �̸�" ;