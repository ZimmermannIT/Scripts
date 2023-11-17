try
{
Invoke-WebRequest -Uri "https://zimazfilestorage.blob.core.windows.net/scripts/Apparel 21 Client Framework 8.12.exe" -OutFile C:\Windows\Temp\Ap21.exe

& 'C:\Windows\Temp\Ap21.exe'/S /SyncOnStartup=1 /SyncLive=1 /SyncTest=1 /SyncNow=0 /ServerName=ap21db

start-sleep -Seconds 400

$shell = New-Object -comObject WScript.Shell
$shortcut = $shell.CreateShortcut("C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Sync.lnk")
$shortcut.TargetPath = "C:\Program Files (x86)\Apparel 21\Apparel 21 ERP\sync.exe"
$shortcut.WorkingDirectory = "C:\Program Files (x86)\Apparel 21\Apparel 21 ERP"
$shortcut.Save()

Write-Output "Ap21 installed and startup shortcut created"

}
catch
{

Write-Output "Error"

}
