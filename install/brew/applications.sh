# Install applications
echo "Installing applications..."
brew install git \
             git-flow \
             mackup \
             mas \
             mysql \
             node \
             speedtest_cli \
             spoof-mac \
             sslmate \
             terminal-notifier \

# Install the PHP binaries separatly (conflicting)
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

# install the other PHP tools
brew install composer \
             box \
             php-code-sniffer \
             brew-php-switcher \
             brew install phpunit \
             nails \