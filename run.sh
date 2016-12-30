echo  "---------------------------------------------------"
echo  "New Mac Setup Script"
echo  "A simple script for automating the setup of macOS"
echo  "---------------------------------------------------"

echo "Caffeinating"
caffeinate -t 3600 &

# ---------------------------------------------------

echo "Creating a cache directory"
CACHE="$HOME/setup_cache"
mkdir $CACHE

# ---------------------------------------------------

# ZSH
source "install/zsh/zsh.sh"

# ---------------------------------------------------

# Brew
# Use brew to install command line tools and brew cask
# to install applications.
source "install/brew/brew.sh"
source "install/brew/applications.sh"
source "install/brew/casks.sh"

# ---------------------------------------------------

# NPM
echo "NPM'ing"
source "install/npm/npm.sh"

# ---------------------------------------------------

# MAS
echo "MAS'ing"
source "install/mas/mas.sh"

# ---------------------------------------------------

# Docker Containers
echo "Docker'ing"
source "install/docker/docker.sh"

# ---------------------------------------------------

# Nativefier Apps
echo "Nativefier'ing"
source "install/nativefier/nativefier.sh"

# ---------------------------------------------------

# Configure the OS and Applications
echo "Configuring System"
find ./configure -type f -name "*.sh" | while read FILE ; do source "$FILE"; done;


# ---------------------------------------------------

# All that's left now is the stuff which needs done by hand
# - Android Studio
# - Creative Cloud

# ---------------------------------------------------

echo "Clearing cache directory"
rm -rf $CACHE

# ---------------------------------------------------

echo ""
echo ""
echo "That's all folks!"
echo "Rememebr to restore application settings via mackup once Dropbox is synced."
