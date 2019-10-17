@echo off
setlocal
if not exist %ALLUSERSPROFILE%\chocolatey\bin\choco.exe (
  powershell -NoProfile -InputFormat None -ExecutionPolicy Bypass ^
    -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
)
%ALLUSERSPROFILE%\chocolatey\bin\choco.exe %*