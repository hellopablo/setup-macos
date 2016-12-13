echo "Configuring the Mail"

# @todo - default mail client

echo "Mail - Copy email addresses as 'foo@example.com' instead of 'Foo Bar <foo@example.com>'"
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

echo "Mail - Disable send animation"
defaults write com.apple.mail DisableSendAnimations -bool true

echo "Mail - Disable reply animation"
defaults write com.apple.mail DisableReplyAnimations -bool true

echo "Mail - Enable COMMAND+ENTER to send mail"
defaults write com.apple.mail NSUserKeyEquivalents -dict-add "Send" -string "@\\U21a9"