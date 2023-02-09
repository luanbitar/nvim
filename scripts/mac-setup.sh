clear

HOME="/Users/"$(whoami)

sudo -v

# homebrew
if ! [ -x "$(command -v brew)" ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo '# Set PATH, MANPATH, etc., for Homebrew.' >> "$HOME/.zshrc"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "$HOME/.zshrc"
  eval "$(/opt/homebrew/bin/brew shellenv)"
  brew install --cask visual-studio-code iterm2 google-chrome slack notion 1password spotify whatsapp zoom
  brew install neovim fliqlo gh ripgrep wget
  echo "brew installed successfully" >&2
else
  echo "brew already installed, skipped" >&2
fi

# gpg
# following guide: https://gist.github.com/troyfontaine/18c9146295168ee9ca2b30c00bd1b41e
if ! [ -d "$HOME/.gnupg" ]; then
  brew install gnupg gpg2 pinentry-mac
  mkdir ~/.gnupg
  echo "pinentry-program $(brew --prefix)/bin/pinentry-mac" > ~/.gnupg/gpg-agent.conf
  echo "use-agent" > ~/.gnupg/gpg.conf
  echo 'export GPG_TTY=$(tty)' >> "$HOME/.zshrc"
  chmod 700 ~/.gnupg
  killall gpg-agent
  git config --global gpg.program $(which gpg)
  echo "gpg installed successfully" >&2
else
   echo "gpg already installed, skipped" >&2
fi

# p10k
if ! [ -d "$HOME/.zsh" ]; then
  brew tap homebrew/cask-fonts
  git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
  brew install font-meslo-lg-nerd-font
  echo 'source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh' >> ~/.zshrc
  echo 'HISTFILE=~/.zsh/.zsh_history' >> ~/.zshrc
  echo 'HISTSIZE=10000' >> ~/.zshrc
  echo 'SAVEHIST=10000' >> ~/.zshrc
  echo 'setopt appendhistory' >> ~/.zshrc
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
  echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
  echo "p10k installed successfully" >&2
else
   echo "p10k already installed, skipped" >&2
fi

# nvim config
if ! [ -d "$HOME/.config/nvim" ]; then
  git clone https://github.com/luanbitar/nvim.git ~/.config/nvim
  echo "nvim config theme installed" >&2
else
  echo "nvim config theme already installed, skipped" >&2
fi

# asdf
if ! [ -x "$(command -v asdf)" ]; then
  brew install asdf
  echo ". $(brew --prefix asdf)/libexec/asdf.sh" >> ~/.zshrc
  asdf plugin add nodejs
  asdf install nodejs latest
  asdf global nodejs latest
  echo "asdf installed successfully" >&2
else
  echo "asdf already installed, skipped" >&2
fi
