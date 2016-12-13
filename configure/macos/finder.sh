echo "Configuring Finder"

# @todo - Set home
# @todo - Set default view
# @todo - Set sidebar items

printf "Cleaning default directories...\n"
rm -rf $HOME/Downloads/*

printf "Finder - Disable the warning when changing a file extension\n"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

printf "Finder - Use list view in all Finder windows\n"
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

printf "Finder - Allow text selection in Quick Look\n"
defaults write com.apple.finder QLEnableTextSelection -bool true