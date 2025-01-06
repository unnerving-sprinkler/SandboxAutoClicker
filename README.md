# Windows Sandbox Auto Clicker

## Prerequisite
 - Late Versions of Windows 10 or Any Windows 11 Installed
 - Windows Sandbox Installed On System [link](https://learn.microsoft.com/en-us/windows/security/application-security/application-isolation/windows-sandbox/windows-sandbox-overview)

## How Does It work:
config.wsb: launches a windows sandbox attaching the scripts folder to the C: drive of that sandbox as a read-only, then runs a powershell file which (1) Installs [winget](https://learn.microsoft.com/en-us/windows/package-manager/winget/) (2) Installs Notepad++, 7zip, and AutoHotKey (3) Launches the AutoHotKey Script 

clickbuttons.ahk: Waits for keyboard commands to start auto-clicking (see instructions)

## Instructions
0. Have [Windows Sandbox](https://learn.microsoft.com/en-us/windows/security/application-security/application-isolation/windows-sandbox/windows-sandbox-overview) Installed On System
1. Clone Repo To Your Machine
2. Launch config.wsb (This will launch the sandbox, you will see powershell open and start installing winget on the sandbox. Depending on PC configuration this may take up to 3 minutes)
3. After powershell is done isntalling apps auto-click is ready to go, see below for hotkeys

| KEY      | FUNCTION |
| -------- | ------- |
| F1  | START THE CLICKING (WILL CLICK ONCE PER SECOND)                              |
| F2  | STOP THE CLICKING                                                            |
| F3  | SET CLICK POSITION (HOVER MOUSE OVER WHERE YOU WANT TO CLICK THEN HIT F3)    |
