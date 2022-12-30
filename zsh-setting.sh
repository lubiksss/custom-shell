#!/bin/zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# fasd setting
apt-get install -y fasd

# fzf setting
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

mv .zshrc ~/.zshrc

source ~/.zshrc
