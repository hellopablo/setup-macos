# Install applications
echo "Installing applications..."
brew install git
brew install git-flow
brew install mackup
brew install mas
brew install mysql
brew services start mysql
brew install node
brew install speedtest_cli
brew install spoof-mac
brew install sslmate
brew install terminal-notifier
brew install zsh zsh-completions

# Install the PHP binaries separatly (conflicting)
xcode-select --install
brew install php56 --with-apache
brew install php56-mcrypt

brew unlink php56
brew install php70 --with-apache
brew install php70-mcrypt

brew unlink php70
brew install php71 --with-apache
brew install php71-mcrypt

brew unlink php71
brew link php56

# Install the other PHP tools
brew install composer
brew install box
brew install php-code-sniffer
brew install brew-php-switcher
brew install phpunit
brew install nails