rem --- ����ன�� ��६�����
CALL set_var.bat

rem --- �����㥬 �� �� �⨬
xcopy /y /c c:\WINNT\ww.ini      %DIR_TMP%config\
xcopy /y /c c:\KERNEL\Appl.ini   %DIR_TMP%config\
xcopy /y /c c:\LUKNET\*.bat      %DIR_TMP%config\LUKNET\
xcopy /y /c c:%ORA805_NETA%*.ora %DIR_TMP%config%ORA805_NETA%
xcopy /y /c c:%ORA817_NETA%*.ora %DIR_TMP%config%ORA817_NETA%
xcopy /y /c d:%ORA817_NETA%*.ora %DIR_TMP%config%ORA817_NETA%
xcopy /y /c %DIR_PFILE%*.*       %DIR_TMP%config\PFILE\
xcopy /y /c %LOG%                %DIR_TMP%config\

rem --- ��娢��㥬 �� �� ᪮��஢���
"C:\Program Files\WinRAR\RAR.exe" m -r -ep1 -ri2 -inul %DIR_CONFIG%Config_%COMPUTERNAME%_m%NUM_MON%.rar %DIR_TMP%config\*.*

rem *** �࠭�� ���䨣���� �� ���-���� (�� 1 �� �����) ***
waitdel %DIR_CONFIG%Config_%COMPUTERNAME%_m*.rar 185 00:00

rem --- �����㥬 ����� �� ��㣨� ࠡ�稥 �⠭樨 � �� � ����頥� ���ॢ訥 ��娢�� ��ୠ�� �࠭���権
echo y | net use o: \\%IP_ARM1% 
mkdir o:\hotcopy
mkdir o:\hotcopy\config
robocopy %DIR_CONFIG% o:\HotCopy\config\ /MIR /NP /R:0
echo y | net use o: /delete

echo y | net use o: \\%IP_ARM2%
mkdir o:\hotcopy
mkdir o:\hotcopy\config
robocopy %DIR_CONFIG% o:\HotCopy\config\ /MIR /NP /R:0
echo y | net use o: /delete

rem ����஢���� �� ��� USB 
if .%USB_DRIVE%.==.. goto skip_usb
mkdir %USB_DRIVE%hotcopy
mkdir %USB_DRIVE%hotcopy\config
robocopy %DIR_CONFIG% %USB_DRIVE%HotCopy\config\ /MIR /NP /R:0
:skip_usb

