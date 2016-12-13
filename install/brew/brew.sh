# Install Brew
# Installs brew and the various taps required
if test ! $(which brew); then
    echo "Installing Brew..."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# ---------------------------------------------------

# Tap
echo "Tapping..."
brew tap caskroom/cask \
         nailsapp/utilities \
         shedcollective/utilities \
         hellopablo/utilities \

# ---------------------------------------------------

# Update brew
echo "Updating Brew..."
brew update