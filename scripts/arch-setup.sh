clear
sudo pacman -Syyuu --noconfirm

# variables
HOME="/home/"$(whoami)

# git
if ! [ -x "$(command -v git)" ]; then
  sudo pacman -S --needed --noconfirm git base-devel
  clear
  echo "git installed successfully" >&2
else
  echo "git already installed, skipped" >&2
fi

# yay
if ! [ -x "$(command -v yay)" ]; then
  cd /tmp
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si
  cd ..
  rm -rf yay
  cd

  # common apps
  yay -S --noconfirm google-chrome notion-app 1password whatsapp-nativefier zoom slack-desktop flipclock

  # dev apps
  yay -S --noconfirm visual-studio-code-bin alacritty neovim ripgrep fd
  echo "yay installed successfully" >&2
else
  echo "yay already installed, skipped" >&2
fi

# pw10k
if ! [ -d "$HOME/.zsh" ]; then
  yay -S --noconfirm zsh-theme-powerlevel10k-git ttf-meslo-nerd-font-powerlevel10k powerline-fonts awesome-terminal-fonts
  git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
  echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
  echo 'source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh' >> ~/.zshrc
  echo 'HISTFILE=~/.zsh/.zsh_history' >> ~/.zshrc
  echo 'HISTSIZE=10000' >> ~/.zshrc
  echo 'SAVEHIST=10000' >> ~/.zshrc
  echo 'setopt appendhistory' >> ~/.zshrc
else
  echo "pw10k already installed, skipped" >&2
fi

# asdf
if ! [ -x "$(command -v asdf)" ]; then
  yay -S --noconfirm asdf-vm
  echo 'source /opt/asdf-vm/asdf.sh' >> ~/.zshrc
  asdf plugin add nodejs
  asdf install nodejs latest
  echo "asdf installed successfully" >&2
else
  echo "asdf already installed, skipped" >&2
fi

# snap
if ! [ -x "$(command -v snap)" ]; then
  yay -S --noconfirm snapd
  systemctl enable --now snapd.service

  # installing snap packages
  snap install spotify

  echo "snap installed successfully" >&2
else
  echo "snap already installed, skipped" >&2
fi

# nvim config
if ! [ -d "$HOME/.config/nvim" ]; then
  git clone https://github.com/luanbitar/nvim.git ~/.config/nvim
  echo "nvim config theme installed" >&2
else
  echo "nvim config theme already installed, skipped" >&2
fi
