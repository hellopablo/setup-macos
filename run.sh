echo  "---------------------------------------------------"
echo  "New Mac Setup Script"
echo  "A simple script for automating the setup of macOS"
echo  "---------------------------------------------------"

# ZSH
echo "Installing ZSH"
source "install/zsh/zsh.sh"

# ---------------------------------------------------

# Brew
# Use brew to install command line tools and brew cask
# to install applications.
echo "Brew'ing"
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
echo "Configuring system"
source "configure/macos/dock.sh"
source "configure/macos/finder.sh"
source "configure/macos/keyboard.sh"
source "configure/macos/mail.sh"
source "configure/macos/printer.sh"
source "configure/macos/safari.sh"
source "configure/macos/security.sh"
source "configure/macos/system.sh"
source "configure/macos/textedit.sh"
source "configure/macos/trackpad.sh"
source "configure/apache.sh"
source "configure/chrome.sh"
source "configure/mysql.sh"
source "configure/sublime-text.sh"
source "configure/terminal.sh"

# ---------------------------------------------------

# All that's left now is the stuff which needs done by hand
# - Sign into Dropbox and let it sync
# - `mackup restore`
# - Android Studio
# - Creative Cloud

# ---------------------------------------------------

echo "That's all folks!"