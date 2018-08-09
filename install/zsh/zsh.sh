if [ ! -d "~/.oh-my-zsh" ]; then
    echo "Installing Oh My ZSH!..."
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

if [ ! -n "$ZSH_VERSION" ]; then
    echo "Changing your shell, password may be required"
    chsh -s $(which zsh)
fi
