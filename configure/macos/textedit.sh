echo "Configuring TextEdit"

printf "TextEdit - Use plain text mode for new documents\n"
defaults write com.apple.TextEdit RichText -int 0

printf "TextEdit - Open and save files as UTF-8 encoding\n"
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4