#!/bin/bash
USER=$(whoami)
if [ "$USER" = 'root' ]; then
	PREFIX=''
else
	PREFIX='sudo'
fi

$PREFIX apt-get update
$PREFIX apt-get install -y curl git gh zsh tmux ripgrep bat tree
$PREFIX apt-get install -y fasd

export DEBIAN_FRONTEND=noninteractive
$PREFIX apt-get install -y tzdata

$PREFIX chsh -s $(which zsh)

./zsh-setting.sh
