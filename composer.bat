@echo off
call choco list --local | find /i "composer" > nul
if errorlevel 1 (
call choco install -y composer
call refreshenv
)
php %ALLUSERSPROFILE%\ComposerSetup\bin\composer.phar %*