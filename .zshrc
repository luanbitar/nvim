export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
source $HOME/.bash_profile
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias vim='nvim'
alias ll='clear && tree -L 1 --dirsfirst -F -C --noreport'
chpwd() { clear; ll; }

ZSH_THEME='avit'

plugins=(
	git
	zsh-autosuggestions
)

