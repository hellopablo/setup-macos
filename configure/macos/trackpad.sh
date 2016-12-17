echo "Configuring the Trackpad"

echo "Trackpad - Use CONTROL (^) with scroll to zoom"
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144

echo "Trackpad - Enable right-click"
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true

echo "Trackpad - Tracking speed"
defaults write -g com.apple.mouse.scaling 3.5