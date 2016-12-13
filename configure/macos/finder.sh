echo "Configuring Finder"

# @todo - Set home
# @todo - Set default view
# @todo - Set sidebar items

echo "Cleaning default directories..."
rm -rf $HOME/Downloads/*

echo "Finder - Disable the warning when changing a file extension"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

echo "Finder - Use list view in all Finder windows"
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

echo "Finder - Allow text selection in Quick Look"
defaults write com.apple.finder QLEnableTextSelection -bool true