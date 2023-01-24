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

# common apps
yay -S --noconfirm google-chrome notion-app 1password

# dev apps
yay -S --noconfirm visual-studio-code-bin alacritty

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