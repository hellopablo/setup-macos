echo "Configuring the Safari"

echo "Safari - Hide bookmarks bar"
defaults write com.apple.Safari ShowFavoritesBar -bool false

echo "Safari - Use Contains instead of Starts With in search banners"
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false

echo "Safari - Enable debug menu"
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

echo "Safari - Enable the Develop menu and the Web Inspector"
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

echo "Safari - Add a context menu item for showing the Web Inspector in web views"
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true