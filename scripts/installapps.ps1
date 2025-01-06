$progressPreference = 'silentlyContinue'
Write-Host "Installing WinGet PowerShell module from PSGallery..."
Install-PackageProvider -Name NuGet -Force | Out-Null
Install-Module -Name Microsoft.WinGet.Client -Force -Repository PSGallery | Out-Null
Write-Host "Using Repair-WinGetPackageManager cmdlet to bootstrap WinGet..."
Repair-WinGetPackageManager

Write-Host "Removing the msstore source for WinGet..."
winget source remove msstore

########################################################################################
# Install applications using WinGet

Write-Host "Installing Notepad++ using WinGet..."
winget install Notepad++.Notepad++

Write-Host "Installing 7-Zip using WinGet..."
winget install 7zip.7zip

Write-Host "Installing AHK 2.x using WinGet..."
winget install AutoHotkey.AutoHotkey

Start-Sleep -Seconds 10

Start-Process C:\scripts\clickbuttons.ahk

Start-Process https://github.com/unnerving-sprinkler/SandboxAutoClicker/blob/main/README.md