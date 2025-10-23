# Dotfiles

Managed with GNU Stow.

## Setup
```bash
git clone https://github.com/shivenigma/dotfiles.git ~/dotfiles
brew install stow
cd ~/dotfiles
stow shell vim tmux nvim git mac
brew bundle --file=mac/Brewfile
```

## Structure

- `shell/` - Zsh configs
- `vim/` - Vim config
- `nvim/` - Neovim config
- `tmux/` - Tmux config
- `git/` - Git config
- `mac/` - Brewfile
