#!/bin/sh

pecl install xdebug
pecl install yaml
pecl install redis
pecl install imagick    

composer global require laravel/installer
composer global require laravel/valet
composer global require hirak/prestissimo
composer global require phpunit/phpunit
composer global require phpstan/phpstan
