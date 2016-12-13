echo "Configuring the Trackpad"

printf "Trackpad - Use CONTROL (^) with scroll to zoom\n"
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144

printf "Trackpad - Enable right-click\n"
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true