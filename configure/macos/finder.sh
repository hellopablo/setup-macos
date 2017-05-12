echo "Configuring Finder"

# @todo - Set sidebar items

echo "Cleaning default directories..."
rm -rf $HOME/Downloads/*

echo "Finder - New windows open with $HOME"
defaults write com.apple.finder NewWindowTargetPath -string "$HOME"

echo "Finder - Hide internal drives from desktop"
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false

echo "Finder - Disable the warning when changing a file extension"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

echo "Finder - Use column view in all Finder windows"
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

echo "Finder - Allow text selection in Quick Look"
defaults write com.apple.finder QLEnableTextSelection -bool true

echo "Finder - New window points to home"
defaults write com.apple.finder NewWindowTarget -string "PfHm"

echo "Finder - When performing a search, search the current folder by default"
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

echo "Finder - Avoid creating .DS_Store files on network volumes"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

echo "Finder - Enable snap-to-grid for icons on the desktop and in other icon views"
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

echo "Finder - Relaunching"
killall Finder
