echo "Configuring the Dock"

# @todo - Set icons (possible?)
# @todo - Set size
# @todo - Set Magnification On

printf "Dock - Remove all default app icons\n"
defaults write com.apple.dock persistent-apps -array

printf "Dock - Automatically hide and show\n"
defaults write com.apple.dock autohide -bool true

printf "Dock - Remove the auto-hiding delay\n"
defaults write com.apple.Dock autohide-delay -float 0

printf "Dock - Don’t show Dashboard as a Space\n"
defaults write com.apple.dock "dashboard-in-overlay" -bool true