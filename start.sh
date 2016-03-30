#!/bin/sh

# Copy some files over to the right place......................................
cp .bash_profile  ~/.bash_profile
cp .bash_prompt ~/.bash_prompt
cp .gemrc ~/.gemrc

# Install Homebrew.............................................................
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install some homebrew things.................................................
brew install caskroom/cask/brew-cask
brew install bash-completion
brew install git-flow
brew install mongodb
brew install rbenv
brew install mysql
brew install wget
brew install bash
brew install node

brew tap caskroom/versions

# Configure Ruby...............................................................
rbenv install 2.3.0
rbenv global 2.3.0

# Install some global NPM packages.............................................
npm install -g handlebars
npm install -g bower
npm install -g gulp

# Install Composer.............................................................
php -r "readfile('https://getcomposer.org/installer');" > composer-setup.php
php -r "if (hash('SHA384', file_get_contents('composer-setup.php')) === '41e71d86b40f28e771d4bb662b997f79625196afcca95a5abf44391188c695c6c1456e16154c75a211d238cc3bc5cb47') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer

# Install some global Composer packages........................................
composer global require joecianflone/heisenberg-toolkit-installer
composer global require squizlabs/php_codesniffer
composer global require roave/securityadvisories
composer global require laravel/lumen-installer
composer global require laravel/installer
composer global require hirak/prestissimo
composer global require phpunit/phpunit
composer global require phpspec/phpspec

# Install some apps............................................................
brew cask install browserstacklocal
brew cask install google-chrome
brew cask install sublime-text
brew cask install screenhero
brew cask install sourcetree
brew cask install sequel-pro
brew cask install imagealpha
brew cask install rescuetime
brew cask install virtualbox
brew cask install imageoptim
brew cask install 1password
brew cask install spectacle
brew cask install phpstorm
brew cask install chromium
brew cask install evernote
brew cask install skyfonts
brew cask install dropbox
brew cask install firefox
brew cask install vagrant
brew cask install alfred
brew cask install pandoc
brew cask install sketch
brew cask install slack
brew cask install gyazo
brew cask install flux
