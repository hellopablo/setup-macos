echo "Configuring Safari"

# @todo - enable full address

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

echo "Safari - Warn About Fraudulent Websites"
defaults write com.apple.Safari WarnAboutFraudulentWebsites -bool true

echo "Safari - Block pop-up windows"
defaults write com.apple.Safari WebKitJavaScriptCanOpenWindowsAutomatically -bool false
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaScriptCanOpenWindowsAutomatically -bool false

echo "Safari - Don't even ask about the push notifications"
defaults write com.apple.Safari CanPromptForPushNotifications -bool false

echo "Safari - Update extensions automatically"
defaults write com.apple.Safari InstallExtensionUpdatesAutomatically -bool true