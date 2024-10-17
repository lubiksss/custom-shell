#!/bin/bash
USER=`whoami`
if [ $USER = 'root' ]; then
	PREFIX=''
else
	PREFIX='sudo'
fi

$PREFIX apt-get update
$PREFIX apt-get install -y curl
$PREFIX apt-get install -y xclip

$PREFIX apt-get install -y git
$PREFIX apt-get install -y gh

$PREFIX apt-get install -y zsh
$PREFIX apt-get install -y tmux
$PREFIX apt-get install -y ripgrep

export DEBIAN_FRONTEND=noninteractive
$PREFIX apt-get install -y tzdata

$PREFIX chsh -s `which zsh`

./zsh-setting.sh
