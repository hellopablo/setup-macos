# Install applications
echo "Installing applications..."
brew tap shedcollective/utilities
brew tap nails/utilities
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
    curl \
    wget \
    openssl \
    zsh zsh-completions \
    composer \
    php@7.3 \
    php-code-sniffer \
    doctl \
    circleci \
    # For singing git commits
    gnupg pinentry-mac

