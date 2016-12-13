# ---------------------------------------------------
# Setup Script
#
# A simple script for automating the setup of macOS
#
# ---------------------------------------------------

# ZSH
echo "Installing ZSH"
import "install/zsh/zsh.sh"

# ---------------------------------------------------

# Brew
# Use brew to install command line tools and brew cask
# to install applications.
echo "Brew'ing"
import "install/brew/brew.sh"
import "install/brew/applications.sh"
import "install/brew/casks.sh"

# ---------------------------------------------------

# NPM
echo "NPM'ing"
import "install/npm/npm.sh"

# ---------------------------------------------------

# MAS
echo "MAS'ing"
import "install/mas/mas.sh"

# ---------------------------------------------------

# Docker Containers
echo "Docker'ing"
import "install/docker/docker.sh"

# ---------------------------------------------------

# Nativefier Apps
echo "Nativefier'ing"
import "install/nativefier/nativefier.sh"

# ---------------------------------------------------

# Configure the OS and Applications
echo "Configuring system"
import "configure/macos/dock.sh"
import "configure/macos/finder.sh"
import "configure/macos/keyboard.sh"
import "configure/macos/mail.sh"
import "configure/macos/printer.sh"
import "configure/macos/safari.sh"
import "configure/macos/security.sh"
import "configure/macos/system.sh"
import "configure/macos/textedit.sh"
import "configure/macos/trackpad.sh"
import "configure/apache.sh"
import "configure/chrome.sh"
import "configure/mysql.sh"
import "configure/sublime-text.sh"

# ---------------------------------------------------

# All that's left now is the stuff which needs done by hand
# - Sign into Dropbox and let it sync
# - `mackup restore`
# - Android Studio
# - Creative Cloud

# ---------------------------------------------------

echo "That's all folks!"