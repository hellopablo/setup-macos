if test ! $(which zsh); then
    echo "Istalling ZSH..."
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi