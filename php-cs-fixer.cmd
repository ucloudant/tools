@echo off
call where php-cs-fixer 2>&1 | find /i "php-cs-fixer" > nul
if errorlevel 1 (
call composer global require friendsofphp/php-cs-fixer
)
php-cs-fixer.bat %*