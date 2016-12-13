echo "Configuring the System"

# @todo - hotcorners

printf "System - Expand save panel by default\n"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

printf "System - Disable the 'Are you sure you want to open this application?' dialog\n"
defaults write com.apple.LaunchServices LSQuarantine -bool false

printf "System - Require password immediately after sleep or screen saver begins\n"
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

printf "System - Avoid creating .DS_Store files on network volumes\n"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

printf "System - Automatically restart if system freezes\n"
systemsetup -setrestartfreeze on

printf "Bluetooth - Increase sound quality for headphones/headsets\n"
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40