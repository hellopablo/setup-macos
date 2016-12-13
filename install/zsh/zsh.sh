if test ! $(which zsh); then
    echo "Istalling ZSH..."
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    echo "Changing your shell, password may be required"
    chsh -s $(which zsh)
fi