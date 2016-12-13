# Install Brew
# Installs brew and the various taps required
if test ! $(which brew); then
    echo "Installing Brew..."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# ---------------------------------------------------

# Tap
echo "Tapping..."
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/php
brew tap homebrew/apache
brew tap caskroom/cask
brew tap nailsapp/utilities
brew tap shedcollective/utilities
brew tap hellopablo/utilities

# ---------------------------------------------------

# Update brew
echo "Updating Brew..."
brew update