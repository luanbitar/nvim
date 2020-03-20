export ZSH=$HOME/.oh-my-zsh
export FZF_DEFAULT_COMMAND='ag -g ""'
export PATH="$PATH:$HOME/Applications/flutter/bin"
ZSH_THEME='spaceship'
plugins=(
	git
	zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh
source $HOME/.bash_profile
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias vim='nvim'
alias ll='clear && tree -L 1 --dirsfirst -F -C --noreport'
alias ga='git add .'
alias gc='ga && git commit'
alias gs='git status -s'
alias gf='git fetch --all'
alias gl='git log --graph'
alias last-tag='last-tag = describe --abbrev=0 --tags'
chpwd() { ll; }


SPACESHIP_PROMPT_ORDER=(
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  package       # Package version
  node          # Node.js section
  ruby          # Ruby section
  elixir        # Elixir section
  golang        # Go section
  php           # PHP section
  rust          # Rust section
  haskell       # Haskell Stack section
  julia         # Julia section
  aws           # Amazon Web Services section
  venv          # virtualenv section
  conda         # conda virtualenv section
  pyenv         # Pyenv section
  dotnet        # .NET section
  ember         # Ember.js section
  terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

# CHAR
SPACESHIP_CHAR_SYMBOL='⚛︎ '
SPACESHIP_CHAR_COLOR_SUCCESS='cyan'
# DIR
SPACESHIP_DIR_PREFIX='' # disable directory prefix, cause it's not the first section
SPACESHIP_DIR_TRUNC='1' # show only last directory
# GIT
SPACESHIP_GIT_SYMBOL='' # disable git prefix
SPACESHIP_GIT_BRANCH_PREFIX='' # disable branch prefix too
SPACESHIP_GIT_PREFIX=''
SPACESHIP_GIT_BRANCH_COLOR='red'
SPACESHIP_GIT_STATUS_PREFIX=' '
SPACESHIP_GIT_STATUS_SUFFIX=''
SPACESHIP_GIT_STATUS_COLOR='magenta'
# NODE
SPACESHIP_NODE_PREFIX=''
# HIDING VALUES
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_KUBECONTEXT_SHOW=false
SPACESHIP_PACKAGE_SHOW=false

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/lbitar/.nvm/versions/node/v10.16.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/lbitar/.nvm/versions/node/v10.16.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/lbitar/.nvm/versions/node/v10.16.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/lbitar/.nvm/versions/node/v10.16.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/lbitar/.nvm/versions/node/v10.16.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/lbitar/.nvm/versions/node/v10.16.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh
