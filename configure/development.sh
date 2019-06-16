echo "Configuring the development environment..."

echo "Development - Creating Sites folder"
mkdir ~/Sites

echo "Development - Creating GitRepos folder"
mkdir ~/Sites/GitRepos

if [ ! -d ~/.ssh ]; then
    echo "Development - Creating SSH folder"
    mkdir ~/.ssh
fi

if [ ! -d ~/.ssh/id_rsa ]; then
    echo "Development - Generating SSH keypair (choose a secure password, we'll add it to the keychain next)"
    ssh-keygen
fi

if [ ! -d ~/.ssh/id_rsa ]; then
    echo "Development - Generating GCP SSH keypair (choose a secure password, we'll add it to the keychain next)"
    ssh-keygen -b 4096 -f ~/.ssh/gcp -C p@shedcollective.org -o -a 500
fi


echo "Development - Adding keys to the keychain"
ssh-add
