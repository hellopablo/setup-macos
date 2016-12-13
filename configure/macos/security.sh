echo "Configuring System Security"

echo "Security - Enable firewall"
sudo defaults write /Library/Preferences/com.apple.alf globalstate -int 1

echo "Security - Disable guest account"
sudo defaults write /Library/Preferences/com.apple.AppleFileServer guestAccess -bool NO
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server AllowGuestAccess -bool NO
