# zsh completion
autoload -Uz compinit
compinit

export LANG=en_US.UTF-8

####### custom setting #######

# zsh syntax highlighting
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# fasd setting
eval "$(fasd --init auto)"
alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection
alias v='sf -e vim'	 # quick opening files with vim
alias c='sf -e bat'	 # quick printing files with cat

# custom alias
alias lsa="ls -lah"
alias ghw="gh repo set-default;gh repo view -w"
alias gsc="git add .;git stash;git stash clear"
alias kc="kubectl"
alias grep="rg -i"

## tmux
alias ta='tmux attach'
alias tnd='tmux new -s $(basename $PWD) -c $PWD'
alias tls='tmux ls'

## agents
alias cl=claude
alias cls="claude --dangerously-skip-permissions"

# fzf
export FZF_DEFAULT_OPTS="-i --height 100% --layout=reverse
--bind ctrl-p:preview-up,ctrl-n:preview-down"
export FZF_CTRL_R_OPTS="--height 50% --no-preview"
source ~/.fzf/shell/completion.zsh 2>/dev/null
source ~/.fzf/shell/key-bindings.zsh 2>/dev/null
bindkey 'hj' fzf-history-widget
# fzf function
fd() {
  local dir
  dir=$(find . -type d 2> /dev/null \
	  |fzf --preview 'tree -C -L 1 {}' --preview-window 'right,50%,border-left,~1')
  cd "$dir"
}

# history size
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=1000000000
export SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS

## mise
eval "$(~/.local/bin/mise activate zsh)"

## starship
eval "$(starship init zsh)"
