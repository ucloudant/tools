@echo off
call choco list --local | find /i "docker-desktop" > nul
if errorlevel 1 (
call choco install -y docker-desktop
call refreshenv
)
docker.exe %*