# Install applications
echo "Installing applications..."
brew tap shedcollective/utilities
brew tap nails/utilities
brew install \
    curl --with-libssh2 --with-openssl
brew install \
    shed \
    nails \
    git \
    git-flow \
    hub \
    mackup \
    mas \
    node \
    speedtest_cli \
    spoof-mac \
    wget \
    openssl \
    zsh zsh-completions \
    composer \
    php@7.4 \
    php-code-sniffer \
    doctl \
    circleci \
    # For singing git commits
    gnupg pinentry-mac

