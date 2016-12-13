echo "Configuring Chrome..."

echo "Chrome - Prevent native print dialog, use system dialog instead"
defaults write com.google.Chrome DisablePrintPreview -boolean true
