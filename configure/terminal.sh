echo "Configuring Terminal..."

echo "Terminal - Only use UTF-8 in Terminal.app"
defaults write com.apple.terminal StringEncodings -array 4

echo "Terminal - Window Size"
defaults write com.apple.terminal rowCount -int 47
defaults write com.apple.terminal columnCount -int 182

echo "Terminal - Theme"
defaults write com.apple.Terminal "Default Window Settings" -string "Pro"
defaults write com.apple.Terminal "Startup Window Settings" -string "Pro"
