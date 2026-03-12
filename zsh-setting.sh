#!/bin/zsh

# dotfiles
cp -rf .vimrc ~/.vimrc
cp -rf .zshrc ~/.zshrc
cp -rf .tmux.conf ~/.tmux.conf

# starship
curl -sS https://starship.rs/install.sh | sh -s -- -y
mkdir -p ~/.config
cp -rf starship.toml ~/.config/starship.toml

# mise
curl https://mise.jdx.dev/install.sh | sh

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/zsh-syntax-highlighting

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all

# vim
mkdir -p ~/.vim
cp -rf bundle ~/.vim/bundle

source ~/.zshrc
