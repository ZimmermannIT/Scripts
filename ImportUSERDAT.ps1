Invoke-WebRequest -Uri "https://zimazfilestorage.blob.core.windows.net/scripts/NTUSER.DAT" -OutFile c:\apps\NTUSER.dat

Copy-Item -Path "c:\apps\NTUSER.dat" -Destination "C:\Users\Default" -Force