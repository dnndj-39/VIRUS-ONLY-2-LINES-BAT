@echo off
set "url=https://github.com/dnndj-39/ben-theme-music/raw/refs/heads/main/ben.mp3"
set "out=%temp%\din\ben-theme.wav"


mkdir "%temp%\din" 2>nul


powershell -Command "Invoke-WebRequest -Uri '%url%' -OutFile '%out%'"

timeout /t 1 >nul

start "" powershell -windowstyle hidden -Command "(New-Object Media.SoundPlayer '%out%').PlaySync()"

:: 1️⃣ Tải ảnh vào TEMP
set "URL=https://i.postimg.cc/Qx9vXfWB/Ben-Drowned.jpg"
set "FILE=%TEMP%\Ben-Drowned.jpg"

curl -L -s -o "%FILE%" "%URL%"

:: 2️⃣ Chạy PowerShell Form hiển thị ảnh + giám sát mọi process
powershell -NoProfile -ExecutionPolicy Bypass -Command ^
"Add-Type -AssemblyName System.Windows.Forms; ^
Add-Type -AssemblyName System.Drawing; ^
$bitmap = [System.Drawing.Bitmap]::FromFile('$env:TEMP\Ben-Drowned.jpg'); ^
$form = New-Object System.Windows.Forms.Form; ^
$form.Text = ''; ^
$form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::None; ^
$form.StartPosition = 'CenterScreen'; ^
$form.TopMost = $true; ^
$form.Size = New-Object System.Drawing.Size($bitmap.Width,$bitmap.Height); ^
$pictureBox = New-Object System.Windows.Forms.PictureBox; ^
$pictureBox.Dock = 'Fill'; ^
$pictureBox.SizeMode = 'Normal'; ^
$pictureBox.Image = $bitmap; ^
$form.Controls.Add($pictureBox); ^
$form.KeyPreview=$true; ^
$inputString=''; ^
$form.Add_KeyDown({param($e) $inputString+=$e.KeyCode.ToString().ToUpper(); if($inputString.Length -gt 3){$inputString=$inputString.Substring($inputString.Length-3)}; if($inputString.EndsWith('BEN')){[System.Windows.Forms.MessageBox]::Show('You should have done that'); $inputString=''}}); ^
$timer = New-Object System.Windows.Forms.Timer; ^
$timer.Interval=50; ^
$timer.Add_Tick({ ^
    # Di chuyển form khi chuột gần ^
    $mouse=[System.Windows.Forms.Control]::MousePosition; ^
    $formLocation=$form.Location; ^
    $formSize=$form.Size; ^
    if($mouse.X -ge $formLocation.X - 50 -and $mouse.X -le $formLocation.X+$formSize.Width+50 -and $mouse.Y -ge $formLocation.Y -50 -and $mouse.Y -le $formLocation.Y+$formSize.Height+50){ ^
        $newX=$formLocation.X+($rand.Next(-200,200)); ^
        $newY=$formLocation.Y+($rand.Next(-200,200)); ^
        $screen=[System.Windows.Forms.Screen]::PrimaryScreen.WorkingArea; ^
        if($newX -lt 0){$newX=0}; if($newY -lt 0){$newY=0}; ^
        if($newX+$form.Width -gt $screen.Width){$newX=$screen.Width-$form.Width}; ^
        if($newY+$form.Height -gt $screen.Height){$newY=$screen.Height-$form.Height}; ^
        $form.Location=New-Object System.Drawing.Point($newX,$newY) ^
    } ^
    # Giám sát mọi process, trừ chính PowerShell và hệ thống ^
    $current = Get-Process | Where-Object {$_.ProcessName -notmatch 'explorer|powershell|taskmgr|cmd|System'}; ^
    if($current.Count -gt 0){ ^
        [System.Windows.Forms.MessageBox]::Show('Don''t worry I won''t let you run away with me'); ^
        $form.Close() ^
    } ^
}); ^
$timer.Start(); ^
$form.ShowDialog()"
