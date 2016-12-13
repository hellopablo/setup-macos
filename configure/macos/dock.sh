echo "Configuring the Dock"

# @todo - Set icons (possible?)
# @todo - Set size
# @todo - Set Magnification On

echo "Dock - Remove all default app icons"
defaults write com.apple.dock persistent-apps -array

echo "Dock - Automatically hide and show"
defaults write com.apple.dock autohide -bool true

echo "Dock - Remove the auto-hiding delay"
defaults write com.apple.Dock autohide-delay -float 0

echo "Dock - Don’t show Dashboard as a Space"
defaults write com.apple.dock "dashboard-in-overlay" -bool true