@echo off
call where phpcs.bat 2>&1 | find /i "phpcs.bat" > nul
if errorlevel 1 (
call composer global require squizlabs/php_codesniffer
)
phpcs.bat %*