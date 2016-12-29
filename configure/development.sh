echo "Configuring the development environment..."

echo "Development - Creating Sites folder"
mkdir ~/Sites

echo "Generating SSH keypair (choose a secure password, we'll add it to the keychain next)"
ssh-keygen

echo "Adding key to the keychain"
ssh-add