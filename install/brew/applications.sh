# Install applications
echo "Installing applications..."
brew install composer \
             box \
             git \
             git-flow \
             mackup \
             mas \
             mysql \
             nails \
             node \
             php56 \
             php56-mcrypt \
             php-code-sniffer \
             brew-php-switcher \
             phpunit \
             speedtest_cli \
             spoof-mac \
             sslmate \
             terminal-notifier \

# Install the PHP binaries separatly (conflicting)
brew unlink php56
brew install php70 \
             php70-mcrypt

brew unlink php70
brew install php71 \
             php71-mcrypt

brew unlink php71
brew link php56