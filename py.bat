@echo off
call choco list --local | find /i "python" > nul
if errorlevel 1 (
call choco install -y python
call refreshenv
)
py.exe %*