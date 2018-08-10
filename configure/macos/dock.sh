echo "Configuring the Dock"

echo "Dock - Remove all default app icons"
defaults write com.apple.dock persistent-apps -array

echo "Adding app icons"
files=(
    "Chrome.app"
    "Things3.app"
    "Messages.app"
    "Calendar.app"
    "Slack.app"
    "Sequel Pro.app"
    "PhpStorm.app"
    "Sublime Text.app"
    "Tower.app"
)
for APP in "${files[@]}"
do
    defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/$APP</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
done

# @todo - folder icons (screenshots + downloads)

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
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
defaults write com.apple.dock "wvous-bl-corner" -int 10
defaults write com.apple.dock "wvous-bl-modifier" -int 0

defaults write com.apple.dock "wvous-br-corner" -int 4
defaults write com.apple.dock "wvous-br-modifier" -int 0

defaults write com.apple.dock "wvous-tl-corner" -int 2
defaults write com.apple.dock "wvous-tl-modifier" -int 0

defaults write com.apple.dock "wvous-tr-corner" -int 12
defaults write com.apple.dock "wvous-tr-modifier" -int 0

echo "Dock - relaunching"
killAll Dock
