@echo off
call choco list --local | find /i "golang" > nul
if errorlevel 1 (
call choco install -y golang
call refreshenv
)
go.exe %*