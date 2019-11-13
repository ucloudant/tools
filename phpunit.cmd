@echo off
call where phpunit.bat 2>&1 | find /i "phpunit.bat" > nul
if errorlevel 1 (
call composer global require phpunit/phpunit
)
phpunit.bat %*