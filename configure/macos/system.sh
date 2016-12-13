echo "Configuring the System"

echo "System - Expand save panel by default"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

echo "System - Disable the 'Are you sure you want to open this application?' dialog"
defaults write com.apple.LaunchServices LSQuarantine -bool false

echo "System - Require password 5 minutes after sleep or screen saver begins"
defaults write com.apple.screensaver askForPassword -int 300
defaults write com.apple.screensaver askForPasswordDelay -int 300

echo "System - Avoid creating .DS_Store files on network volumes"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

echo "System - Automatically restart if system freezes"
sudo systemsetup -setrestartfreeze on

echo "System - Bluetooth - Increase sound quality for headphones/headsets"
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

echo "System - 24hr clock"
defaults write NSGlobalDomain AppleICUForce12HourTime -bool false

echo "System - Check for software updates daily, not just once per week"
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

echo "System - Disable smart quotes and dashes"
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false