echo  "---------------------------------------------------"
echo  "New Mac Setup Script"
echo  "A simple script for automating the setup of macOS"
echo  "---------------------------------------------------"

echo "Caffeinating"
caffeinate -t 3600 &

echo "Xcode setup correctly"
sudo xcode-select -s /Applications/Xcode.app

echo "Agree to xcode license"
sudo xcodebuild -license accept

# ---------------------------------------------------

echo "Creating a cache directory"
CACHE="$HOME/setup_cache"
mkdir $CACHE

# ---------------------------------------------------

# ZSH
source "install/zsh/zsh.sh"

# ---------------------------------------------------

# Brew
# Use brew to install command line tools and brew cask to install applications.
source "install/brew/brew.sh"
source "install/brew/applications.sh"
source "install/brew/casks.sh"

# ---------------------------------------------------

# MAS
echo "MAS'ing"
source "install/mas/mas.sh"

# ---------------------------------------------------

# Configure the OS and Applications
echo "Configuring System"
find ./configure -type f -name "*.sh" | while read FILE ; do source "$FILE"; done;

# ---------------------------------------------------

echo "Clearing cache directory"
rm -rf $CACHE

# ---------------------------------------------------

echo ""
echo ""
echo "That's all folks!"
echo "Remember to restore application settings via mackup once Dropbox is synced."
