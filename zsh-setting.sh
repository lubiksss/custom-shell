#!/bin/zsh
USER=`whoami`
if [ $USER = 'root' ]; then
	PREFIX=''
else
	PREFIX='sudo'
fi

curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

cp -rf .vimrc ~/.vimrc
cp -rf .zshrc ~/.zshrc
cp -rf .tmux.conf ~/.tmux.conf

# powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

# syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/zsh-syntax-highlighting

# vim
$PREFIX apt-get install -y vim
mkdir -p ~/.vim/colors
cp -rf ghdark.vim ~/.vim/colors
echo 'colorscheme ghdark' >> ~/.vimrc
echo 'let g:gh_color = "soft"' >> ~/.vimrc


# fasd
$PREFIX apt-get install -y fasd

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all

# vi-mode
cp -rf vi-mode.plugin.zsh ~/.oh-my-zsh/plugins/vi-mode

source ~/.zshrc
