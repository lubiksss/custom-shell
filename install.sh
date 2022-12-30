#!/bin/bash
apt-get update
apt-get install -y curl
apt-get install -y git
apt-get install -y zsh
apt-get install -y tmux
chsh -s `which zsh`

./zsh-setting.sh
