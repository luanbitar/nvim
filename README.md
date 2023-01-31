## Objective

Pre install packages:

- git
- yay (arch)
- snap (arch)
- homebrew (mac)
- p10k
- alacritty
- iterm2 (mac)
- neovim
- asdf
- vscode
- chrome
- notion
- 1password
- whatsapp
- spotify
- zoom

### For Arch Linux:

Installation with [Anarchy Installer](https://anarchyinstaller.gitlab.io/) using [Ventoy](https://www.ventoy.net/en/download.html)
[Notion fixes notes](https://lbitar.notion.site/Arch-4950578f5e2841d092e7728c7c766823)

Initial setup:

```bash
wget -O - https://raw.githubusercontent.com/luanbitar/nvim/main/scripts/arch-setup.sh | bash
```

Updating packages:

```bash
wget -O - https://raw.githubusercontent.com/luanbitar/nvim/main/scripts/arch-update.sh | bash
```

### For MacOS:

Initial setup:

```bash
curl -o- https://raw.githubusercontent.com/luanbitar/nvim/main/scripts/mac-setup.sh | bash
```

Updating packages:

```bash
curl -o- https://raw.githubusercontent.com/luanbitar/nvim/main/scripts/mac-update.sh | bash
```
