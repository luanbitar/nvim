HOME="/Users/"$(whoami)

# homebrew
if ! [ -x "$(command -v brew)" ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo '# Set PATH, MANPATH, etc., for Homebrew.' >> "$HOME/.zshrc"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "HOME/.zshrc"
    eval "$(/opt/homebrew/bin/brew shellenv)"
    echo "brew installed successfully" >&2
else
    echo "brew already installed, skipped" >&2
fi

brew install --cask visual-studio-code
brew install git gnupg