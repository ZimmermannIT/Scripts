New-Item -Type Directory -Path C:\apps2

Invoke-WebRequest -Uri "https://zimazfilestorage.blob.core.windows.net/scripts/NTUSER.DAT" -OutFile c:\apps2\NTUSER.dat

Copy-Item -Path "c:\apps2\NTUSER.dat" -Destination "C:\Users\Default" -Force

remove-item -Path "C:\apps2" -Force -Recurse
