@echo off
if not exist %~dp0composer.phar (
call php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
call php composer-setup.php --install-dir=%~dp0
call php -r "unlink('composer-setup.php');"
)
set COMPOSER_MEMORY_LIMIT=-1
php %~dp0composer.phar %*