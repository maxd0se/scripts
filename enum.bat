whoami /all 
echo %username% 
net user 
type %SYSTEMDRIVE%\boot.ini 
type %WINDIR%\win.ini
type %WINDIR%\System32\drivers\etc\hosts
%SYSTEMDRIVE%\pagefile.sys
type %WINDIR%\debug\NetSetup.log
%WINDIR%\repair\sam
%WINDIR%\repair\system
%WINDIR%\repair\software, %WINDIR%\repair\security
%WINDIR%\iis6.log
%WINDIR%\system32\config\AppEvent.Evt
%WINDIR%\system32\config\SecEvent.Evt
%WINDIR%\system32\config\default.sav
%WINDIR%\system32\config\security.sav
%WINDIR%\system32\config\software.sav
%WINDIR%\system32\config\system.sav
type %WINDIR%\system32\CCM\logs\*.log
%USERPROFILE%\ntuser.dat
%USERPROFILE%\LocalS~1\Tempor~1\Content.IE5\index.dat
%WINDIR%\System32\drivers\etc\hosts
systeminfo
driverquery
tasklist
fsutil fsinfo drives
set
qwinsta
net time
net file
net session
driverquery | findstr Kernel
sc queryex type= service state= all
netstat -ano
wevtutil el
schtasks /query /fo LIST /v
wmic product get name /value
dir /s *pass* == *key* == *vnc* == *.config*
reg query HKLM /f pass /t REG_SZ /s
reg query HKCU /f pass /t REG_SZ /s
netsh wlan show profile
netsh wlan show profile <SSID> key=clear
