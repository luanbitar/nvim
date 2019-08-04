export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
source $HOME/.bash_profile
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias vim='nvim'
alias ll='clear && tree -L 1 --dirsfirst -F -C --noreport'
alias ga='git add .'
alias gc='git commit'
alias gs='git status -s'
alias gf='git fetch --all'
alias gl='git log --graph'
chpwd() { clear; ll; }

ZSH_THEME='avit'

plugins=(
	git
	zsh-autosuggestions
)

