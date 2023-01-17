/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/forduz/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/forduz/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew install zsh nvm tree ack git vim pyenv

git clone https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
cd ~/.vim_runtime && git pull --rebase && cd -
git clone https://github.com/square/maximum-awesome.git
cd maximum-awesome
rake

brew tap railwaycat/emacsmacport
brew install --cask emacs-mac

brew install python

brew install --cask \
    visual-studio-code \
    google-chrome \
    postman \
    spotify \
    vlc \
    jetbrains-toolbox \
    datagrip \
    tunnelblick \
    intellij-idea \ 
    iterm2 \ 
    docker \ 
    readdle-spark \ 
    slack \ 
    the-unarchiver

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)

## SDKMAN
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install java 19-zulu

## NodeJS
mkdir ~/.nvm
echo "export NVM_DIR=\"\$HOME/.nvm\"" >> ~/.zshrc
echo '[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm' >> ~/.zshrc
echo '[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion' >> ~/.zshrc

echo "export NVM_DIR=\"\$HOME/.nvm\"" >> ~/.bash_profile
echo '[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm' >> ~/.bash_profile
echo '[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion' >> ~/.bash_profile

source ~/.zshrc
nvm install node

brew install --cask docker
brew services restart docker-machine
