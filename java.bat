@echo off
call choco list --local | find /i "openjdk" > nul
if errorlevel 1 (
call choco install -y openjdk
call refreshenv
)
java.exe %*