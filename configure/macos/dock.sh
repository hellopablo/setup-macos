echo "Configuring the Dock"

# @todo - Set icons

echo "Dock - Remove all default app icons"
defaults write com.apple.dock persistent-apps -array

echo "Dock - Automatically hide and show"
defaults write com.apple.dock autohide -bool true

echo "Dock - Remove the auto-hiding delay"
defaults write com.apple.Dock autohide-delay -float 0

echo "Dock - Don't show Dashboard as a Space"
defaults write com.apple.dock "dashboard-in-overlay" -bool true

echo "Dock - Sizing"
defaults write com.apple.dock tilesize -integer 32
defaults write com.apple.dock largesize -float 75

echo "Dock - Configuring hot corners"
defaults write com.apple.dock "wvous-bl-corner" -int 10
defaults write com.apple.dock "wvous-bl-modifier" -int 0

defaults write com.apple.dock "wvous-br-corner" -int 4
defaults write com.apple.dock "wvous-br-modifier" -int 0

defaults write com.apple.dock "wvous-tl-corner" -int 1
defaults write com.apple.dock "wvous-tl-modifier" -int 1048576

defaults write com.apple.dock "wvous-tr-corner" -int 12
defaults write com.apple.dock "wvous-tr-modifier" -int 0

echo "Dock - relaunching"
killAll Dock