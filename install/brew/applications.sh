# Install applications
echo "Installing applications..."
brew install git
brew install git-flow
brew install hub
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

# Install apache
sudo apachectl stop
sudo launchctl unload -w /System/Library/LaunchDaemons/org.apache.httpd.plist 2>/dev/null
brew install httpd24 --with-privileged-ports --with-http2

sudo cp -v /usr/local/Cellar/httpd24/2.4.23_2/homebrew.mxcl.httpd24.plist /Library/LaunchDaemons
sudo chown -v root:wheel /Library/LaunchDaemons/homebrew.mxcl.httpd24.plist
sudo chmod -v 644 /Library/LaunchDaemons/homebrew.mxcl.httpd24.plist
sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.httpd24.plist


# Install the PHP binaries separatly (conflicting)
xcode-select --install

brew install php53 --with-httpd24
brew install php53-mcrypt

brew unlink php53
brew install php54 --with-httpd24
brew install php54-mcrypt

brew unlink php54
brew install php55 --with-httpd24
brew install php55-mcrypt

brew unlink php55
brew install php56 --with-httpd24
brew install php56-mcrypt

brew unlink php56
brew install php70 --with-httpd24
brew install php70-mcrypt

brew unlink php70
brew install php71 --with-httpd24
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