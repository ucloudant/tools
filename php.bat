@echo off
call choco list --local | find /i "php" > nul
if errorlevel 1 (
call choco install -y php
call refreshenv
)
php.exe %*