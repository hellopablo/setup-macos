echo "Configuring TextEdit"

echo "TextEdit - Use plain text mode for new documents"
defaults write com.apple.TextEdit RichText -int 0

echo "TextEdit - Open and save files as UTF-8 encoding"
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4