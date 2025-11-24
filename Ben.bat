@echo off
:: Tạo folder tạm
set "tempdir=%temp%\ren"
mkdir "%tempdir%" 2>nul

:: Download nhạc
set "url=https://github.com/dnndj-39/ben-theme-music/raw/refs/heads/main/ben.mp3"
set "out=%tempdir%\ben-theme.wav"

powershell -Command "Invoke-WebRequest -Uri '%url%' -OutFile '%out%'"

:: Phát nhạc (ẩn PowerShell)
start "" powershell -windowstyle hidden -Command "(New-Object Media.SoundPlayer '%out%').PlaySync()"

:: Download ảnh
set "imgUrl=https://i.postimg.cc/Qx9vXfWB/Ben-Drowned.jpg"
set "imgFile=%tempdir%\Ben-Drowned.jpg"

powershell -Command "Invoke-WebRequest -Uri '%imgUrl%' -OutFile '%imgFile%'"

:: Chạy form WinForms
powershell -NoProfile -ExecutionPolicy Bypass -Command ^
"Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; ^
$bitmap = [System.Drawing.Image]::FromFile('%imgFile%'); ^
$form = New-Object System.Windows.Forms.Form; ^
$form.FormBorderStyle = 'None'; ^
$form.StartPosition = 'CenterScreen'; ^
$form.TopMost = $true; ^
$form.Size = $bitmap.Size; ^
$form.BackgroundImage = $bitmap; ^
$form.BackgroundImageLayout = 'Stretch'; ^
$rand = New-Object System.Random; ^
$timer = New-Object System.Windows.Forms.Timer; ^
$timer.Interval = 50; ^
$timer.Add_Tick({ ^
    $mouse = [System.Windows.Forms.Control]::MousePosition; ^
    $loc = $form.Location; ^
    $size = $form.Size; ^
    if( ($mouse.X -ge $loc.X - 50) -and ($mouse.X -le $loc.X + $size.Width + 50) -and ^
        ($mouse.Y -ge $loc.Y - 50) -and ($mouse.Y -le $loc.Y + $size.Height + 50) ) { ^
        $newX = $loc.X + $rand.Next(-120,120); ^
        $newY = $loc.Y + $rand.Next(-120,120); ^
        $screen = [System.Windows.Forms.Screen]::PrimaryScreen.WorkingArea; ^
        if($newX -lt 0){$newX = 0}; if($newY -lt 0){$newY = 0}; ^
        if($newX + $form.Width -gt $screen.Width){$newX = $screen.Width - $form.Width}; ^
        if($newY + $form.Height -gt $screen.Height){$newY = $screen.Height - $form.Height}; ^
        $form.Location = New-Object System.Drawing.Point($newX,$newY); ^
    } ^
}); ^
$timer.Start(); ^
[System.Windows.Forms.Application]::Run($form);"
