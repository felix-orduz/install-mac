#!/bin/bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile
echo 'PATH="/usr/local/bin:$PATH"' >> ~/.zshrc
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> ~/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
git -C $(brew --repo) checkout master
brew doctor