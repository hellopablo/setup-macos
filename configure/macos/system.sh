echo "Configuring the System"

echo "System - Enable user interface sound effects"
defaults write -g "com.apple.sound.beep.feedback" -bool true

echo "System - Enable feedback when volume is changed"
defaults write "com.apple.systemsound" "com.apple.sound.uiaudio.enabled" -bool true

echo "System - Expand save panel by default"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

echo "System - Disable the 'Are you sure you want to open this application?' dialog"
defaults write com.apple.LaunchServices LSQuarantine -bool false

echo "System - Require password 5 minutes after sleep or screen saver begins"
defaults write com.apple.screensaver askForPassword -int 1
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

echo "System - Build the locate database"
sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist

echo "System - Enable SSH"
sudo launchctl load -w /System/Library/LaunchDaemons/ssh.plist

echo "System - Disable guest login"
sudo defaults write /Library/Preferences/com.apple.loginwindow GuestEnabled -bool false

echo "System - Enable Back To My Mac"
sudo defaults write com.apple.NetworkBrowser backToMyMacEnabled -bool true