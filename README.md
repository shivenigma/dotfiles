# Dotfiles

Managed with GNU Stow.

## Prerequisites

- macOS with [Homebrew](https://brew.sh) installed.

## Setup

```bash
git clone https://github.com/shivenigma/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

### 1. Backup existing dotfiles (optional but recommended)

If you already have config files in your home directory, back them up before stowing so you don’t lose anything:

```bash
BACKUP_DIR=~/dotfiles-backup-$(date +%Y%m%d)
mkdir -p "$BACKUP_DIR"

# Backup only the files this repo will manage (adjust if you add more packages)
for f in .zshrc .zprofile .zsh_plugins.txt .vimrc .tmux.conf .gitconfig .aerospace.toml .wezterm.lua; do
  [[ -f ~/$f ]] && cp -p ~/$f "$BACKUP_DIR/$f"
done
[[ -d ~/.config/nvim ]] && cp -Rp ~/.config/nvim "$BACKUP_DIR/nvim"
```

### 2. Install Stow and apply configs

Install Stow (via Homebrew) and symlink configs into your home directory:

```bash
brew install stow
stow -t ~ shell vim tmux nvim git mac aerospace wezterm
```

Or install everything from the Brewfile first (includes `stow`), then stow:

```bash
brew bundle --file=mac/Brewfile
stow -t ~ shell vim tmux nvim git mac aerospace wezterm
```

### 3. Brewfile (Mac apps and CLI tools)

From the repo root:

- **Install all Brewfile contents:**  
  `brew bundle --file=mac/Brewfile`

- **Update the Brewfile from your current system:**  
  `brew bundle dump --file=mac/Brewfile --force`

## Using Stow

- **Stow one package:**  
  `stow -t ~ shell`

- **Remove one package (unlink):**  
  `stow -t ~ -D shell`

- **Re-stow after editing files in the repo:**  
  `stow -t ~ --restow shell`

- **Stow/restow all packages:**  
  `stow -t ~ --restow shell vim tmux nvim git mac aerospace wezterm`

Always run `stow` from the dotfiles repo root (`~/dotfiles`). `-t ~` makes your home directory the target.

## Structure

| Package    | Contents                          |
|-----------|------------------------------------|
| `shell/`  | Zsh (`.zshrc`, `.zprofile`, plugins) |
| `vim/`    | Vim (`.vimrc`)                    |
| `nvim/`   | Neovim (`~/.config/nvim/`)        |
| `tmux/`   | Tmux (`.tmux.conf`)               |
| `git/`    | Git (`.gitconfig`)                |
| `mac/`    | Brewfile (Homebrew/cask/code)     |
| `aerospace/` | Aerospace (`.aerospace.toml`)  |
| `wezterm/`  | Wezterm (`.wezterm.lua`)       |
